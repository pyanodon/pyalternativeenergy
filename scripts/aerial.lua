-- TODO: fix aerial turbine and aerial base gui

Aerial = {}
Aerial.events = {}

---@diagnostic disable-next-line: unknown-cast-variable
---@cast storage.aerials AerialsGlobalData

---@class AerialsGlobalData Global data for the Aerials system
---@field poles AerialPolesTable
---@field poles_by_network AerialsPolesByNetworkArray
---@field accumulators AerialsAccumulatorsByNetworkTable
---@field aerial_data AerialsTurbineDataTable
---@field aerial_counts AerialsTurbineCountsByNetworkTable
---@field base_data AerialsBaseDataTable
---@field refresh_networks boolean Triggers a network refresh on the next event tick
---@field electric_network_id_override integer Overrides the electric network ID of the next aerial turbine to be created

---@alias AerialsTurbineDataTable table<integer, AerialsTurbineDataTableEntry>
---@class AerialsTurbineDataTableEntry Entry with the properties for a given aerial turbine
---@field entity LuaEntity the turbine entity
---@field target LuaEntity the flight target entity
---@field starting_position MapPosition the position where the turbine originally launched
---@field previous_position MapPosition the starting position of the current flight
---@field network_id integer the electric network ID the turbine is associated with
---@field last_20 integer[] an array of the efficiency bonus of the last 20 trips, used to create an average. Has up to but never more than 20 entries.
---@field lifetime_generation number the liftime generation of this turbine, in J

---@alias AerialPolesTable table<integer, AerialPolesTableEntry> Table of AerialPolesTableEntry indexed by the entity unit number
---@class AerialPolesTableEntry Table containing the metadata for a specific electric pole
---@field entity LuaEntity The pole entity
---@field list_index integer Position in the AerialPolesByNetworkArray
---@field network_id integer Electric network ID of the pole entity
---@field unit_number integer Unit number of the pole entity (used when indexing AerialPolesTable)

---@alias AerialsPolesByNetworkArray table<integer, AerialPolesTableEntry[]> Table of AerialsPolesTableEntry[] indexed by electric network ID

---@alias AerialsAccumulatorsByNetworkTable table<integer, AerialsAccumulatorsByNetworkTableEntry> Table of AerialsAccumulatorsByNetworkTableEntry indexed by electric network ID
---@alias AerialsAccumulatorsByNetworkTableEntry table<string, LuaEntity> Table of accumulator entities indexed by the parent turbine's entity name

---@alias AerialsTurbineCountsByNetworkTable table<integer, AerialsTurbineCountsByNetworkTableEntry> Table of AerialsTurbineCountsByNetworkTableEntry indexed by electric network ID
---@alias AerialsTurbineCountsByNetworkTableEntry table<string, integer> Table of aerials counts for this network indexed by the turbine's entity name

---@alias AerialsBaseDataTable table<integer, AerialsBaseDataTableEntry>
---@class AerialsBaseDataTableEntry Entry with the entities forming the Aerial Base compound-entity
---@field animation LuaEntity animation entity portion of the Aerial Base
---@field chest LuaEntity chest entity portion of the Aerial Base
---@field combinator LuaEntity combinator entity of the Aerial Base. This is the place_result of the item.

--[[
    GLOBALS:

    aerials = {
        poles = {
            [pole_unit_number] = {
                entity = pole_entity,
                list_index = position_in_poles_by_network,
                network_id = network_id,
                unit_number = unit_number -- This is used if we index poles_by_network
            }
        },
        poles_by_network = {
            [network_id] = { pole_struct, pole_struct_two, etc }
        },
        accumulators = {
            [network_id] = {
                ['aerial-blimp-mk0' .. tier] = accumulator_entity
            }
        },
        aerial_data = {
            [unit_number] = {
                entity = blimp_entity,
                target = flight_target,
                starting_position = starting_position,
                previous_position = previous_position,
                network_id = electric_network_id
                last_20 = {distancea, distanceb, etc},
                lifetime_generation = lifetime_generation
            }
        },
        aerial_counts = {
            [network_id] = {
                ['aerial-blimp-mk0' .. tier] = aerial_count_on_this_network
            }
        }
        base_data = {
            [unit_number] = {
                animation = animation_entity, -- this is where we get the electric network id
                chest = chest_entity,
                combinator = base_entity -- the actual place result
            }
        },
        refresh_networks = false,
    }

]] --

local pathfind_flags = {
    allow_destroy_friendly_entities = true,
    allow_paths_through_own_entities = true,
    low_priority = true
}

-- Set up a metamethod to guarantee tables have sub-tables when indexed
-- This helps avoid constant validation for indexing nested tables
local dynamic_index = {
    __index = function(self, index)
        local tbl = {}
        rawset(self, index, tbl)
        return tbl
    end
}
script.register_metatable("dynamic_index", dynamic_index)

local energy_per_distance = {
    ["aerial-blimp-mk01"] = 4500000 * 1.2,
    ["aerial-blimp-mk02"] = 9000000 * 1.2,
    ["aerial-blimp-mk03"] = 13500000 * 1.2,
    ["aerial-blimp-mk04"] = 18000000 * 1.2,
}

local travel_speeds = {
    ["aerial-blimp-mk01"] = 1.2,
    ["aerial-blimp-mk02"] = 2.4,
    ["aerial-blimp-mk03"] = 3.6,
    ["aerial-blimp-mk04"] = 4.8,
}

local buffer_capacities = {
    ["aerial-blimp-mk01"] = (200 * 2 ^ 1) * 1000000, -- x * MJ
    ["aerial-blimp-mk02"] = (200 * 2 ^ 2) * 1000000, -- x * MJ
    ["aerial-blimp-mk03"] = (200 * 2 ^ 3) * 1000000, -- x * MJ
    ["aerial-blimp-mk04"] = (200 * 2 ^ 4) * 1000000  -- x * MJ
}

local placement_restriction_text_color = {255, 60, 60}

local turbine_names = {}
for name in pairs(energy_per_distance) do
    turbine_names[name] = true
end

---Calculates the distance between two positions
---@param a MapPosition
---@param b MapPosition
---@return float
local function calc_distance(a, b)
    local ax, ay = a.x or a[1], a.y or a[2]
    local bx, by = b.x or b[1], b.y or b[2]
    return ((ax - bx) ^ 2 + (ay - by) ^ 2) ^ 0.5
end

---Returns if an entity exists and is valid
---@param x LuaEntity?
---@return boolean
local function exists_and_valid(x)
    ---@type boolean
    return x and x.valid
end

---Increments the turbine count in storage.aerials.turbine_count
---@param network_id integer network ID of the turbine
---@param turbine_name string entity name of the turbine
---@param increment integer? amount to increment the count by (can be negative to decrement)
---@param skip_capacity_update boolean? skip updating the accumulator capacity
local function increment_turbine_count(network_id, turbine_name, increment, skip_capacity_update)
    increment = increment or 1
    local network_turbines = storage.aerials.aerial_counts[network_id]
    -- If the increment puts it below 0, put it *at* 0
    local new_count = math.max((network_turbines[turbine_name] or 0) + increment, 0)
    network_turbines[turbine_name] = new_count
    -- Update the accumulator
    if skip_capacity_update then
        return
    end
    local accumulator = storage.aerials.accumulators[network_id][turbine_name]
    if accumulator and accumulator.valid then
        accumulator.electric_buffer_size = buffer_capacities[turbine_name] * new_count
    end
end

---Verify the neighbours of a given electric pole. Sets the network to be refreshed if any fail.
---@param pole_entity LuaEntity electric pole entity
local function verify_neighbours(pole_entity)
    -- TODO: power switches maybe?
    if pole_entity.type == "power-switch" then return end
    local cables = pole_entity.get_wire_connector(defines.wire_connector_id.pole_copper)
    local neighbours = {}
    if cables and cables.valid then
        for _, cable in pairs(cables.connections or {}) do
            if cable.target.valid then
                table.insert(neighbours, cable.target.owner)
            end
        end
    end
    if #neighbours == 0 then return end

    for _, entity in pairs(neighbours) do
        if entity.valid and entity.type == "electric-pole" then
            local pole_data = storage.aerials.poles[entity.unit_number]
            -- No record of this pole
            if not pole_data then
                storage.aerials.refresh_networks = true
                break
            end
            local network_id = entity.electric_network_id
            -- Pole has switched networks
            if network_id then
                if pole_data and pole_data.network_id ~= network_id then
                    storage.aerials.refresh_networks = true
                    break
                end
            end
        end
    end
end

---Adds a pole to the relevant global data tables and updates networks if there's inconsistencies
---@param pole_entity LuaEntity electric pole entity
local function add_pole(pole_entity)
    local network_id = pole_entity.electric_network_id
    if not network_id then
        return
    end
    local unit_number = pole_entity.unit_number
    local pole = {
        entity = pole_entity,
        network_id = network_id,
        list_index = #storage.aerials.poles_by_network[network_id] + 1,
        unit_number = unit_number
    }
    storage.aerials.poles[unit_number] = pole
    storage.aerials.poles_by_network[network_id][pole.list_index] = pole
    verify_neighbours(pole_entity)
end

local get_first_pole -- definition order because we call it below

---Removes a pole from the relevant global data tables and updates networks if there's inconsistencies.
---Removes any orphaned accumulators if the electric network is now empty.
---@param pole_data AerialPolesTableEntry the data structure of the pole to be removed
local function remove_pole(pole_data)
    local network_poles = storage.aerials.poles_by_network[pole_data.network_id]
    local target_index = pole_data.list_index
    local final_index = #network_poles
    -- Remove from the master list
    storage.aerials.poles[pole_data.unit_number] = nil
    -- If it's not the last pole on the network, shift the final index to the now-free index
    -- This maintains a contiguous table
    if target_index ~= final_index then
        network_poles[target_index] = network_poles[final_index]
        network_poles[target_index].list_index = target_index
    end
    network_poles[final_index] = nil
    -- Remove or migrate the accumulators
    local network_id = pole_data.network_id
    local network_accumulators = storage.aerials.accumulators[network_id]
    for name, accumulator in pairs(network_accumulators) do
        if accumulator.valid then
            local new_id = accumulator.electric_network_id
            -- New network to move to
            if new_id then
                if new_id == network_id then
                    goto next_accumulator
                elseif not storage.aerials.accumulators[new_id][name] and #storage.aerials.poles_by_network[new_id] > 0 then
                    storage.aerials.accumulators[new_id][name] = accumulator
                    network_accumulators[name] = nil
                    goto next_accumulator
                end
            else -- see if we can migrate it to our network
                local first_pole = get_first_pole(network_id)
                if first_pole then
                    -- if the pole hasn't changed network id, we might not need to move
                    if new_id == network_id then
                        local new_pos = first_pole.position
                        local old_pos = accumulator.position
                        -- our new position is on our old position
                        if calc_distance(new_pos, old_pos) < 1 then
                            goto next_accumulator
                        end
                    end
                    accumulator.teleport(first_pole.position)
                    new_id = accumulator.electric_network_id
                    if new_id then
                        -- ended up on a different network, somehow
                        if new_id ~= network_id then
                            local old_accumulator = storage.aerials.accumulators[new_id][name]
                            -- if there's no existing accumulator, it just takes that place
                            if not old_accumulator or not old_accumulator.valid then
                                storage.aerials.accumulators[new_id][name] = accumulator
                                network_accumulators[name] = nil
                                goto next_accumulator
                            else -- otherwise we empty our accumulator and yeet it
                                old_accumulator.energy = old_accumulator.energy + accumulator.energy
                            end
                        else -- ended up on our desired network, ez
                            storage.aerials.accumulators[new_id][name] = accumulator
                            goto next_accumulator
                        end
                    end
                end
            end
            network_accumulators[name] = nil
            accumulator.destroy()
        else
            network_accumulators[name] = nil
        end
        ::next_accumulator::
    end
    -- Check the neighbours
    local pole_entity = pole_data.entity
    if pole_entity and pole_entity.valid then
        verify_neighbours(pole_entity)
    end
end

---gets the first valid pole for the given electric network id
---@param network_id integer
---@return LuaEntity?
get_first_pole = function(network_id)
    local first_pole
    repeat
        first_pole = storage.aerials.poles_by_network[network_id][1]
        -- empty table
        if not first_pole then
            break
        end
        -- Invalid entry
        if not first_pole.entity or not first_pole.entity.valid then
            remove_pole(first_pole)
            first_pole = nil
        else
            first_pole = first_pole.entity
        end
    until first_pole
    return first_pole
end

---Gets or creates an accumulator
---@param aerial_entity LuaEntity the aerial looking for a sexy accumulator in their area (network)
---@param network_override integer? the electric network ID to check instead of the one at the aerial's position
---@return LuaEntity? # the accumulator we found or created, if successful
local function get_or_create_accumulator(aerial_entity, network_override)
    local name = aerial_entity.name
    if network_override then
        local accumulator = storage.aerials.accumulators[network_override][name]
        -- There's already an accumulator on this network
        if accumulator and accumulator.valid then
            local network_id = accumulator.electric_network_id
            if network_id ~= network_override then
                -- If it has a network, migrate it if there isn't an accumulator on that network
                if network_id then
                    local old_accumulator = storage.aerials.accumulators[network_id][name]
                    if not old_accumulator or not old_accumulator.valid then
                        storage.aerials.accumulators[network_id][name] = accumulator
                    else
                        -- Transfer the power from the accumulator we're about to destroy
                        old_accumulator.energy = old_accumulator.energy + accumulator.energy
                        -- and finally destroy it
                        accumulator.destroy()
                    end
                else -- If it doesn't have a network, delete it
                    accumulator.destroy()
                end
                -- remove this accumulator from the old network id, it's either changed or invalid
                storage.aerials.accumulators[network_override][name] = nil
                -- retry
                return get_or_create_accumulator(aerial_entity, network_override)
            else
                return accumulator
            end
        end
        -- Is there a pole we can use for placement?
        local first_pole = get_first_pole(network_override)
        -- whew
        if not first_pole then
            return get_or_create_accumulator(aerial_entity)
        end
        -- Yep, we have a pole to base on
        accumulator = aerial_entity.surface.create_entity {
            name = name .. "-accumulator",
            position = first_pole.position,
            force = aerial_entity.force,
            create_build_effect_smoke = false
        }
        ---@cast accumulator LuaEntity shows as LuaEntity? otherwise
        accumulator.destructible = false
        accumulator.operable = false
        accumulator.power_production = 0
        accumulator.power_usage = 0
        local network_id = accumulator.electric_network_id
        if network_id then
            -- If we end up on a different network, destroy if need be
            if network_id ~= network_override then
                -- Allow the user to find the problem network
                local position = first_pole.position
                local unit_id = aerial_entity.unit_number
                log(string.format("Accumulator created for network %d (turbine ID %d) ended up on network %d at [%.2f, %.2f]", network_override, unit_id, network_id, position.x, position.y))
                -- Migrate the aerial to the new network - it's highly likely the old network isn't usable
                storage.aerials.aerial_data[unit_id].network_id = network_id
                increment_turbine_count(network_id, name, -1)
                increment_turbine_count(network_override, name, 1)
                -- Check if the network already has an accumulator that we've now duplicated
                local old_accumulator = storage.aerials.accumulators[network_id][name]
                if old_accumulator and old_accumulator.valid then -- Destroy and return the existing accumulator if so
                    accumulator.destroy()
                    return old_accumulator
                end
            end
            -- otherwise, continue on
            storage.aerials.accumulators[network_id][name] = accumulator
            accumulator.electric_buffer_size = buffer_capacities[name] * (storage.aerials.aerial_counts[network_id][name] or 0)
            return accumulator
        else
            accumulator.destroy()
            return get_or_create_accumulator(aerial_entity)
        end
        -- implied return nil
    else -- Make an accumulator and get its network ID, checking for an accumulator on that network
        local accumulator = aerial_entity.surface.create_entity {
            name = name .. "-accumulator",
            position = aerial_entity.position,
            force = aerial_entity.force,
            create_build_effect_smoke = false
        }
        ---@cast accumulator LuaEntity shows as LuaEntity? otherwise
        accumulator.destructible = false
        accumulator.operable = false
        accumulator.power_production = 0
        accumulator.power_usage = 0
        local network_id = accumulator.electric_network_id
        if network_id then
            local parent = storage.aerials.accumulators[network_id][name]
            if parent and parent.valid and parent ~= accumulator then
                -- We accidentally made an accumulator on a network that already has one!
                accumulator.destroy()
                return parent
            else
                -- Is there a pole we can use for placement?
                local first_pole = get_first_pole(network_id)
                -- Move the accumulator to the first pole's position
                if first_pole then
                    accumulator.teleport(first_pole.position)
                end
                storage.aerials.accumulators[network_id][name] = accumulator
                accumulator.electric_buffer_size = buffer_capacities[name] * (storage.aerials.aerial_counts[network_id][name] or 0)
                return accumulator
            end
        else
            -- Useless accumulator!
            accumulator.destroy()
            -- implied return nil
        end
    end
end

---Returns a table where indexing always succeeds (initializes and returns an empty table if indexing would normally return nil)
---@return table # the table with our special metatable
local function solid_table()
    return setmetatable({}, dynamic_index)
end

---Rebuilds/verifies the the global aerial pole, turbine, and accumulator data
local function refresh_networks()
    storage.aerials.refresh_networks = false
    -- First, clear and rebuild our stored poles
    storage.aerials.poles = {}
    storage.aerials.poles_by_network = solid_table()
    for _, surface in pairs(game.surfaces) do
        for _, pole in pairs(surface.find_entities_filtered {type = "electric-pole"}) do
            local network_id = pole.electric_network_id
            if network_id then
                -- One is an array, one is a list. This allows ease of selecting a random pole.
                local index = #storage.aerials.poles_by_network[network_id] + 1
                local unit_number = pole.unit_number
                local pole_data = {
                    entity = pole,
                    list_index = index,
                    network_id = network_id,
                    unit_number = unit_number
                }
                storage.aerials.poles[unit_number] = pole_data
                storage.aerials.poles_by_network[network_id][index] = pole_data
            end
        end
    end

    -- Second, clear and rebuild the count data for our turbines and rectify their network_id vs their target network_id
    storage.aerials.aerial_counts = solid_table()
    for _, aerial in pairs(storage.aerials.aerial_data) do
        -- Check if the aerial is invalid
        if not aerial.entity or not aerial.entity.valid then
            goto continue
        end
        local network_id = aerial.network_id
        local target = aerial.target
        -- Check if the target has changed networks
        if target and target.valid then
            local target_network_id = target.electric_network_id
            if target_network_id and network_id ~= target_network_id then
                aerial.network_id = target_network_id
                network_id = target_network_id
            end
        end
        local type_name = aerial.entity.name
        get_or_create_accumulator(aerial.entity, network_id)
        increment_turbine_count(network_id, type_name, 1, true)
        ::continue::
    end

    -- Third, remove any orphaned accumulators and update the capacity of the rest
    for network_id, network_accumulators in pairs(storage.aerials.accumulators) do
        local network_pole_count = #storage.aerials.poles_by_network[network_id]
        for accumulator_name, accumulator in pairs(network_accumulators) do
            if not accumulator.valid then
                network_accumulators[accumulator_name] = nil
                goto continue
            end
            -- If the new network has turbines, it will already have an accumulator. Thus, we destroy this one.
            local new_id = accumulator.electric_network_id
            if new_id ~= network_id then
                if new_id then -- migrate any remaining charge
                    local new_accumulator = storage.aerials.accumulators[new_id][accumulator_name]
                    if new_accumulator and new_accumulator.valid then
                        new_accumulator.energy = new_accumulator.energy + accumulator.energy
                    end
                end
                accumulator.destroy()
                network_accumulators[accumulator_name] = nil
                goto continue
            end
            -- Otherwise, if this network now has 0 poles, we destroy the turbine
            if network_pole_count == 0 then
                accumulator.destroy()
                network_accumulators[accumulator_name] = nil
                goto continue
            end
            local turbine_count = storage.aerials.aerial_counts[network_id][accumulator_name] or 0
            if turbine_count == 0 then
                accumulator.destroy()
                network_accumulators[accumulator_name] = nil
                goto continue
            end
            local old_size = accumulator.electric_buffer_size
            local new_size = turbine_count * buffer_capacities[accumulator_name]
            if old_size ~= new_size then
                local new_energy = math.min(accumulator.energy, new_size)
                accumulator.electric_buffer_size = new_size
                accumulator.energy = new_energy
            end
            ::continue::
        end
    end
end

Aerial.on_init = function()
    -- Create or import our global structure. Newline below because otherwise luals thinks this is a description for the global var :/

    if storage.aerials and not storage.aerials.aerial_counts then
        storage.aerials = nil
    end

    ---@type AerialsGlobalData Global data structure for Aerials
    storage.aerials = storage.aerials or {
        poles = {},
        poles_by_network = solid_table(),
        accumulators = solid_table(),
        aerial_data = {},
        aerial_counts = solid_table(),
        base_data = {},
    }

    refresh_networks()

    -- Yeet any remaining accumulators
    local accumulator_array = {}
    for name in pairs(turbine_names) do
        accumulator_array[#accumulator_array + 1] = name .. "-accumulator"
    end
    -- build a list of our entities to keep
    local entities_to_keep = {}
    for _, network_contents in pairs(storage.aerials.accumulators) do
        for _, accumulator_entity in pairs(network_contents) do
            if accumulator_entity.valid then
                entities_to_keep[accumulator_entity.unit_number] = true
            end
        end
    end
    local yeeted_count = 0
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered {
            name = accumulator_array
        }) do
            -- Check every accumulator to see if it's in our global table
            if entity.valid then
                if not entities_to_keep[entity.unit_number] then
                    entity.destroy()
                    yeeted_count = yeeted_count + 1
                end
            end
        end
    end
    if yeeted_count > 0 then
        log(string.format("deleted %i unnecessary accumulators", yeeted_count))
    end
end

---Just initializes the global data and rebuilds the network. There's additional checks for existing turbines in the migrations/aerial-1.2.29.lua
---@source ../migrations/aerial-1.2.29.lua
py.on_event(py.events.on_init(), Aerial.on_init)

---Counts the turbines of all types for a given electric network
---@param electric_network_id integer electric network ID to count for
---@return integer # total turbine count
local function count_turbines_for_network(electric_network_id)
    local per_network = storage.aerials.aerial_counts[electric_network_id]
    local sum = 0
    for _, count in pairs(per_network) do
        sum = sum + count
    end
    return sum
end

---Sums the distance a turbine has travelled and returns the energy it would generate if stopping at its current position
---@param aerial AerialsTurbineDataTableEntry
---@return number energy amount of energy generated in J
---@return number distance_bonus generation multiplier based on distance travelled
local function calc_stored_energy(aerial)
    local entity = aerial.entity
    local previous_position = aerial.previous_position
    local starting_position = aerial.starting_position
    local distance_bonus = 1
    if starting_position then
        local distance = calc_distance(starting_position, entity.position)
        distance_bonus = 2 - (1 / (distance ^ 0.5 / 30 + 1))
    end
    if previous_position then
        local distance = calc_distance(previous_position, entity.position)
        return distance * energy_per_distance[entity.name] * distance_bonus, distance_bonus
    end
    return 0, distance_bonus
end

---Calculates and stores the energy generated by the current trip of the given turbine
---@param aerial AerialsTurbineDataTableEntry
---@return number #
local function accumulate(aerial)
    local energy, distance_bonus = calc_stored_energy(aerial)
    local accumulator = get_or_create_accumulator(aerial.entity, aerial.network_id)
    if accumulator and accumulator.valid then
        accumulator.energy = accumulator.energy + energy
        aerial.previous_position = aerial.entity.position
        aerial.lifetime_generation = aerial.lifetime_generation + energy
    end
    return distance_bonus
end

---Filters the given inventory evenly with the same amount of filters for each turbine tier
---@param inventory LuaInventory
local function set_aerial_base_inventory_filters(inventory)
    local split = math.floor(#inventory / table_size(turbine_names))
    local split_pos = 0
    for turbine, _ in pairs(turbine_names) do
        for _ = 1, split do
            split_pos = split_pos + 1
            inventory.set_filter(split_pos, turbine)
        end
    end
end

local function validate_base(base, unit_number)
    local invalid = false

    local combinator = base.combinator
    if not combinator.valid then
        combinator.destroy()
        invalid = true
    end

    local animation = base.animation
    if invalid or not animation.valid then
        animation.destroy()
        invalid = true
    end

    local chest = base.chest
    if invalid then
        if chest.valid then
            local inventory = chest.get_inventory(defines.inventory.chest)
            local position = chest.position
            local force = chest.force
            -- Spill the inventory and mark the items on the ground for deconstruction
            for i = 1, #inventory do
                local stack = inventory[i]
                if stack.valid_for_read then
                    local spilled_results = chest.surface.spill_item_stack {position = position, stack = stack, enable_looted = true, force = force, allow_belts = false}
                    for ii = 1, #spilled_results do
                        spilled_results[ii].order_deconstruction(force)
                    end
                end
            end
            chest.destroy()
        end
        storage.aerials.base_data[unit_number] = nil
    end

    return not invalid
end

local function store_turbine(electric_network_id, name, inventory)
    -- If we have none in the network, return early
    if (storage.aerials.aerial_counts[electric_network_id][name] or 0) < 1 then
        return false
    end
    -- If our inventory is full, return early
    local stack = inventory.find_empty_stack(name)
    if not stack then
        return false
    end
    -- Walk our table until we find our target turbine
    for key, aerial in pairs(storage.aerials.aerial_data) do
        local entity = aerial.entity
        if entity.valid
            and entity.name == name
            and aerial.network_id == electric_network_id
        then
            accumulate(aerial)
            stack.set_stack {
                name = name,
                count = 1
            }
            stack.tags = {lifetime_generation = aerial.lifetime_generation}
            stack.custom_description = {"", aerial.entity.prototype.localised_description, "\n", {"aerial-gui.lifetime-generation", py.format_energy(aerial.lifetime_generation, "J")}}
            storage.aerials.aerial_data[key] = nil
            entity.destroy()
            increment_turbine_count(electric_network_id, name, -1)
            return true
        end
    end
    return false
end

local function release_turbine(aerial_base_data, name, stack)
    local combinator = aerial_base_data.combinator
    local position = combinator.position

    local surface = combinator.surface
    local electric_network_id = aerial_base_data.animation.electric_network_id
    local aerial_turbines = count_turbines_for_network(electric_network_id)
    local electric_poles = #storage.aerials.poles_by_network[electric_network_id]
    -- Return if we don't mee the minimum 3 poles per turbine
    if 3 * (aerial_turbines + 1) > electric_poles then
        for _, player in pairs(game.connected_players) do
            player.create_local_flying_text {
                position = position,
                create_at_cursor = false,
                text = {"aerial-gui.airspace-too-crowded"},
                color = {255, 60, 60}
            }
        end
        return false
    end

    storage.aerials.electric_network_id_override = electric_network_id
    surface.create_entity {
        name = name,
        position = position,
        force = combinator.force_index,
        create_build_effect_smoke = false,
        item = stack,
        raise_built = true
    }
    storage.aerials.electric_network_id_override = nil
    stack.clear()
    return true
end


--Update the electric or aerial networks on demand
Aerial.events[301] = function()
    if storage.aerials.refresh_networks then
        refresh_networks()
        storage.aerials.refresh_networks = false
    end
end
--Update the electric networks every 1h+1tick
Aerial.events[60 * 60 * 60 + 1] = function()
    -- Refresh if pending, since we want an accurate pole/network count
    storage.aerials.refresh_networks = true
end

local letters = {"A", "B", "C", "D"}
---Update the bases every ~2 seconds
Aerial.events[117] = function()
    local stored_energy_per_network = {}
    local max_energy_per_network = {}

    for unit_number, aerial_base in pairs(storage.aerials.base_data) do
        -- If the base components aren't valid, remove it and try again in the next event
        local invalid = false

        local combinator = aerial_base.combinator
        if not combinator.valid then
            combinator.destroy()
            invalid = true
        end

        local animation = aerial_base.animation
        if invalid or not animation.valid then
            animation.destroy()
            invalid = true
        end

        local chest = aerial_base.chest
        if invalid then
            if chest.valid then
                local inventory = chest.get_inventory(defines.inventory.chest)
                local position = chest.position
                local force = chest.force
                -- Spill the inventory and mark the items on the ground for deconstruction
                for i = 1, #inventory do
                    local stack = inventory[i]
                    if stack.valid_for_read then
                        local spilled_results = chest.surface.spill_item_stack {position = position, stack = stack, enable_looted = true, force = force, allow_belts = false}
                        for ii = 1, #spilled_results do
                            spilled_results[ii].order_deconstruction(force)
                        end
                    end
                end
                chest.destroy()
            end
            storage.aerials.base_data[unit_number] = nil
            break
        end


        local control = combinator.get_or_create_control_behavior().sections[1]

        -- I guess we do this to make the combinator not use power and thus not flicker at low power? Seems weird...
        if animation.energy == 0 then
            control.active = false
            goto continue
        end

        -- No power network
        local electric_network_id = animation.electric_network_id
        if not electric_network_id then
            control.active = false
            goto continue
        end

        -- No poles on this network
        local all_poles = storage.aerials.poles_by_network[electric_network_id]
        if #all_poles == 0 then
            control.active = false
            goto continue
        end

        local existing_turbines = storage.aerials.aerial_counts[electric_network_id]

        -- Parse our input signals for blimp signals indicating the target count in the current network
        local desired_turbines = {}
        for _, signal in pairs(combinator.get_signals(defines.wire_connector_id.combinator_input_red, defines.wire_connector_id.combinator_input_green) or {}) do
            local name = signal.signal.name
            if turbine_names[name] then
                desired_turbines[name] = signal.count
            end
        end

        -- Set up if we need to update our accumulator values
        local update_accumulators = not stored_energy_per_network[electric_network_id]
        local stored_energy = 0
        local max_energy = 0

        -- Doing empty/full out here does mean we can't both release and return in the same update
        -- (if we start empty or full) but muh performance
        local inventory = chest.get_inventory(defines.inventory.chest)
        local is_empty = inventory.is_empty()
        local is_full = (not is_empty) and inventory.is_full()

        for name in pairs(turbine_names) do
            -- Diff the signals from our active turbine counts and rectify any differences
            local delta = (desired_turbines[name] or 0) - (existing_turbines[name] or 0)
            if not is_empty and delta > 0 then    -- Release blimps
                for _ = 1, math.min(delta, 10) do -- ~5/s release rate
                    local stack = inventory.find_item_stack(name)
                    if stack then
                        -- Break out if the network is full
                        if not release_turbine(aerial_base, name, stack) then
                            break
                        end
                    else
                        break
                    end
                end
            elseif not is_full and delta < 0 then -- Return blimps
                for _ = 1, math.min(delta * -1, 10) do
                    if inventory.can_insert(name) then
                        if not store_turbine(electric_network_id, name, inventory) then
                            break
                        end
                    else
                        break
                    end
                end
            end
            -- sum stored energy of all turbine accumulators
            if update_accumulators then
                local accumulator = storage.aerials.accumulators[electric_network_id][name]
                if exists_and_valid(accumulator) then
                    stored_energy = stored_energy + accumulator.energy
                    max_energy = max_energy + accumulator.electric_buffer_size
                end
            end
        end

        -- Update the energy signals
        if update_accumulators then
            max_energy = math.floor(max_energy / 1000000)
            stored_energy = math.min(max_energy, math.floor(stored_energy / 1000000 * 1.01))
            stored_energy_per_network[electric_network_id] = stored_energy
            max_energy_per_network[electric_network_id] = max_energy
        else
            stored_energy = stored_energy_per_network[electric_network_id]
            max_energy = max_energy_per_network[electric_network_id]
        end

        control.active = true
        -- The first arg here is just what order it shows in the output, 1-8 are reserved for the item counts
        control.set_slot(9, {
            value = "signal-yellow",
            min = stored_energy,
        })
        control.set_slot(10, {
            value = "signal-green",
            min = max_energy
        })

        -- Update the blimp count signals
        for i, letter in pairs(letters) do
            local name = "aerial-blimp-mk0" .. i
            control.set_slot(i, {
                value = "signal-" .. i,
                min = existing_turbines[name] or 0
            })
            control.set_slot(i + 4, {
                value = "signal-" .. letter,
                min = inventory.get_item_count(name)
            })
        end

        ::continue::
    end
end

---Parks the given turbine, prints an error in chat, and removes it from the global data tables
---@param entity LuaEntity the turbine to park
local function park_and_error(entity)
    rendering.draw_sprite {
        sprite = "utility.electricity_icon",
        target = entity,
        surface = entity.surface,
        render_layer = "air-entity-info-icon"
    }
    game.print {"aerial-gui.stranded", entity.name, entity.position.x, entity.position.y}
    Aerial.events.on_destroyed {entity = entity}
end

---Finds a target electric pole for the given turbine and issues the AI command to travel to it, if found
---@param aerial AerialsTurbineDataTableEntry the data table of the turbine to command
local function find_target(aerial)
    local entity = aerial.entity
    local name = entity.name

    -- Store the previous target
    local previous_target = aerial.target
    if not exists_and_valid(previous_target) then
        previous_target = nil
    end

    -- Apply the energy gain from the distance travelled and calculate the bonus, creating a table for a rolling average
    local distance_bonus = accumulate(aerial)
    local last_20 = aerial.last_20
    if last_20 then
        table.insert(last_20, 1, distance_bonus)
        last_20[21] = nil
    else
        aerial.last_20 = {distance_bonus}
    end

    -- Our ID is overridden here in case we create an entity and want it on a new network
    local network_id = storage.aerials.electric_network_id_override
        or (previous_target and previous_target.electric_network_id)
        or aerial.network_id

    if not network_id then
        park_and_error(entity)
        return
    end

    -- If we switch networks, immediately rebuild the pole and aerial network data
    if network_id ~= aerial.network_id then
        log(string.format("%s [%d] swapping from network %d to %d", name, entity.unit_number, aerial.network_id, network_id))
        refresh_networks()
        -- Make sure there's an accumulator on the network
        local accumulator = get_or_create_accumulator(entity, network_id)
        -- and adjust it to the new entity count
        if accumulator and accumulator.valid then
            -- Update the entry
            network_id = accumulator.electric_network_id
            -- Decrement the old network and increment the new
            increment_turbine_count(aerial.network_id, name, -1)
            increment_turbine_count(network_id, name, 1)
            accumulator.electric_buffer_size = storage.aerials.aerial_counts[network_id][name] * buffer_capacities[name]
            aerial.network_id = network_id
        else -- how did you fail to make an accumulator?
            log("aerial stuck: couldn't find or create an accumulator")
            park_and_error(entity)
            return
        end
    end

    local all_poles = storage.aerials.poles_by_network[network_id]
    local pole_count = #all_poles

    if pole_count < 2 then
        log(string.format("%s [%d] seems to be on an empty network [%d], refreshing data...", name, entity.unit_number, network_id))
        refresh_networks()
        pole_count = #all_poles
    end

    if pole_count < 2 then
        log(string.format("%s [%d] is in fact stuck in an empty network [%d]", name, entity.unit_number, network_id))
        park_and_error(entity)
        return
    end

    -- Pick a random pole that's different from our current pole
    local target
    repeat
        local index = math.random(pole_count)
        target = all_poles[index].entity
        -- ruh roh
        if not target or not target.valid then
            target = nil
            remove_pole(all_poles[index])
            -- re-count for our random indexing
            pole_count = #all_poles
            -- We removed the only valid target!
            if pole_count < 2 then
                park_and_error(entity)
                return
            end
        end
    until target and target ~= previous_target

    -- now send our pathfinding command
    aerial.target = target
    aerial.starting_position = entity.position
    local target_position = target.position
    entity.commandable.set_command {
        type = defines.command.go_to_location,
        destination = {target_position.x, target_position.y - 5},
        distraction = defines.distraction.none,
        radius = 7, -- Length of the blimp
        pathfind_flags = pathfind_flags
    }
end

Aerial.events.on_built = function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then
        return
    end
    local entity_type = entity.type
    local entity_name = entity.name
    -- Turbine?
    if turbine_names[entity_name] then
        -- Build or find the relevant accumulator
        local accumulator = get_or_create_accumulator(entity, storage.aerials.electric_network_id_override)

        if not accumulator or not accumulator.valid then
            py.cancel_creation(entity, event.player_index, {"aerial-gui.must-be-placed-in-electric-network"}, placement_restriction_text_color)
            return
        end

        -- Apply item tags
        local tags = event.tags
        if not tags then
            local stack = event.stack
            tags = stack and stack.valid_for_read and stack.tags or {}
        end

        local electric_network_id = accumulator.electric_network_id
        if not electric_network_id then
            py.cancel_creation(entity, event.player_index, {"aerial-gui.must-be-placed-in-electric-network"}, placement_restriction_text_color)
            return
        end

        local turbine_count = count_turbines_for_network(electric_network_id)
        local electric_poles = #storage.aerials.poles_by_network[electric_network_id]
        if (turbine_count + 1) * 3 > electric_poles then
            py.cancel_creation(entity, event.player_index, {"aerial-gui.airspace-too-crowded"}, placement_restriction_text_color)
            return
        end

        local aerial = {
            entity = entity,
            network_id = electric_network_id,
            lifetime_generation = tags.lifetime_generation or 0
        }

        storage.aerials.aerial_data[entity.unit_number] = aerial

        entity.destructible = false

        -- Increment turbine counts for this model
        local network_counts = storage.aerials.aerial_counts[electric_network_id]
        local new_count = (network_counts[entity_name] or 0) + 1
        network_counts[entity_name] = new_count
        accumulator.electric_buffer_size = buffer_capacities[entity_name] * new_count

        -- Pick our target
        find_target(aerial)
        return
    end
    -- Pole?
    if entity_type == "electric-pole" or entity_type == "power-switch" then
        add_pole(entity)
        return
    end
    -- Switches also invalidate the network cache
    if entity_type == "power-switch" then
        storage.aerials.refresh_networks = true
        return
    end
    -- Base compound entity
    if entity_name == "aerial-base-combinator" then
        entity.operable = false
        local animation = entity.surface.create_entity {
            name = "aerial-base-animation",
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false
        }
        animation.destructible = false
        animation.operable = false
        local chest = entity.surface.create_entity {
            name = "aerial-base-chest",
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false
        }
        chest.destructible = false
        local aerial_base_data = {
            combinator = entity,
            animation = animation,
            chest = chest
        }
        storage.aerials.base_data[entity.unit_number] = aerial_base_data
        local inventory = aerial_base_data.chest.get_inventory(defines.inventory.chest)
        set_aerial_base_inventory_filters(inventory)
    end
end

Aerial.events.on_destroyed = function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then
        return
    end

    local aerial = storage.aerials.aerial_data[entity.unit_number]

    -- Turbine?
    if aerial then
        if event.player_index then
            local player = game.get_player(event.player_index)
            local main_frame = player.gui.screen.aerial_gui
            if main_frame and main_frame.tags.unit_number == entity.unit_number then
                main_frame.destroy()
            end
        end

        -- Update the counts and accumulator
        increment_turbine_count(aerial.network_id, entity.name, -1)

        -- on_mined events provide the temporary buffer that holds the item
        -- we add the tags here
        local buffer = event.buffer
        if buffer then
            local stack = buffer[1]
            stack.tags = {lifetime_generation = aerial.lifetime_generation}
            stack.custom_description = {"", entity.prototype.localised_description, "\n", {"aerial-gui.lifetime-generation", py.format_energy(aerial.lifetime_generation, "J")}}
        end

        -- drop from the global table and done
        storage.aerials.aerial_data[entity.unit_number] = nil
        return
    end

    -- Poles
    if entity.type == "electric-pole" then
        local pole_data = storage.aerials.poles[entity.unit_number]
        if pole_data then
            remove_pole(pole_data)
        end
        return
    end

    -- Base compound entity
    if entity.name == "aerial-base-combinator" then
        local unit_number = entity.unit_number
        local base = storage.aerials.base_data[unit_number]
        if not base then
            return
        end
        -- Dump the chest into the player inventory and spill any excess
        local chest = base.chest
        if exists_and_valid(chest) then
            local inventory = chest.get_inventory(defines.inventory.chest)
            local player = event.player_index and game.get_player(event.player_index)
            for i = 1, #inventory do
                local stack = inventory[i]
                if stack.valid_for_read then
                    if player then
                        local inserted = player.insert(stack)
                        if inserted == stack.count then
                            stack.clear()
                        else
                            stack.count = stack.count - inserted
                        end
                    end
                    if stack.valid_for_read then
                        chest.surface.spill_item_stack {position = chest.position, stack = stack, enable_looted = true, force = chest.force_index, allow_belts = false}
                    end
                end
            end
            chest.destroy()
        end
        -- Remove the other two parts
        if exists_and_valid(base.combinator) then
            base.combinator.destroy()
        end
        if exists_and_valid(base.animation) then
            base.animation.destroy()
        end
        storage.aerials.base_data[unit_number] = nil
    end
end

Aerial.events.on_ai_command_completed = function(event)
    local aerial = storage.aerials.aerial_data[event.unit_number]
    if not aerial then
        return
    end
    find_target(aerial)
end

local function build_aerial_gui(player, aerial)
    -- If it's already open, yeet
    if player.gui.screen.aerial_gui then
        player.gui.screen.aerial_gui.destroy()
    end

    local entity = aerial.entity

    player.opened = nil
    local main_frame = player.gui.screen.add {
        type = "frame",
        name = "aerial_gui",
        caption = entity.prototype.localised_name,
        direction = "vertical"
    }
    main_frame.style.width = 336
    main_frame.tags = {unit_number = entity.unit_number}
    main_frame.auto_center = true
    -- "I think that was needed to fix some weird error" --notnotmelon
    player.opened = main_frame

    local content_frame = main_frame.add {type = "frame", name = "content_frame", direction = "vertical", style = "inside_shallow_frame_with_padding"}
    content_frame.style.vertically_stretchable = true
    local content_flow = content_frame.add {type = "flow", name = "content_flow", direction = "vertical"}
    content_flow.style.vertical_spacing = 8
    content_flow.style.margin = {-4, 0, -4, 0}
    content_flow.style.vertical_align = "center"

    local status_flow = content_flow.add {type = "flow", name = "status_flow", direction = "horizontal"}
    status_flow.style.vertical_align = "center"
    local status_sprite = status_flow.add {type = "sprite", name = "status_sprite"}
    status_sprite.resize_to_sprite = false
    status_sprite.style.size = {16, 16}
    status_sprite.sprite = "utility/status_working"
    status_flow.add {type = "label", name = "status_text"}.caption = {"entity-status.working"}

    content_flow.add {type = "progressbar", name = "progressbar", style = "electric_satisfaction_statistics_progressbar"}.style.horizontally_stretchable = true

    local camera_frame = content_flow.add {type = "frame", name = "camera_frame", style = "py_nice_frame"}
    local camera = camera_frame.add {type = "camera", name = "camera", style = "py_caravan_camera", position = entity.position, surface_index = entity.surface_index}
    camera.visible = true
    camera.entity = entity
    camera.style.height = 180
    camera.zoom = 0.7

    local camera_frame_2 = content_flow.add {type = "frame", name = "camera_frame_2", style = "py_nice_frame"}
    camera = camera_frame_2.add {type = "camera", name = "camera", style = "py_caravan_camera", position = entity.position, surface_index = entity.surface_index}
    camera.visible = true
    camera.entity = entity
    camera.style.height = 180
    camera.zoom = 0.7

    content_flow.add {type = "label", name = "distance_bonus"}
    content_flow.add {type = "label", name = "lifetime_generation"}
    content_flow.add {type = "label", name = "airspace_traffic_flow"}
    content_flow.add {type = "label", name = "arrival"}

    Aerial.update_gui(player)
end

local function build_aerial_base_gui(player, base)
    local chest = base.chest
    player.opened = chest
    local inventory = chest.get_inventory(defines.inventory.chest)
    set_aerial_base_inventory_filters(inventory)
end

Aerial.events.on_open_gui = function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    if not exists_and_valid(entity) or not entity.unit_number then
        return
    end
    -- If we passed exists_and_valid, we don't need the IDE whining that entity might be nil
    ---@cast entity LuaEntity

    -- If a player clicks for power stats, we verify the network
    if entity.type == "electric-pole" then
        verify_neighbours(entity)
        return
    end

    local unit_number = entity.unit_number
    -- Otherwise, open the GUI if it's an aerial or aerial base
    local aerial = storage.aerials.aerial_data[unit_number]
    if aerial then
        build_aerial_gui(player, aerial)
        return
    end
    local aerial_base_data = storage.aerials.base_data[unit_number]
    if aerial_base_data and validate_base(aerial_base_data, unit_number) then
        build_aerial_base_gui(player, aerial_base_data)
        return
    end
end

Aerial.events.on_gui_closed = function(event)
    local player = game.get_player(event.player_index)
    local gui_type = event.gui_type or player.opened_gui_type
    if gui_type == defines.gui_type.custom then
        local gui = player.gui.screen.aerial_gui
        if gui then
            gui.destroy()
        end
    elseif gui_type == defines.gui_type.entity then
        local entity = event.entity
        if entity and entity.name == "aerial-base-chest" then
            local inventory = entity.get_inventory(defines.inventory.chest)
            set_aerial_base_inventory_filters(inventory)
        end
    end
end

function Aerial.update_gui(player)
    local main_frame = player.gui.screen.aerial_gui
    local content_flow = main_frame.content_frame.content_flow

    local unit_number = main_frame.tags.unit_number
    local aerial = storage.aerials.aerial_data[unit_number]

    -- Return early if the aerial doesn't exist anymore
    if not aerial then
        main_frame.destroy()
        return
    end

    local entity = aerial.entity
    if not entity or not entity.valid then
        main_frame.destroy()
        storage.aerials.aerial_data[unit_number] = nil
        return
    end

    local accumulator = get_or_create_accumulator(entity, aerial.network_id)
    if not accumulator or not accumulator.valid then
        main_frame.destroy()
        return
    end

    -- We add the energy that the blimp holds but hasn't yet added to the accumulator to the total
    local fake_energy, distance_bonus = calc_stored_energy(aerial)
    local stored_energy = accumulator.energy + fake_energy
    local max_energy = accumulator.electric_buffer_size
    stored_energy = math.min(stored_energy, max_energy)
    local progress = stored_energy / max_energy
    -- NaN?
    if progress ~= progress then
        progress = 0
    end
    content_flow.progressbar.value = progress > 0.99 and 1 or progress
    content_flow.progressbar.caption = {"sut-gui.energy", py.format_energy(stored_energy, "J"), py.format_energy(max_energy, "J")}

    -- Get the average of the last 20 trips and add it to the GUI
    local last_20 = aerial.last_20
    distance_bonus = math.ceil(distance_bonus * 1000) / 10
    if last_20 then
        distance_bonus = tostring(distance_bonus)
        -- Add the trailing .0 if there's no decimal value
        if not distance_bonus:find("%.") then
            distance_bonus = distance_bonus .. ".0"
        end
        local count = #last_20
        local sum = 0
        for I = 1, count do
            sum = sum + last_20[I]
        end
        local average = math.ceil(sum / count * 1000) / 10
        content_flow.distance_bonus.caption = {"aerial-gui.rpm-bonus-avg", distance_bonus, count, average}
    else
        content_flow.distance_bonus.caption = {"aerial-gui.rpm-bonus", distance_bonus}
    end

    content_flow.lifetime_generation.caption = {"aerial-gui.lifetime-generation", py.format_energy(aerial.lifetime_generation + fake_energy, "J")}

    -- Update the target camera and ETA
    local target = aerial.target
    if target and target.valid then
        local camera = content_flow.camera_frame_2.camera
        camera.position = target.position
        camera.entity = target

        local distance = math.max(0, calc_distance(target.position, entity.position) - 5)
        local seconds = distance / travel_speeds[entity.name]
        local minutes = math.floor(seconds / 60)
        seconds = tostring(math.floor(seconds % 60))
        -- zero-pad the seconds to a length of two digits
        if #seconds == 1 then
            seconds = "0" .. seconds
        end
        content_flow.arrival.caption = {"aerial-gui.eta", minutes, seconds}
    end

    local electric_network_id = aerial.network_id
    if electric_network_id then
        local aerial_turbines = count_turbines_for_network(electric_network_id)
        local electric_poles = #storage.aerials.poles_by_network[electric_network_id]
        local traffic = math.min(1, aerial_turbines / math.floor(electric_poles / 3))
        -- Convert to percentage, rounded to one decimal place
        traffic = math.ceil(traffic * 1000) / 10
        content_flow.airspace_traffic_flow.caption = {"aerial-gui.airspace-traffic-flow", traffic}
    end
end
