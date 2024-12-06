Turbines = {}
Turbines.events = {}
Turbines.lookup = {} -- Defined elsewhere

---@diagnostic disable-next-line: unknown-cast-variable
---@cast Turbines.lookup TurbineLookup
---@alias TurbineLookup table<string, TurbineFunctions>
---@class TurbineFunctions Functions used to lookup turbine data
---@field power function? Get the power usage given count, won't change if undefined
---@field buffer function? Get the buffer size given count, will use power if undefined
---@field interface_name string Interface name

---@diagnostic disable-next-line: unknown-cast-variable
---@cast storage.turbines TurbineGlobalData

---@class TurbineGlobalData Global data for the Aerials system
---@field poles TurbinePolesTable
---@field poles_by_network TurbinePolesByNetworkArray
---@field interfaces TurbineInterfaceByNetworkTable
---@field turbine_data TurbineDataTable
---@field turbine_counts TurbineCountsByNetworkTable
---@field refresh_networks boolean Triggers a network refresh on the next event tick
---@field electric_network_id_override integer Overrides the electric network ID of the next aerial turbine to be created

---@alias TurbineDataTable table<integer, TurbineDataTableEntry>
---@class TurbineDataTableEntry Entry with the properties for a given turbine
---@field turbine_entity LuaEntity whatever entity is the turbine
---@field network_entity LuaEntity whatever entity determines network for this turbine
---@field network_id integer the electric network ID the turbine is associated with

---@alias TurbinePolesTable table<integer, TurbinePolesTableEntry> Table of TurbinePolesTableEntry indexed by the entity unit number
---@class TurbinePolesTableEntry Table containing the metadata for a specific electric pole
---@field entity LuaEntity The pole entity
---@field list_index integer Position in the AerialPolesByNetworkArray
---@field network_id integer Electric network ID of the pole entity
---@field unit_number integer Unit number of the pole entity (used when indexing AerialPolesTable)

---@alias TurbinePolesByNetworkArray table<integer, TurbinePolesTableEntry[]> Table of TurbinePolesTableEntry[] indexed by electric network ID

---@alias TurbineInterfaceByNetworkTable table<integer, TurbineInterfaceByNetworkTableEntry> Table of TurbineInterfaceByNetworkTableEntry indexed by electric network ID
---@alias TurbineInterfaceByNetworkTableEntry table<string, LuaEntity> Table of interface entities indexed by the parent turbine's entity name

---@alias TurbineCountsByNetworkTable table<integer, TurbineCountsByNetworkTableEntry> Table of TurbineCountsByNetworkTableEntry indexed by electric network ID
---@alias TurbineCountsByNetworkTableEntry table<string, integer> Table of turbine counts for this network indexed by the turbine's entity name

--[[
    GLOBALS:

    turbines = {
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
        interfaces = {
            [network_id] = {
                [turbine_name] = interface_entity
            }
        },
        turbine_data = {
            [unit_number] = {
                turbine_entity = turbine_entity,
                network_entity = turbine_entity or target_entity,
                network_id = electric_network_id
            }
        },
        turbine_counts = {
            [network_id] = {
                [turbine_name] = turbine_count_on_this_network
            }
        },
        refresh_networks = false,
    }

]] --

---Returns a table where indexing always succeeds (initializes and returns an empty table if indexing would normally return nil)
---@type function
---@return table
local solid_table = require "scripts.solid_table"

---Calculates the distance between two positions
---@param a MapPosition
---@param b MapPosition
---@return float
local function calc_distance(a, b)
    local ax, ay = a.x or a[1], a.y or a[2]
    local bx, by = b.x or b[1], b.y or b[2]
    return ((ax - bx) ^ 2 + (ay - by) ^ 2) ^ 0.5
end

---Increments the turbine count in storage.turbines.turbine_count
---@param network_id integer network ID of the turbine
---@param turbine_name string entity name of the turbine
---@param increment integer? amount to increment the count by (can be negative to decrement)
---@param skip_capacity_update boolean? skip updating the accumulator capacity
Turbines.increment_turbine_count = function(network_id, turbine_name, increment, skip_capacity_update)
    increment = increment or 1
    local network_turbines = storage.turbines.turbine_counts[network_id]
    -- If the increment puts it below 0, put it *at* 0
    local new_count = math.max((network_turbines[turbine_name] or 0) + increment, 0)
    network_turbines[turbine_name] = new_count
    -- Update the interface
    if skip_capacity_update then
        return
    end
    local interface = storage.turbines.interfaces[network_id][turbine_name]
    if interface and interface.valid then
        Turbines.update_interface(interface, turbine_name, new_count)
    end
end

---Verify the neighbours of a given electric pole. Sets the network to be refreshed if any fail.
---@param pole_entity LuaEntity electric pole entity
Turbines.verify_neighbours = function(pole_entity)
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
Turbines.add_pole = function(pole_entity)
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
    Turbines.verify_neighbours(pole_entity)
end

---Removes a pole from the relevant global data tables and updates networks if there's inconsistencies.
---Removes any orphaned interfaces if the electric network is now empty.
---@param pole_data AerialPolesTableEntry the data structure of the pole to be removed
Turbines.remove_pole = function(pole_data)
    local network_poles = storage.turbines.poles_by_network[pole_data.network_id]
    local target_index = pole_data.list_index
    local final_index = #network_poles
    -- Remove from the master list
    storage.turbines.poles[pole_data.unit_number] = nil
    -- If it's not the last pole on the network, shift the final index to the now-free index
    -- This maintains a contiguous table
    if target_index ~= final_index then
        network_poles[target_index] = network_poles[final_index]
        network_poles[target_index].list_index = target_index
    end
    network_poles[final_index] = nil
    -- Remove or migrate the interfaces
    local network_id = pole_data.network_id
    local network_interfaces = storage.turbines.interfaces[network_id]
    for name, interface in pairs(network_interfaces) do
        if interface.valid then
            local new_id = interface.electric_network_id
            -- New network to move to
            if new_id then
                if new_id == network_id then
                    goto next_interface
                elseif not storage.turbines.interfaces[new_id][name] and #storage.turbines.poles_by_network[new_id] > 0 then
                    storage.turbines.interfaces[new_id][name] = interface
                    network_interfaces[name] = nil
                    goto next_interface
                end
            else -- see if we can migrate it to our network
                local first_pole = Turbines.get_first_pole(network_id)
                if first_pole then
                    -- if the pole hasn't changed network id, we might not need to move
                    if new_id == network_id then
                        local new_pos = first_pole.position
                        local old_pos = interface.position
                        -- our new position is on our old position
                        if calc_distance(new_pos, old_pos) < 1 then
                            goto next_interface
                        end
                    end
                    interface.teleport(first_pole.position)
                    new_id = interface.electric_network_id
                    if new_id then
                        -- ended up on a different network, somehow
                        if new_id ~= network_id then
                            local old_accumulator = storage.turbines.interfaces[new_id][name]
                            -- if there's no existing accumulator, it just takes that place
                            if not old_accumulator or not old_accumulator.valid then
                                storage.turbines.interfaces[new_id][name] = interface
                                network_interfaces[name] = nil
                                goto next_interface
                            else -- otherwise we empty our accumulator and yeet it
                                old_accumulator.energy = old_accumulator.energy + interface.energy
                            end
                        else -- ended up on our desired network, ez
                            storage.turbines.interfaces[new_id][name] = interface
                            goto next_interface
                        end
                    end
                end
            end
            network_interfaces[name] = nil
            interface.destroy()
        else
            network_interfaces[name] = nil
        end
        ::next_interface::
    end
    -- Check the neighbours
    local pole_entity = pole_data.entity
    if pole_entity and pole_entity.valid then
        Turbines.verify_neighbours(pole_entity)
    end
end

---gets the first valid pole for the given electric network id
---@param network_id integer
---@return LuaEntity?
Turbines.get_first_pole = function(network_id)
    local first_pole
    repeat
        first_pole = storage.turbines.poles_by_network[network_id][1]
        -- empty table
        if not first_pole then
            break
        end
        -- Invalid entry
        if not first_pole.entity or not first_pole.entity.valid then
            Turbines.remove_pole(first_pole)
            first_pole = nil
        else
            first_pole = first_pole.entity
        end
    until first_pole
    return first_pole
end

---Updates a turbines interface
---@param interface LuaEntity the turbine interface
---@param turbine_name string the name of the turbine
---@param count integer how many turbines are attached to the interface
Turbines.update_interface = function(interface, turbine_name, count)
    local lookup = Turbines.lookup[turbine_name]
    if lookup and lookup.power then
        local new_power = lookup.power(turbine_name, count)
        interface.power_production = new_power
        if not lookup.buffer then
            interface.electric_buffer_size = new_power
        end
    end
    if lookup and lookup.buffer then
        local new_size = lookup.buffer(turbine_name, count)
        interface.electric_buffer_size = new_size
        interface.energy = math.min(interface.energy, new_size)
    end
end

---Gets or creates a network interface
---@param turbine_entity LuaEntity the turbine looking for a sexy interface in their area (network)
---@param network_override integer? the electric network ID to check instead of the one at the turbine's position
---@return LuaEntity? # the interface we found or created, if successful
Turbines.get_or_create_interface = function(turbine_entity, network_override)
    local turbine_name = turbine_entity.name
    if network_override then
        local interface = storage.turbines.interfaces[network_override][turbine_name]
        -- There's already an interface on this network
        if interface and interface.valid then
            local network_id = interface.electric_network_id
            if network_id ~= network_override then
                -- If it has a network, migrate it if there isn't an interface on that network
                if network_id then
                    local old_interface = storage.turbines.interfaces[network_id][turbine_name]
                    if not old_interface or not old_interface.valid then
                        storage.turbines.interfaces[network_id][turbine_name] = interface
                    else
                        -- Transfer the power from the interface we're about to destroy
                        old_interface.energy = old_interface.energy + interface.energy
                        -- and finally destroy it
                        interface.destroy()
                    end
                else -- If it doesn't have a network, delete it
                    interface.destroy()
                end
                -- remove this accumulator from the old network id, it's either changed or invalid
                storage.turbines.interfaces[network_override][turbine_name] = nil
                -- retry, TODO why doesn't this fall through?
                return Turbines.get_or_create_interface(turbine_entity, network_override)
            else
                return interface
            end
        end
        -- Is there a pole we can use for placement?
        local first_pole = Turbines.get_first_pole(network_override)
        -- whew
        if not first_pole then
            return Turbines.get_or_create_interface(turbine_entity)
        end
        -- Yep, we have a pole to base on
        local interface_name = turbine_name .. "-interface"
        local lookup = Turbines.lookup[turbine_name]
        if lookup and lookup.interface_name then
            interface_name = lookup.interface_name
        end
        interface = turbine_entity.surface.create_entity {
            name = interface_name,
            position = first_pole.position,
            force = turbine_entity.force,
            create_build_effect_smoke = false
        }
        ---@cast interface LuaEntity shows as LuaEntity? otherwise
        interface.destructible = false
        interface.operable = false
        interface.power_usage = 0
        local network_id = interface.electric_network_id
        if network_id then
            -- If we end up on a different network, destroy if need be
            if network_id ~= network_override then
                -- Allow the user to find the problem network
                local position = first_pole.position
                local unit_id = turbine_entity.unit_number
                log(string.format("Interface created for network %d (turbine ID %d) ended up on network %d at [%.2f, %.2f]", network_override, unit_id, network_id, position.x, position.y))
                -- Migrate the turbine to the new network - it's highly likely the old network isn't usable
                storage.turbines.turbine_data[unit_id].network_id = network_id
                Turbines.increment_turbine_count(network_id, turbine_name, -1)
                Turbines.increment_turbine_count(network_override, turbine_name, 1)
                -- Check if the network already has an accumulator that we've now duplicated
                local old_interface = storage.turbines.interfaces[network_id][turbine_name]
                if old_interface and old_interface.valid then -- Destroy and return the existing accumulator if so
                    interface.destroy()
                    return old_interface
                end
            end
            -- otherwise, continue on
            storage.turbines.interfaces[network_id][turbine_name] = interface
            Turbines.update_interface(interface, turbine_name, (storage.turbines.turbine_counts[network_id][turbine_name] or 0))
            return interface
        else
            interface.destroy()
            return Turbines.get_or_create_interface(turbine_entity)
        end
        -- implied return nil
    else -- Make an accumulator and get its network ID, checking for an accumulator on that network
        local interface_name = turbine_name .. "-interface"
        local lookup = Turbines.lookup[turbine_name]
        if lookup and lookup.interface_name then
            interface_name = lookup.interface_name
        end
        local interface = turbine_entity.surface.create_entity {
            name = interface_name,
            position = turbine_entity.position,
            force = turbine_entity.force,
            create_build_effect_smoke = false
        }
        ---@cast interface LuaEntity shows as LuaEntity? otherwise
        interface.destructible = false
        interface.operable = false
        interface.power_production = 0
        interface.power_usage = 0
        local network_id = interface.electric_network_id
        if network_id then
            local parent = storage.turbines.interfaces[network_id][turbine_name]
            if parent and parent.valid and parent ~= interface then
                -- We accidentally made an accumulator on a network that already has one!
                interface.destroy()
                return parent
            else
                -- Is there a pole we can use for placement?
                local first_pole = Turbines.get_first_pole(network_id)
                -- Move the accumulator to the first pole's position
                if first_pole then
                    interface.teleport(first_pole.position)
                end
                storage.turbines.interfaces[network_id][turbine_name] = interface
                Turbines.update_interface(interface, turbine_name, (storage.turbines.turbine_counts[network_id][turbine_name] or 0))
                return interface
            end
        else
            -- Useless accumulator!
            interface.destroy()
            -- implied return nil
        end
    end
end

---Rebuilds/verifies the the global aerial pole, turbine, and accumulator data
Turbines.refresh_networks = function()
    storage.turbines.refresh_networks = false
    -- First, clear and rebuild our stored poles
    storage.turbines.poles = {}
    storage.turbines.poles_by_network = solid_table()
    for _, surface in pairs(game.surfaces) do
        for _, pole in pairs(surface.find_entities_filtered {type = "electric-pole"}) do
            local network_id = pole.electric_network_id
            if network_id then
                -- One is an array, one is a list. This allows ease of selecting a random pole.
                local index = #storage.turbines.poles_by_network[network_id] + 1
                local unit_number = pole.unit_number
                local pole_data = {
                    entity = pole,
                    list_index = index,
                    network_id = network_id,
                    unit_number = unit_number
                }
                storage.turbines.poles[unit_number] = pole_data
                storage.turbines.poles_by_network[network_id][index] = pole_data
            end
        end
    end

    -- Second, clear and rebuild the count data for our turbines and rectify their network_id vs their target network_id
    storage.turbines.turbine_counts = solid_table()
    for _, turbine in pairs(storage.turbines.turbine_data) do
        -- Check if the turbine is invalid
        if not turbine.entity or not turbine.entity.valid then
            goto continue
        end
        local network_id = turbine.network_id
        local entity = turbine.network_entity
        -- Check if the target has changed networks
        if entity and entity.valid then
            local new_network_id = entity.electric_network_id
            if new_network_id and network_id ~= new_network_id then
                turbine.network_id = new_network_id
                network_id = new_network_id
            end
        end
        local type_name = turbine.entity.name
        Turbines.get_or_create_interface(turbine.entity, network_id)
        Turbines.increment_turbine_count(network_id, type_name, 1, true)
        ::continue::
    end

    -- Third, remove any orphaned accumulators and update the capacity of the rest
    for network_id, network_interfaces in pairs(storage.turbines.interfaces) do
        local network_pole_count = #storage.turbines.poles_by_network[network_id]
        for turbine_name, interface in pairs(network_interfaces) do
            if not interface.valid then
                network_interfaces[turbine_name] = nil
                goto continue
            end
            -- If the new network has turbines, it will already have an accumulator. Thus, we destroy this one.
            local new_id = interface.electric_network_id
            if new_id ~= network_id then
                if new_id then -- migrate any remaining charge
                    local new_accumulator = storage.turbines.interfaces[new_id][turbine_name]
                    if new_accumulator and new_accumulator.valid then
                        new_accumulator.energy = new_accumulator.energy + interface.energy
                    end
                end
                interface.destroy()
                network_interfaces[turbine_name] = nil
                goto continue
            end
            -- Otherwise, if this network now has 0 poles, we destroy the turbine
            if network_pole_count == 0 then
                interface.destroy()
                network_interfaces[turbine_name] = nil
                goto continue
            end
            local turbine_count = storage.turbines.turbine_counts[network_id][turbine_name] or 0
            if turbine_count == 0 then
                interface.destroy()
                network_interfaces[turbine_name] = nil
                goto continue
            end
            Turbines.update_interface(interface, turbine_name, turbine_count)
            ::continue::
        end
    end
end

Turbines.on_init = function()
    --@type TurbinesGlobalData Global data structure for Turbines
    storage.turbines = storage.turbines or {
        poles = {},
        poles_by_network = solid_table(),
        interfaces = solid_table(),
        turbine_data = {},
        turbine_counts = solid_table()
    }

    Turbines.refresh_networks()

    -- Yeet any remaining interfaces
    local interface_array = {}
    for name, lookup in pairs(Turbines.lookup) do
        interface_array[#interface_array + 1] = lookup.interface_name or (name .. "-interface")
    end
    -- build a list of our entities to keep
    local entities_to_keep = {}
    for _, network_contents in pairs(storage.turbines.interfaces) do
        for _, interface_entity in pairs(network_contents) do
            if interface_entity.valid then
                entities_to_keep[interface_entity.unit_number] = true
            end
        end
    end
    local yeeted_count = 0
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered {
            name = interface_array
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
        log(string.format("deleted %i unnecessary interfaces", yeeted_count))
    end
end

py.on_event(py.events.on_init(), function(event)
    Turbines.on_init()
end)

Turbines.events.on_built = function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then
        return
    end
    local entity_type = entity.type
    -- Pole?
    if entity_type == "electric-pole" or entity_type == "power-switch" then
        Turbines.add_pole(entity)
        return
    end
    -- Switches also invalidate the network cache
    if entity_type == "power-switch" then
        storage.turbines.refresh_networks = true
        return
    end
end

Turbines.events.on_destroyed = function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then
        return
    end

    -- Poles
    if entity.type == "electric-pole" then
        local pole_data = storage.turbines.poles[entity.unit_number]
        if pole_data then
            Turbines.remove_pole(pole_data)
        end
        return
    end
    

end

--Update the electric or aerial networks on demand
Turbines.events[301] = function()
    if storage.turbines.refresh_networks then
        Turbines.refresh_networks()
        storage.turbines.refresh_networks = false
    end
end
--Update the electric networks every 1h+1tick
Turbines.events[60 * 60 * 60 + 1] = function()
    -- Refresh if pending, since we want an accurate pole/network count
    storage.turbines.refresh_networks = true
end