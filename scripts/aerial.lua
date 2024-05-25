local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Aerial = {}
Aerial.events = {}

--[[ 
    GLOBALS: 

    poles_by_surface = {
        [surface_index] = {
            [pole_unit_number] = pole_entity
        }
    }

    networks_by_surface = {
        [surface_index] = {
            [network_id] = {
                accumulators = {
                    ['aerial-blimp-mk0' .. tier] = accumulator_entity
                }
                [pole_unit_number] = pole_entity
            }
        }
    }

    aerial_data = {
        [unit_number] = {
            accumulator = aerial_accumulator,
            entity = blimp_entity
        }
    }

    aerial_base_data = {
        [unit_number] = {
            animation = animation_entity, -- this is where we get the electric network id
            chest = chest_entity,
            combinator = base_entity -- the actual place result
        }
    }

    existing_turbines = {
        [surface_index] = {
            [electric_network_id] = {
                [turbine_name] = turbine_count
            }
        }
    }

    surfaces_to_refresh = {
        [surface_index] = true
    }

    existing_turbines_invalid = true

]]--

local pathfind_flags = {
    allow_destroy_friendly_entities = true,
    allow_paths_through_own_entities = true,
    low_priority = true
}

local energy_per_distance = {
    ['aerial-blimp-mk01'] = 4500000 * 1.2,
    ['aerial-blimp-mk02'] = 9000000 * 1.2,
    ['aerial-blimp-mk03'] = 13500000 * 1.2,
    ['aerial-blimp-mk04'] = 18000000 * 1.2,
}

local travel_speeds = {
    ['aerial-blimp-mk01'] = 1.2,
    ['aerial-blimp-mk02'] = 2.4,
    ['aerial-blimp-mk03'] = 3.6,
    ['aerial-blimp-mk04'] = 4.8,
}

local turbine_names = {}
for name in pairs(energy_per_distance) do
    turbine_names[name] = true
end

local function calc_distance(a, b)
    local ax, ay = a.x or a[1], a.y or a[2]
    local bx, by = b.x or b[1], b.y or b[2]
    return ((ax - bx) ^ 2 + (ay - by) ^ 2) ^ 0.5
end

local function exists_and_valid(x)
    return x and x.valid
end

local function get_network(surface_index, network_id)
    local networks = global.networks_by_surface[surface_index]
    if not networks then
        return
    end
    return networks[network_id]
end

local function set_network(surface_index, network_id, network)
    local networks = global.networks_by_surface[surface_index]
    if not networks then
        networks = {}
        global.networks_by_surface[surface_index] = networks
    end
    networks[network_id] = network
end

local function get_pole(surface_index, pole_unit_number)
    local poles = global.poles_by_surface[surface_index]
    if not poles then
        return
    end
    return poles[pole_unit_number]
end

local function set_pole(surface_index, pole_unit_number, pole)
    local poles = global.poles_by_surface[surface_index]
    if not poles then
        poles = {}
        global.poles_by_surface[surf1ace_index] = poles
    end
    poles[pole_unit_number] = pole
end

local function get_pole_by_network(surface_index, network_id, pole_unit_number)
    local network = get_network(surface_index, network_id)
    if not network then
        return
    end
    return network[pole_unit_number]
end

local function set_pole_by_network(surface_index, network_id, pole_unit_number, pole)
    -- Entities can be network-less, we want to ignore those
    if not network_id then
        return
    end
    local network = get_network(surface_index, network_id)
    if not network then
        network = {}
        set_network(surface_index, network_id, network)
    end
    network[pole_unit_number] = pole
end

local function get_accumulator_by_network(surface_index, network_id, blimp_name)
    local network = get_network(surface_index, network_id)
    if not network then
        return
    end
    local accumulators = network.accumulators
    if not accumulators then
        return
    end
    return accumulators[blimp_name]
end

local function set_accumulator_by_network(surface_index, network_id, blimp_name, entity)
    local network = get_network(surface_index, network_id)
    if not network then
        network = {}
        global.networks_by_surface[surface_index] = network
    end
    local accumulators = network.accumulators
    if not accumulators then
        accumulators = {}
        network.accumulators = accumulators
    end
    accumulators[blimp_name] = entity
end

local function count_poles_for_network(surface_index, network_id)
    local network = get_network(surface_index, network_id)
    if not network then
        return 0
    end
    local count = table_size(network)
    -- table_count includes string indexes, so we decrement if applicable
    if network.accumulators then
        count = count - 1
    end
    return count
end

local function get_random_pole_by_network(surface_index, network_id)

end

local function increment_turbine_count(surface_index, network_id, turbine_name, increment)
    increment = increment or 1
    local surface_turbines = global.existing_turbines[surface_index]
    if not surface_turbines then
        return
    end
    local network_turbines = surface_turbines[network_id]
    if not network_turbines then
        return
    end
    -- If the increment puts it below 0, put it *at* 0
    network_turbines[turbine_name] = math.max((network_turbines[turbine_name] or 0) + increment, 0)
end


local function cancel_creation(entity, player_index, message)
	local inserted = 0
	local item_to_place = entity.prototype.items_to_place_this[1]
	local surface = entity.surface
	local position = entity.position

	if player_index then
		local player = game.get_player(player_index)
		if player.mine_entity(entity, false) then
			inserted = 1
		elseif item_to_place then
			inserted = player.insert(item_to_place)
		end
	end

	if inserted == 0 and item_to_place then
		surface.spill_item_stack(
			position,
			item_to_place,
			true,
			entity.force_index,
			false
		)
	end

	entity.destroy({raise_destroy = true})

	if not message then return end

    surface.create_entity{
        name = 'flying-text',
        position = position,
        text = message,
        render_player_index = player_index,
        color = {255,60,60}
    }
end

local function refresh_electric_networks(surface)
    global.surfaces_to_refresh[surface.index] = nil
    global.existing_turbines_invalid = true
    local surface_index = surface.index
    local poles = global.poles_by_surface[surface_index]

    if not poles then
        global.poles_by_surface[surface_index] = {}
        return
    end

    local networks = {}
    for unit_number, pole in pairs(poles) do
        if not pole.valid then
            poles[unit_number] = nil
        else
            local id = pole.electric_network_id
            if not networks[id] then
                networks[id] = {}
            end
            networks[id][unit_number] = pole
        end
    end
    global.networks_by_surface[surface_index] = networks
end

local function refresh_pending_surfaces()
    for surface_index in pairs(global.surfaces_to_refresh) do
        local surface = game.get_surface(surface_index)
        if surface then
            refresh_electric_networks(surface)
        end
    end
    global.surfaces_to_refresh = {}
end

Aerial.events.on_init = function()
    global.aerial_data = global.aerial_data or {}
    global.aerial_base_data = global.aerial_base_data or {}
    -- If we don't have a table, we gather the data to create it
    if not global.poles_by_surface or not global.networks_by_surface then
        global.poles_by_surface = {}
        global.networks_by_surface = {}
        for _, surface in pairs(game.surfaces) do
            local surface_index = surface.index
            global.poles_by_surface[surface_index] = {}
            global.networks_by_surface[surface_index] = {}
            for _, pole in pairs(surface.find_entities_filtered({type = 'electric-pole'})) do
                local unit_number = pole.unit_number
                set_pole(surface_index, unit_number, pole)
                set_pole_by_network(surface_index, pole.electric_network_id, unit_number, pole)
            end
        end
    end
    global.surfaces_to_refresh = {}
    global.existing_turbines = {} -- a map of surface_index -> electric_network_id -> turbine_name -> count
    global.existing_turbines_invalid = true
end

local function create_accumulator_for_network(surface, network_id, entity_name)
    local surface_index = surface.index
    local parent = get_accumulator_by_network(surface_index, network_id, entity_name)
    if parent then
        return parent
    else
        -- We *could* get .accumulators as the first key using next, so we repeat until that doesn't happen
        local key, pole
        repeat
            key, pole = next(global.networks_by_surface[surface_index][network_id], key)
        until not key or key ~= "accumulators"
        -- This is the first pole in the table, move the accumulator to it
        if exists_and_valid(pole) then
            local accumulator = surface.create_entity{
                name = entity_name .. '-accumulator',
                position = pole.position,
                force = pole.force,
                create_build_effect_smoke = false
            }
            accumulator.destructible = false
            accumulator.operable = false
            set_accumulator_by_network(surface_index, network_id, entity_name, accumulator)
        end
    end
end

local function create_accumulator(entity, network_override)
    local surface = entity.surface
    local name = entity.name
    local accumulator

    -- If we have a preferred network ID, let's check or create for that network first
    if network_override then
        accumulator = create_accumulator_for_network(surface, network_override, name)
    end

    -- Otherwise, carry on
    if not accumulator then
        accumulator = surface.create_entity{
            name = name .. '-accumulator',
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false
        }
        accumulator.destructible = false
        accumulator.operable = false
        -- Yeah, we're creating an accumulator to find the electric network id at a position
        -- and then discarding it if we find another accumulator on the same network 🙈
        local network_id = accumulator.electric_network_id
        if network_id then
            local surface_index = surface.index
            local parent = get_accumulator_by_network(surface_index, network_id, name)
            -- We accidentally made an accumulator on a network that already has one!
            if parent and parent ~= accumulator then
                accumulator.destroy()
            else
                set_accumulator_by_network(surface_index, network_id, name, accumulator)
            end
        end
    end

    return accumulator
end

local function refresh_existing_turbines()
    local result = {}
    for _, aerial_data in pairs(global.aerial_data) do
        local accumulator = aerial_data.accumulator
        if accumulator.valid then
            local surface_index = accumulator.surface_index
            if not result[surface_index] then
                result[surface_index] = {}
            end
            local existing_turbines = result[surface_index]
            local network_id = accumulator.electric_network_id
            if network_id then
                if not existing_turbines[network_id] then
                    existing_turbines[network_id] = {}
                end
                local name = aerial_data.entity.name
                local per_network = existing_turbines[network_id]
                per_network[name] = (per_network[name] or 0) + 1
            end
        end
    end
    global.existing_turbines = result
    global.existing_turbines_invalid = false
end

local function count_turbines_for_network(surface_index, electric_network_id)
    if global.existing_turbines_invalid then
        refresh_existing_turbines()
    end
    local per_surface = global.existing_turbines[surface_index]
    if not per_surface then return 0 end
    local per_network = per_surface[electric_network_id]
    if not per_network then return 0 end
    local sum = 0
    for _, count in pairs(per_network) do
        sum = sum + count
    end
    return sum
end

local function calc_stored_energy(aerial_data)
    local entity = aerial_data.entity
    local previous_position = aerial_data.previous_position
    local starting_position = aerial_data.starting_position
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

local function accumulate(aerial_data)
    local energy, distance_bonus = calc_stored_energy(aerial_data)
    local accumulator = aerial_data.accumulator
    accumulator.energy = accumulator.energy + energy
    aerial_data.previous_position = aerial_data.entity.position
    aerial_data.lifetime_generation = aerial_data.lifetime_generation + energy
    return distance_bonus
end

Aerial.events[117] = function()
    local key, aerial_data = global.last_aerial, nil
    if not global.aerial_data[key] then key = nil end
    local max_iter = 0
    repeat
        max_iter = max_iter + 1
        key, aerial_data = next(global.aerial_data, key)
        if not key or not aerial_data then
            break
        end
        local entity = aerial_data.entity
        if not entity.valid then
            if aerial_data.accumulator.valid then
                aerial_data.accumulator.destroy()
            end
            global.aerial_data[key] = nil
            break
        end
        local accumulator = aerial_data.accumulator
        if not accumulator.valid then
            accumulator = create_accumulator(entity)
            aerial_data.accumulator = accumulator
        end
        accumulate(aerial_data)
    until max_iter > 120
    global.last_aerial = key
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

local function validate_base(base_data)
    local combinator = base_data.combinator
    local animation = base_data.animation
    local chest = base_data.chest

    local combinator_valid = exists_and_valid(combinator)
    local animation_valid = exists_and_valid(animation)
    local chest_valid = exists_and_valid(chest)

    local valid = combinator_valid and animation_valid and chest_valid

    if not valid then
        -- Clean up any remaining portions of the compound entity
        if not combinator_valid then
            combinator.destroy()
        end
        if not animation_valid then
            animation.destroy()
        end
        if chest and not chest_valid then
            local inventory = chest.get_inventory(defines.inventory.chest)
            local position = chest.position
            local force = chest.force
            -- Spill the inventory and mark the items on the ground for deconstruction
            for i = 1, #inventory do
                local stack = inventory[i]
                if stack.valid_for_read then
                    local spilled_results = chest.surface.spill_item_stack(position, stack, true, force, false)
                    for ii = 1,  #spilled_results do
                        spilled_results[ii].order_deconstruction(force)
                    end
                end
            end
            chest.destroy()
        end
        global.aerial_base_data[base_data.unit_number] = nil
    end

    return valid
end

local function store_turbine(surface_index, electric_network_id, name, inventory)
    -- If our inventory is full, return early
    local stack = inventory.find_empty_stack
    if not stack then
        return false
    end
    -- Walk our table until we find our target turbine
    for key, aerial_data in pairs(global.aerial_data) do
        local accumulator = aerial_data.accumulator
        local entity = aerial_data.entity
        if  entity.valid
            and accumulator.valid
            and entity.name == name
            and accumulator.surface_index == surface_index
            and accumulator.electric_network_id == electric_network_id
        then
            accumulate(aerial_data)
            stack.set_stack{
                name = name,
                count = 1
            }
            stack.tags = {lifetime_generation = aerial_data.lifetime_generation}
            stack.custom_description = {'', aerial_data.entity.prototype.localised_description, '\n', {'aerial-gui.lifetime-generation', FUN.format_energy(aerial_data.lifetime_generation, 'J')}}
            global.aerial_data[key] = nil
            entity.destroy()
            increment_turbine_count(surface_index, electric_network_id, name, -1)
            return true
        end
    end
    return false
end

local function release_turbine(aerial_base_data, name, stack)
    local combinator = aerial_base_data.combinator
    local position = combinator.position

    local surface = combinator.surface
    local surface_index = surface.index
    local electric_network_id = aerial_base_data.animation.electric_network_id
    local aerial_turbines = count_turbines_for_network(surface_index, electric_network_id)
    local electric_poles = count_poles_for_network(surface_index, electric_network_id)
    -- Return if we don't mee the minimum 3 poles per turbine
    if 3 * (aerial_turbines + 1) > electric_poles then
        surface.create_entity{
            name = 'flying-text',
            position = position,
            text = {'aerial-gui.airspace-too-crowded'},
            color = {255,60,60}
        }
        return false
    end

    global.electric_network_id_override = electric_network_id
    surface.create_entity{
        name = name,
        position = position,
        force = combinator.force_index,
        create_build_effect_smoke = false,
        item = stack,
        raise_built = true
    }
    global.electric_network_id_override = nil
    stack.clear()
    return true
end

local letters = {'A', 'B', 'C', 'D'}
---Update the bases every ~2 seconds
Aerial.events[116] = function()
    local stored_energy_per_network = {}
    local max_energy_per_network = {}

    local needs_refresh = true

    for _, aerial_base_data in pairs(global.aerial_base_data) do
        -- If there are actually bases, start by refreshing any surfaces
        if needs_refresh then
            refresh_pending_surfaces()
            needs_refresh = false
        end
        -- If the base components aren't valid, remove it and try again in the next event
        if not validate_base(aerial_base_data) then
            break
        end

        local combinator = aerial_base_data.combinator
        local control = combinator.get_or_create_control_behavior()
        local animation = aerial_base_data.animation
        local chest = aerial_base_data.chest

        -- I guess we do this to make the combinator not use power and thus not flicker at low power? Seems weird...
        if  animation.energy == 0 then
            control.enabled = false
            goto continue
        end

        -- No power network
        local electric_network_id = animation.electric_network_id
        if not electric_network_id then
            control.enabled = false
            goto continue
        end

        -- No poles on this network
        local surface_index = animation.surface_index
        local all_poles = get_network(surface_index, electric_network_id)
        if not all_poles then
            control.enabled = false
            goto continue
        end

        -- Need to rebuild our list of turbines
        if global.existing_turbines_invalid then
            refresh_existing_turbines()
        end
        local existing_turbines = (global.existing_turbines[surface_index] or {})[electric_network_id] or {}

        -- Parse our input signals for blimp signals indicating the target count in the current network
        local desired_turbines = {}
        for _, signal in pairs(combinator.get_merged_signals() or {}) do
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
            -- Use the bool here to make sure we only sort if we've changed the inventory
            local modified = false
            if not is_empty and delta > 0 then -- Release blimps                
                for _ = 1, math.min(delta, 10) do -- ~5/s release rate
                    local stack = inventory.find_item_stack(name)
                    if stack then
                        -- Break out if the network is full
                        if not release_turbine(aerial_base_data, name, stack) then
                            break
                        else
                            -- Incrementing existing_turbines happens in the build event
                            modified = true
                        end
                    else
                        break
                    end
                end
            elseif not is_full and delta < 0 then -- Return blimps
                for _ = 1, math.min(delta, 10) do
                    if  inventory.can_insert(name)
                        and store_turbine(surface_index, electric_network_id, name, inventory)
                    then
                        existing_turbines[name] = existing_turbines[name] - 1
                        modified = true
                    else
                        break
                    end
                end
            end
            -- Sort the inventory if we've modified it
            if modified then
                inventory.sort_and_merge()
            end
            -- sum stored energy of all turbine accumulators
            if update_accumulators then
                local accumulator = get_accumulator_by_network(surface_index, electric_network_id, name)
                if exists_and_valid(accumulator) then
                    stored_energy = stored_energy + accumulator.energy
                    max_energy = max_energy + accumulator.prototype.electric_energy_source_prototype.buffer_capacity
                end
            end
        end

        -- Update the energy signals
        if update_accumulators then
            max_energy = math.floor(max_energy / 1000000)
            stored_energy =  math.min(max_energy, math.floor(stored_energy / 1000000 * 1.01))
            stored_energy_per_network[electric_network_id] = stored_energy
            max_energy_per_network[electric_network_id] = max_energy
        else
            stored_energy = stored_energy_per_network[electric_network_id]
            max_energy = max_energy_per_network[electric_network_id]
        end

        control.enabled = true
        -- The first arg here is just what order it shows in the output, 1-8 are reserved for the item counts
        control.set_signal(9, {
            signal = {type = 'virtual', name = 'signal-yellow'},
            count = stored_energy
        })
        control.set_signal(10, {
            signal = {type = 'virtual', name = 'signal-green'},
            count = max_energy
        })

        -- Update the blimp count signals
        for i, letter in pairs(letters) do
            local name = 'aerial-blimp-mk0' .. i
            control.set_signal(i, {
                signal = {type = 'virtual', name = 'signal-' .. i},
                count = existing_turbines[name] or 0
            })
            control.set_signal(i + 4, {
                signal = {type = 'virtual', name = 'signal-' .. letter},
                count = inventory.get_item_count(name)
            })
        end

        ::continue::
    end
end

local function park_and_error(entity)
    rendering.draw_sprite{
        sprite = 'utility.electricity_icon',
        target = entity,
        surface = entity.surface,
        render_layer = 'air-entity-info-icon'
    }
    game.print{'aerial-gui.stranded', entity.name, entity.position.x, entity.position.y}
    Aerial.events.on_destroyed{entity = entity}
end

local function find_target(aerial_data)
    local accumulator = aerial_data.accumulator
    local entity = aerial_data.entity
    local surface = entity.surface
    local surface_index = entity.surface.index

    -- Store the previous target
    local previous_target = aerial_data.target
    if not exists_and_valid(previous_target) then
        previous_target = nil
    end

    -- If there's no accumulator, find or make one
    if not exists_and_valid(accumulator) then
        -- If we have a previous target, see if there's an accumulator for its id
        if previous_target then
            local id = previous_target.electric_network_id
            if id then
                accumulator = get_accumulator_by_network(surface_index, id, entity.name)
            end
        end
        -- This will first check the network id at our position for an existing accumulator, otherwise creating a new one
        if not exists_and_valid(accumulator) then
            accumulator = create_accumulator(entity)
        end
        aerial_data.accumulator = accumulator
    end

    -- Apply the energy gain from the distance travelled and calculate the bonus, creating a table for a rolling average
    local distance_bonus = accumulate(aerial_data)
    local last_20 = aerial_data.last_20
    if last_20 then
        table.insert(last_20, 1, distance_bonus)
        last_20[21] = nil
    else
        aerial_data.last_20 = {distance_bonus}
    end

    -- Our ID is overridden here in case we create an entity and want it on a new network
    local network_id = global.electric_network_id_override
        or (previous_target and previous_target.electric_network_id)
        or accumulator.electric_network_id

    if not network_id then
        park_and_error(entity)
        return
    end

    ::retry::
    local all_poles = get_network(surface_index, network_id)
    local pole_count = count_poles_for_network(surface_index, network_id)

    if not all_poles or pole_count < 2 then
        park_and_error(entity)
        return
    end

    -- Pick a random pole that's different from our current pole
    local target
    repeat
        -- Since we're indexed by id, we walk the table to get our random entry
        -- Probably can get performance gains here adding a lookup table
        local current_index = 0
        local target_index = math.random(pole_count)
        for _, pole in pairs(all_poles) do
            current_index = current_index + 1
            if target_index == current_index then
                target = pole
            end
        end

        -- If the pole isn't valid, we want to remove it from the table and try again
        if not exists_and_valid(target)
            or network_id ~= target.electric_network_id
        then
            refresh_electric_networks(surface)
            goto retry
        end
    until target and target ~= previous_target

    -- now send our pathfinding command
    aerial_data.target = target
    aerial_data.starting_position = entity.position
    local target_position = target.position
    entity.set_command{
        type = defines.command.go_to_location,
        destination = {target.position.x, target.position.y - 5},
        distraction = defines.distraction.none,
        radius = 7, -- Length of the blimp
        pathfind_flags = pathfind_flags
    }

    -- Shortcut the pathing via teleport if the flag is set
    if aerial_data.zoop then
        accumulator.teleport(target_position)
        aerial_data.zoop = nil
    end
end

Aerial.events.on_built = function(event)
    local entity = event.created_entity or event.entity
    if not entity.valid or not entity.unit_number then
        return
    end
    local entity_type = entity.type
    local entity_name = entity.name
    local surface_index = entity.surface_index
    -- Turbine?
    if turbine_names[entity_name] then
        -- Refresh if pending, since we want an accurate pole/network count
        refresh_pending_surfaces()

        -- Build or find the relevant accumulator
        local accumulator = create_accumulator(entity, global.electric_network_id_override)

        -- Apply item tags
        local tags = event.tags
        if not tags then
            local stack = event.stack
            tags = stack and stack.tags or {}
        end

        local fail_msg = false
        local electric_network_id = global.electric_network_id_override or accumulator.electric_network_id
        if not electric_network_id then
            fail_msg = {'aerial-gui.must-be-placed-in-electric-network'}
        else
            local aerial_turbines = count_turbines_for_network(surface_index, electric_network_id)
            local electric_poles = count_poles_for_network(surface_index, electric_network_id)
            if (aerial_turbines + 1) * 3 > electric_poles then
                fail_msg = {'aerial-gui.airspace-too-crowded'}
            end
        end
        if fail_msg then
            accumulator.destroy()
            cancel_creation(entity, event.player_index, fail_msg)
            return
        end

        local aerial_data = {
            accumulator = accumulator,
            entity = entity,
            zoop = true,
            lifetime_generation = tags.lifetime_generation or 0
        }

        global.aerial_data[entity.unit_number] = aerial_data

        entity.destructible = false

        local per_surface = global.existing_turbines[surface_index]
        if not per_surface then
            per_surface = {}
            global.existing_turbines[surface_index] = per_surface
        end

        local existing_turbines = per_surface[electric_network_id]
        if not existing_turbines then
            existing_turbines = {}
            per_surface[electric_network_id] = existing_turbines
        end

        existing_turbines[entity_name] = (existing_turbines[entity_name] or 0) + 1

        find_target(aerial_data)
        return
    end
    -- Pole?
    if entity.type == 'electric-pole' or entity.type == 'power-switch' then
        set_pole(surface_index, entity.unit_number, entity)
        global.surfaces_to_refresh[entity.surface_index] = true
        global.existing_turbines_invalid = true
        return
    end
    -- Switches also invalidate the network cache
    if entity.type == 'power-switch' then
        global.surfaces_to_refresh[entity.surface_index] = true
        global.existing_turbines_invalid = true
        return
    end
    -- Base compound entity
    if entity_name == 'aerial-base-combinator' then
        entity.operable = false
        local animation = entity.surface.create_entity{
            name = 'aerial-base-animation',
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false
        }
        animation.destructible = false
        animation.operable = false
        local chest = entity.surface.create_entity{
            name = 'aerial-base-chest',
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false
        }
        chest.destructible = false
        local aerial_base_data = {
            combinator = entity,
            animation = animation,
            chest = chest,
            unit_number = entity.unit_number
        }
        global.aerial_base_data[entity.unit_number] = aerial_base_data
        local inventory = aerial_base_data.chest.get_inventory(defines.inventory.chest)
        set_aerial_base_inventory_filters(inventory)
    end
end

Aerial.events.on_destroyed = function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then return end
    local aerial_data = global.aerial_data[entity.unit_number]
    local surface_index = entity.surface_index
    if aerial_data then
        local accumulator = aerial_data.accumulator
        local electric_network_id
        if accumulator.valid then
            electric_network_id = accumulator.electric_network_id
            accumulator.destroy()
        end
        global.aerial_data[entity.unit_number] = nil

        if event.player_index then
            local player = game.get_player(event.player_index)
            local main_frame = player.gui.screen.aerial_gui
            if main_frame and main_frame.tags.unit_number == entity.unit_number then
                main_frame.destroy()
            end
        end

        if electric_network_id then
            local per_surface = global.existing_turbines[surface_index]
            if not per_surface then return end
            local existing_turbines = per_surface[electric_network_id]
            if not existing_turbines then return end
            local name = entity.name
            existing_turbines[name] = (existing_turbines[name] or 0) - 1
        end

        local buffer = event.buffer
        if not buffer then return end
        local stack = buffer[1]
        stack.tags = {lifetime_generation = aerial_data.lifetime_generation}
        stack.custom_description = {'', entity.prototype.localised_description, '\n', {'aerial-gui.lifetime-generation', FUN.format_energy(aerial_data.lifetime_generation, 'J')}}
    elseif entity.type == 'electric-pole' then
        local all_electric_poles = global.poles_by_surface[surface_index]
        if not all_electric_poles then
            all_electric_poles = {}
            global.poles_by_surface[surface_index] = all_electric_poles
        end
        all_electric_poles[entity.unit_number] = entity
        --global.surfaces_to_refresh[surface_index] = true
        global.existing_turbines_invalid = true
    elseif entity.name == 'aerial-base-combinator' then
        local unit_number = entity.unit_number
        local aerial_base_data = global.aerial_base_data[unit_number]
        if not aerial_base_data then return end
        local chest = aerial_base_data.chest
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
                        chest.surface.spill_item_stack(chest.position, stack, true, chest.force_index, false)
                    end
                end
            end
            chest.destroy()
        end
        if exists_and_valid(aerial_base_data.combinator) then aerial_base_data.combinator.destroy() end
        if exists_and_valid(aerial_base_data.animation) then aerial_base_data.animation.destroy() end
        global.aerial_base_data[unit_number] = nil
    end
end

Aerial.events.on_ai_command_completed = function(event)
    local aerial_data = global.aerial_data[event.unit_number]
    if not aerial_data then return end
    refresh_pending_surfaces()
    find_target(aerial_data)
end

local function build_aerial_gui(player, aerial_data)
    if player.gui.screen.aerial_gui then player.gui.screen.aerial_gui.destroy() end
    player.opened = nil
    local entity = aerial_data.entity

    local main_frame = player.gui.screen.add{
        type = 'frame',
        name = 'aerial_gui',
        caption = entity.prototype.localised_name,
        direction = 'vertical'
    }
    main_frame.style.width = 336
    main_frame.tags = {unit_number = entity.unit_number}
    main_frame.auto_center = true
    player.opened = main_frame

    local content_frame = main_frame.add{type = 'frame', name = 'content_frame', direction = 'vertical', style = 'inside_shallow_frame_with_padding'}
	content_frame.style.vertically_stretchable = true
	local content_flow = content_frame.add{type = 'flow', name = 'content_flow', direction = 'vertical'}
	content_flow.style.vertical_spacing = 8
	content_flow.style.margin = {-4, 0, -4, 0}
	content_flow.style.vertical_align = 'center'

    local status_flow = content_flow.add{type = 'flow', name = 'status_flow', direction = 'horizontal'}
	status_flow.style.vertical_align = 'center'
	local status_sprite = status_flow.add{type = 'sprite', name = 'status_sprite'}
	status_sprite.resize_to_sprite = false
	status_sprite.style.size = {16, 16}
	status_sprite.sprite = 'utility/status_working'
	status_flow.add{type = 'label', name = 'status_text'}.caption = {'entity-status.working'}

    content_flow.add{type = 'progressbar', name = 'progressbar', style = 'electric_satisfaction_statistics_progressbar'}.style.horizontally_stretchable = true

    local camera_frame = content_flow.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = entity.position, surface_index = entity.surface_index}
	camera.visible = true
    camera.entity = entity
	camera.style.height = 180
	camera.zoom = 0.7

    local camera_frame_2 = content_flow.add{type = 'frame', name = 'camera_frame_2', style = 'py_nice_frame'}
    camera = camera_frame_2.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = entity.position, surface_index = entity.surface_index}
	camera.visible = true
    camera.entity = entity
	camera.style.height = 180
	camera.zoom = 0.7

	content_flow.add{type = 'label', name = 'distance_bonus'}
    content_flow.add{type = 'label', name = 'lifetime_generation'}
    content_flow.add{type = 'label', name = 'airspace_traffic_flow'}
    content_flow.add{type = 'label', name = 'arrival'}

    Aerial.update_gui(player)
end

local function build_aerial_base_gui(player, aerial_base_data)
    local chest = aerial_base_data.chest
    player.opened = chest
    local inventory = chest.get_inventory(defines.inventory.chest)
    set_aerial_base_inventory_filters(inventory)
end

Aerial.events.on_open_gui = function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    if not exists_and_valid(entity) or not entity.unit_number then return end
    if entity.type == 'power-switch' or entity.type == 'electric-pole' then
        global.surfaces_to_refresh[entity.surface.index] = true
        global.existing_turbines_invalid = true
        return
    end
    local aerial_data = global.aerial_data[entity.unit_number]
    if aerial_data then
        build_aerial_gui(player, aerial_data)
        return
    end
    local aerial_base_data = global.aerial_base_data[entity.unit_number]
    if aerial_base_data and validate_base(aerial_base_data) then
        build_aerial_base_gui(player, aerial_base_data)
        return
    end
end

Aerial.events.on_gui_closed = function(event)
    local player = game.get_player(event.player_index)
    local gui_type = event.gui_type or player.opened_gui_type
	if gui_type == defines.gui_type.custom then
		local gui = player.gui.screen.aerial_gui
		if gui then gui.destroy() end
    elseif gui_type == defines.gui_type.entity then
        local entity = event.entity
        if entity and entity.name == 'aerial-base-chest' then
            local inventory = entity.get_inventory(defines.inventory.chest)
            set_aerial_base_inventory_filters(inventory)
        end
    end
end

function Aerial.update_gui(player)
    local main_frame = player.gui.screen.aerial_gui
    local content_flow = main_frame.content_frame.content_flow

    local unit_number = main_frame.tags.unit_number
    local aerial_data = global.aerial_data[unit_number]
    if not aerial_data then main_frame.destroy(); return end
    local entity = aerial_data.entity
    local accumulator = aerial_data.accumulator
    if not entity.valid or not accumulator.valid then
        main_frame.destroy(); return
    end

    local fake_energy, distance_bonus = calc_stored_energy(aerial_data)
    local stored_energy = accumulator.energy + fake_energy
    local max_energy = accumulator.prototype.electric_energy_source_prototype.buffer_capacity
    stored_energy = math.min(stored_energy, max_energy)
    local progress = stored_energy / max_energy
    content_flow.progressbar.value = progress > 0.99 and 1 or progress
    content_flow.progressbar.caption = {'sut-gui.energy', FUN.format_energy(stored_energy, 'J'), FUN.format_energy(max_energy, 'J')}

    local last_20 = aerial_data.last_20
    distance_bonus = math.ceil(distance_bonus * 1000) / 10
    if last_20 then
        distance_bonus = tostring(distance_bonus)
        if not distance_bonus:find('%.') then
            distance_bonus = distance_bonus .. '.0'
        end
        local sum = 0
        for _, n in pairs(last_20) do sum = sum + n end
        local average = math.ceil(sum / #last_20 * 1000) / 10
        content_flow.distance_bonus.caption = {'aerial-gui.rpm-bonus-avg', distance_bonus, #last_20, average}
    else
        content_flow.distance_bonus.caption = {'aerial-gui.rpm-bonus', distance_bonus}
    end

    content_flow.lifetime_generation.caption = {'aerial-gui.lifetime-generation', FUN.format_energy(aerial_data.lifetime_generation + fake_energy, 'J')}

    local target = aerial_data.target
    if target and target.valid then
        local camera = content_flow.camera_frame_2.camera
        camera.position = target.position
        camera.entity = target

        local distance = math.max(0, calc_distance(target.position, entity.position) - 5)
        local seconds = distance / travel_speeds[entity.name]
        local minutes = math.floor(seconds / 60)
        seconds = tostring(math.floor(seconds % 60))
        if #seconds == 1 then seconds = '0' .. seconds end
        content_flow.arrival.caption = {'aerial-gui.eta', minutes, seconds}
    end

    local surface_index = entity.surface_index
    local electric_network_id = accumulator.electric_network_id
    if not electric_network_id then return end
    local aerial_turbines = count_turbines_for_network(surface_index, electric_network_id)
    local electric_poles = count_poles_for_network(surface_index, electric_network_id)
    local traffic = aerial_turbines / math.floor(electric_poles / 3)
    if traffic > 1 then traffic = 1 end
    content_flow.airspace_traffic_flow.caption = {'aerial-gui.airspace-traffic-flow', math.ceil(traffic * 1000) / 10}
end