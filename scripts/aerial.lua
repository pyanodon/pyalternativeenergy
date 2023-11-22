local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Aerial = {}
Aerial.events = {}

local function distance(a, b)
    local ax, ay = a.x or a[1], a.y or a[2]
    local bx, by = b.x or b[1], b.y or b[2]
    return ((ax - bx) ^ 2 + (ay - by) ^ 2) ^ 0.5
end

local function exists_and_valid(x)
    return x and x.valid
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

	entity.destroy{raise_destroy = true}

	if not message then return end

    surface.create_entity{
        name = 'flying-text',
        position = position,
        text = message,
        render_player_index = player_index,
        color = {255,60,60}
    }
end

local energy_per_distance = {
    ['aerial-blimp-mk01'] = 4500000 * 1.2,
    ['aerial-blimp-mk02'] = 9000000 * 1.2,
    ['aerial-blimp-mk03'] = 13500000 * 1.2,
    ['aerial-blimp-mk04'] = 18000000 * 1.2,
}

local all_turbines = {}
for name, _ in pairs(energy_per_distance) do
    all_turbines[name] = true
end

local function refresh_electric_networks(surface)
    local networks = {}
    local invalid = false
    for _, pole in pairs(global.all_electric_poles[surface.index] or {}) do
        if pole.valid then
            local id = pole.electric_network_id
            if id then
                local all_poles = networks[id]
                if not all_poles then
                    networks[id] = {pole}
                else
                    all_poles[#all_poles + 1] = pole
                end
            end
        else invalid = true end        
    end
    if invalid then
        local all_electric_poles = {}
        for _, pole in pairs(global.all_electric_poles[surface.index]) do
            if pole.valid then
                all_electric_poles[pole.unit_number] = pole
            end
        end
        global.all_electric_poles[surface.index] = all_electric_poles
    end
    global.electric_networks[surface.index] = networks
    global.existing_turbines_invalid = true
end

Aerial.events.on_init = function()
    global.aerial_data = global.aerial_data or {}
    global.aerial_base_data = global.aerial_base_data or {}
    if not global.all_electric_poles then
        global.all_electric_poles = {}
        for _, surface in pairs(game.surfaces) do
            global.all_electric_poles[surface.index] = surface.find_entities_filtered{type = 'electric-pole'}
        end
    end
    if not global.electric_networks then
        global.electric_networks = {}
        for _, surface in pairs(game.surfaces) do
            refresh_electric_networks(surface)
        end
    end
    global.surfaces_to_refresh = {}
    global.existing_turbines = {}
    global.existing_turbines_invalid = true
end

local function create_interface(entity)
    local acculumator = entity.surface.create_entity{
        name = entity.name .. '-interface',
        position = entity.position,
        force = entity.force,
        create_build_effect_smoke = false
    }
    acculumator.destructible = false
    acculumator.operable = false
    return acculumator
end

local function refresh_existing_turbines()
    local result = {}
    for _, aerial_data in pairs(global.aerial_data) do
        local acculumator = aerial_data.acculumator
        if acculumator.valid then
            local surface_index = acculumator.surface_index
            if not result[surface_index] then
                result[surface_index] = {}
            end
            local existing_turbines = result[surface_index]
            local electric_network_id = acculumator.electric_network_id
            if electric_network_id then
                if not existing_turbines[electric_network_id] then
                    existing_turbines[electric_network_id] = {}
                end
                local name = aerial_data.entity.name
                local per_network = existing_turbines[electric_network_id]
                per_network[name] = (per_network[name] or 0) + 1
            end
        end
    end
    global.existing_turbines = result
    global.existing_turbines_invalid = false
end

local function calc_stored_energy(aerial_data)
    local entity = aerial_data.entity
    local acculumator = aerial_data.acculumator
    local previous_position = aerial_data.previous_position
    local starting_position = aerial_data.starting_position
    local distance_bonus = 1
    if starting_position then
        local distance = distance(starting_position, entity.position)
        distance_bonus = 2 - (1 / (distance ^ 0.5 / 30 + 1))
    end
    if previous_position then
        local distance = distance(previous_position, entity.position)
        return distance * energy_per_distance[entity.name] * distance_bonus
    end
    return 0
end

local function discharge(aerial_data)
    local energy = calc_stored_energy(aerial_data)
    local acculumator = aerial_data.acculumator
    acculumator.energy = acculumator.energy + energy
    aerial_data.previous_position = aerial_data.entity.position
    aerial_data.lifetime_generation = aerial_data.lifetime_generation + energy
end

local function calc_number_of_aerial_turbines_per_network(surface_index, electric_network_id)
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

local function calc_number_of_electric_poles_per_network(surface_index, electric_network_id)
    local per_surface = global.electric_networks[surface_index]
    if not per_surface then return 0 end
    local all_poles = per_surface[electric_network_id]
    if not all_poles then return 0 end
    return #all_poles
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
            if aerial_data.acculumator.valid then
                aerial_data.acculumator.destroy()
            end
            global.aerial_data[key] = nil
            break
        end
        local acculumator = aerial_data.acculumator
        if not acculumator.valid then
            acculumator = create_interface(entity)
            aerial_data.acculumator = acculumator
        end
        discharge(aerial_data)
    until max_iter > 120
    global.last_aerial = key
end

local function set_aerial_base_inventory_filters(inventory)
    local i = 1
    for turbine, _ in pairs(all_turbines) do
        for j = 1, math.floor(#inventory / 4) do
            inventory.set_filter(i, turbine)
            i = i + 1
        end
    end
end

local function aerial_base_validity_check(aerial_base_data)
    local combinator = aerial_base_data.combinator
    local animation = aerial_base_data.animation
    local chest = aerial_base_data.chest

    local valid = exists_and_valid(combinator) and exists_and_valid(animation) and exists_and_valid(chest)

    if not valid then
        if exists_and_valid(combinator) then
            combinator.destroy()
        end
        if exists_and_valid(animation) then
            animation.destroy()
        end
        if exists_and_valid(chest) then
            chest.destroy()
        end
        global.aerial_base_data[aerial_base_data.unit_number] = nil
    end

    return valid
end

local function insert_with_tags(inventory, name, aerial_data)
    for i = 1, #inventory do
        if inventory.get_filter(i) == name then
            local stack = inventory[i]
            if not stack.valid_for_read then
                stack.set_stack{
                    name = name,
                    count = 1
                }
                stack.tags = {lifetime_generation = aerial_data.lifetime_generation}
                stack.custom_description = {'', aerial_data.entity.prototype.localised_description, '\n', {'aerial-gui.lifetime-generation', FUN.format_energy(aerial_data.lifetime_generation, 'J')}}
                return
            end
        end
    end
end

local function zoop_turbine_to_base(aerial_base_data, surface_index, electric_network_id, name, inventory)
    for key, aerial_data in pairs(global.aerial_data) do
        local acculumator = aerial_data.acculumator
        local entity = aerial_data.entity
        if acculumator.valid
        and acculumator.surface_index == surface_index
        and acculumator.electric_network_id == electric_network_id
        and entity.valid
        and entity.name == name then
            discharge(aerial_data)
            insert_with_tags(inventory, name, aerial_data)
            global.aerial_data[key] = nil
            acculumator.destroy()
            entity.destroy()
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
    local aerial_turbines = calc_number_of_aerial_turbines_per_network(surface_index, electric_network_id)
    local electric_poles = calc_number_of_electric_poles_per_network(surface_index, electric_network_id)
    if aerial_turbines * 3 > electric_poles - 3 then
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

local function clear_surfaces_to_refresh()
    if next(global.surfaces_to_refresh) then
        for surface_index, _ in pairs(global.surfaces_to_refresh) do
            local surface = game.get_surface(surface_index)
            if surface then refresh_electric_networks(surface) end
        end
        global.surfaces_to_refresh = {}
    end
end

local letters = {'A', 'B', 'C', 'D'}
Aerial.events[66] = function()
    clear_surfaces_to_refresh()
    for _, aerial_base_data in pairs(global.aerial_base_data) do
        if not aerial_base_validity_check(aerial_base_data) then break end
        local combinator = aerial_base_data.combinator
        local control = combinator.get_or_create_control_behavior()
        local animation = aerial_base_data.animation
        local chest = aerial_base_data.chest

        if animation.energy == 0 then
            control.enabled = false; goto continue
        end

        local electric_network_id = animation.electric_network_id
        if not electric_network_id then control.enabled = false; goto continue end
        local surface_index = animation.surface_index
        local all_poles = (global.electric_networks[surface_index] or {})[electric_network_id]
        if not all_poles then control.enabled = false; goto continue end

        if global.existing_turbines_invalid then
            refresh_existing_turbines()
        end
        local existing_turbines = (global.existing_turbines[surface_index] or {})[electric_network_id] or {}

        local desired_turbines = {}
        for _, signal in pairs(combinator.get_merged_signals() or {}) do
            local name = signal.signal.name
            if all_turbines[name] then
                desired_turbines[name] = signal.count
            end
        end

        local inventory = chest.get_inventory(defines.inventory.chest)
        local is_empty = inventory.is_empty()
        local is_full = (not is_empty) and inventory.is_full()
        if not is_empty then
            for name, _ in pairs(all_turbines) do
                local existing_count = existing_turbines[name] or 0
                local desired_count = desired_turbines[name] or 0
                if desired_count > existing_count then
                    local stack = inventory.find_item_stack(name)
                    if stack then
                        if release_turbine(aerial_base_data, name, stack) then
                            inventory.sort_and_merge()
                        end
                        break
                    end
                end
            end
        end
        if not is_full then
            for name, _ in pairs(all_turbines) do
                local existing_count = existing_turbines[name] or 0
                local desired_count = desired_turbines[name] or 0
                if desired_count < existing_count 
                and inventory.can_insert(name)
                and zoop_turbine_to_base(aerial_base_data, surface_index, electric_network_id, name, inventory) then
                    existing_turbines[name] = existing_count - 1
                    inventory.sort_and_merge()
                    break
                end
            end
        end

        control.enabled = true
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

local function draw_error_sprite(entity)
    rendering.draw_sprite{
        sprite = 'utility.electricity_icon',
        target = entity,
        surface = entity.surface,
        render_layer = 'air-entity-info-icon'
    }
end

local pathfind_flags = {
    allow_destroy_friendly_entities = true,
    allow_paths_through_own_entities = true,
    low_priority = true,
    prefer_straight_paths = true
}

local function find_target(aerial_data)
    clear_surfaces_to_refresh()

    local acculumator = aerial_data.acculumator
    if not acculumator.valid then
        acculumator = create_interface(entity)
        aerial_data.acculumator = acculumator
    end
    local surface = acculumator.surface
    local previous_target = aerial_data.target
    local entity = aerial_data.entity
    if not (previous_target and previous_target.valid) then
        previous_target = nil
    end

    discharge(aerial_data)

    local id = global.electric_network_id_override
        or (previous_target and previous_target.electric_network_id)
        or acculumator.electric_network_id
    if not id then draw_error_sprite(entity); return end
    local all_poles = (global.electric_networks[surface.index] or {})[id]
    if not all_poles or #all_poles < 2 then draw_error_sprite(entity); return end
    local target
    while not target or target == previous_target do
        target = all_poles[math.random(#all_poles)]
        if not target.valid then
            refresh_electric_networks(surface)
            global.surfaces_to_refresh[surface.index] = nil
            all_poles = (global.electric_networks[surface.index] or {})[id]
            if not all_poles then draw_error_sprite(entity); return end
            target = nil
        end
    end

    aerial_data.target = target
    local position = target.position
    entity.set_command{
        type = defines.command.go_to_location,
        destination = {target.position.x - 4, target.position.y - 5},
        distraction = defines.distraction.none,
        radius = 2,
        pathfind_flags = pathfind_flags
    }
    aerial_data.starting_position = entity.position
    if aerial_data.zoop or acculumator.electric_network_id ~= target.electric_network_id then
        acculumator.teleport(position)
        aerial_data.zoop = nil
    end
end

Aerial.events.on_built = function(event)
    local entity = event.created_entity or event.entity
    if not entity.valid or not entity.unit_number then return end
    local name = entity.name
    local surface_index = entity.surface_index
    if all_turbines[name] then
        local unit_number = entity.unit_number
        local acculumator = create_interface(entity)

        local tags = event.tags
        if not tags then
            local stack = event.stack
            tags = stack and stack.tags or {}
        end

        local aerial_data = {
            acculumator = acculumator,
            entity = entity,
            zoop = true,
            lifetime_generation = tags.lifetime_generation or 0
        }
        global.aerial_data[unit_number] = aerial_data

        local fail_msg = false
        local electric_network_id = global.electric_network_id_override or acculumator.electric_network_id
        if not electric_network_id then
            fail_msg = {'aerial-gui.must-be-placed-in-electric-network'}
        else
            local aerial_turbines = calc_number_of_aerial_turbines_per_network(surface_index, electric_network_id)
            local electric_poles = calc_number_of_electric_poles_per_network(surface_index, electric_network_id)
            if aerial_turbines * 3 > electric_poles then
                fail_msg = {'aerial-gui.airspace-too-crowded'}
            end
        end

        if fail_msg then
            acculumator.destroy()
            cancel_creation(entity, event.player_index, fail_msg)
            global.aerial_data[unit_number] = nil
            return
        end

        entity.destructible = false
        acculumator.destructible = false
        acculumator.operable = false

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
        existing_turbines[name] = (existing_turbines[name] or 0) + 1

        find_target(aerial_data)
    elseif entity.type == 'electric-pole' or entity.type == 'power-switch' then
        if entity.type == 'electric-pole' then
            local all_electric_poles = global.all_electric_poles[surface_index]
            if not all_electric_poles then
                all_electric_poles = {}
                global.all_electric_poles[surface_index] = all_electric_poles
            end
            all_electric_poles[entity.unit_number] = entity
        end
        global.surfaces_to_refresh[entity.surface_index] = true
        global.existing_turbines_invalid = true
    elseif name == 'aerial-base-combinator' then
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
        local acculumator = aerial_data.acculumator
        local electric_network_id
        if acculumator.valid then
            electric_network_id = acculumator.electric_network_id
            acculumator.destroy()
        end
        global.aerial_data[entity.unit_number] = nil

        if event.player_index then
            local player = game.get_player(event.player_index)
            local main_frame = player.gui.screen.aerial_gui
            if main_frame and main_frame.tags.unit_number == entity.unit_number then
                main_frame.destroy()
            end
        end

        local buffer = event.buffer
        if not buffer then return end
        local stack = buffer[1]
        stack.tags = {lifetime_generation = aerial_data.lifetime_generation}
        stack.custom_description = {'', entity.prototype.localised_description, '\n', {'aerial-gui.lifetime-generation', FUN.format_energy(aerial_data.lifetime_generation, 'J')}}

        if electric_network_id then
            local per_surface = global.existing_turbines[surface_index]
            if not per_surface then return end
            local existing_turbines = per_surface[electric_network_id]
            if not existing_turbines then return end
            local name = entity.name
            existing_turbines[name] = (existing_turbines[name] or 0) - 1
        end
    elseif entity.type == 'electric-pole' then
        local all_electric_poles = global.all_electric_poles[surface_index]
        if not all_electric_poles then
            all_electric_poles = {}
            global.all_electric_poles[surface_index] = all_electric_poles
        end
        all_electric_poles[entity.unit_number] = entity
        global.surfaces_to_refresh[surface_index] = true
        global.existing_turbines_invalid = true
    elseif entity.name == 'aerial-base-combinator' then
        local unit_number = entity.unit_number
        local aerial_base_data = global.aerial_base_data[unit_number]
        if not aerial_base_data then return end
        for _, entity in pairs{
            aerial_base_data.combinator,
            aerial_base_data.animation,
            aerial_base_data.chest
        } do
            if exists_and_valid(entity) then entity.destroy() end
        end
        global.aerial_base_data[unit_number] = nil
    end
end

Aerial.events.on_ai_command_completed = function(event)
    local aerial_data = global.aerial_data[event.unit_number]
    if not aerial_data then return end
    find_target(aerial_data)
end

local function build_aerial_gui(player, aerial_data)
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

    local camera_frame = content_flow.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = entity.position, surface_index = entity.surface_index}
	camera.visible = true
    camera.entity = entity
	camera.style.height = 180
	camera.zoom = 0.7

    content_flow.add{type = 'progressbar', name = 'progressbar', style = 'electric_satisfaction_statistics_progressbar'}.style.horizontally_stretchable = true
    content_flow.add{type = 'line'}

	content_flow.add{type = 'label', name = 'distance_bonus'}
    content_flow.add{type = 'label', name = 'lifetime_generation'}
    content_flow.add{type = 'label', name = 'airspace_traffic_flow'}
    
    Aerial.update_gui(player)
end

local function build_aerial_base_gui(player, aerial_base_data)
    local combinator = aerial_base_data.combinator
    local animation = aerial_base_data.animation
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
    if aerial_base_data and aerial_base_validity_check(aerial_base_data) then
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
        if entity.name == 'aerial-base-chest' then
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
    if not aerial_data then return end
    local entity = aerial_data.entity
    local acculumator = aerial_data.acculumator
    if not entity.valid or not acculumator.valid then
        main_frame.destroy()
        return
    end

    local fake_energy = calc_stored_energy(aerial_data)
    local stored_energy = acculumator.energy + fake_energy
    local max_energy = acculumator.prototype.electric_energy_source_prototype.buffer_capacity
    stored_energy = math.min(stored_energy, max_energy)
    local progress = stored_energy / max_energy
    content_flow.progressbar.value = progress > 0.99 and 1 or progress
    content_flow.progressbar.caption = {'sut-gui.energy', FUN.format_energy(stored_energy, 'J'), FUN.format_energy(max_energy, 'J')}

    local starting_position = aerial_data.starting_position
    local distance_bonus = 1
    if starting_position then
        local distance = distance(starting_position, entity.position)
        distance_bonus = 2 - (1 / (distance ^ 0.5 / 30 + 1))
    end
    content_flow.distance_bonus.caption = {'aerial-gui.rpm-bonus', math.ceil(distance_bonus * 1000) / 10}
    
    content_flow.lifetime_generation.caption = {'aerial-gui.lifetime-generation', FUN.format_energy(aerial_data.lifetime_generation + fake_energy, 'J')}

    local surface_index = entity.surface_index
    local electric_network_id = acculumator.electric_network_id
    if not electric_network_id then return end
    local aerial_turbines = calc_number_of_aerial_turbines_per_network(surface_index, electric_network_id)
    local electric_poles = calc_number_of_electric_poles_per_network(surface_index, electric_network_id)
    local traffic = aerial_turbines / math.floor(electric_poles / 3)
    if traffic > 1 then traffic = 1 end
    content_flow.airspace_traffic_flow.caption = {'aerial-gui.airspace-traffic-flow', math.ceil(traffic * 1000) / 10}
end