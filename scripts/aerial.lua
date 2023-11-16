local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Aerial = {}
Aerial.events = {}

local function distance(a, b)
    local ax, ay = a.x or a[1], a.y or a[2]
    local bx, by = b.x or b[1], b.y or b[2]
    return ((ax - bx) ^ 2 + (ay - by) ^ 2) ^ 0.5
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

local function refresh_electric_networks(surface)
    local networks = {}
    for _, pole in pairs(surface.find_entities_filtered{type = 'electric-pole'}) do
        local id = pole.electric_network_id
        if id then
            local all_poles = networks[id]
            if not all_poles then
                networks[id] = {pole}
            else
                all_poles[#all_poles + 1] = pole
            end
        end
    end
    global.electric_networks[surface.index] = networks
end

Aerial.events.on_init = function()
    global.aerial_data = global.aerial_data or {}
    if not global.electric_networks then
        global.electric_networks = {}
        for _, surface in pairs(game.surfaces) do
            refresh_electric_networks(surface)
        end
    end
    global.surfaces_to_refresh = {}
end

local function create_interface(entity)
    return entity.surface.create_entity{
        name = entity.name .. '-interface',
        position = entity.position,
        force = entity.force,
        create_build_effect_smoke = false
    }
end

local pathfind_flags = {
    allow_destroy_friendly_entities = true,
    allow_paths_through_own_entities = true,
    low_priority = true
}

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
    until max_iter > 60
    global.last_aerial = key
end

local function draw_error_sprite(entity)
    rendering.draw_sprite{
        sprite = 'utility.electricity_icon',
        target = entity,
        surface = entity.surface,
        render_layer = 'air-entity-info-icon'
    }
end

local function find_target(aerial_data)
    if next(global.surfaces_to_refresh) then
        for surface_index, _ in pairs(global.surfaces_to_refresh) do
            local surface = game.get_surface(surface_index)
            if surface then refresh_electric_networks(surface) end
        end
        global.surfaces_to_refresh = {}
    end

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

    local id = previous_target and previous_target.electric_network_id
    if not id then id = acculumator.electric_network_id end
    if not id then draw_error_sprite(entity); return end
    local all_poles = (global.electric_networks[surface.index] or {})[id]
    if not all_poles or #all_poles < 2 then draw_error_sprite(entity); return end
    local target
    while not target or target == previous_target do
        target = all_poles[math.random(#all_poles)]
        if not target.valid then
            refresh_electric_networks(surface)
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

local function calc_number_of_aerial_turbines_per_network(surface_index, electric_network_id)
    local result = 0
    for _, aerial_data in pairs(global.aerial_data) do
        local acculumator = aerial_data.acculumator
        if acculumator.valid and acculumator.surface_index == surface_index and acculumator.electric_network_id == electric_network_id then
            result = result + 1
        end
    end
    return result
end

local function calc_number_of_electric_poles_per_network(surface_index, electric_network_id)
    local per_surface = global.electric_networks[surface_index]
    if not per_surface then return 0 end
    local all_poles = per_surface[electric_network_id]
    if not all_poles then return 0 end
    return #all_poles
end

Aerial.events.on_built = function(event)
    local entity = event.created_entity or event.entity
    if not entity.valid or not entity.unit_number then return end
    if energy_per_distance[entity.name] then
        local unit_number = entity.unit_number
        local acculumator = create_interface(entity)

        local tags = event.tags
        if not tags then
            local stack = event.stack
            if stack then
                tags = stack.tags
            end
        end

        local aerial_data = {
            acculumator = acculumator,
            entity = entity,
            zoop = true,
            lifetime_generation = tags.lifetime_generation or 0
        }
        global.aerial_data[unit_number] = aerial_data

        local fail_msg = false
        if not acculumator.is_connected_to_electric_network() then
            fail_msg = {'aerial-gui.must-be-placed-in-electric-network'}
        else
            local surface_index = entity.surface_index
            local electric_network_id = acculumator.electric_network_id
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

        find_target(aerial_data)
    elseif entity.type == 'electric-pole' then
        refresh_electric_networks(entity.surface)
    end
end

Aerial.events.on_destroyed = function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then return end
    local aerial_data = global.aerial_data[entity.unit_number]
    if aerial_data then
        local acculumator = aerial_data.acculumator
        if acculumator.valid then acculumator.destroy() end
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
    elseif entity.type == 'electric-pole' then
        global.surfaces_to_refresh[entity.surface.index] = true
    end
end

Aerial.events.on_ai_command_completed = function(event)
    local aerial_data = global.aerial_data[event.unit_number]
    if not aerial_data then return end
    find_target(aerial_data)
end

Aerial.events.on_open_gui = function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    if not (entity and entity.valid and entity.unit_number) then return end
    local aerial_data = global.aerial_data[entity.unit_number]
    if not aerial_data then return end
    if player.opened then
        player.opened.destroy()
    end

    local main_frame = player.gui.screen.add{
        type = 'frame',
        name = 'aerial_gui',
        caption = entity.prototype.localised_name,
        direction = 'vertical'
    }
    main_frame.style.width = 436
    main_frame.tags = {unit_number = entity.unit_number}
    main_frame.auto_center = true
    player.opened = main_frame

    local content_frame = main_frame.add{type = 'frame', name = 'content_frame', direction = 'vertical', style = 'inside_shallow_frame_with_padding'}
	content_frame.style.vertically_stretchable = true
	local content_flow = content_frame.add{type = 'flow', name = 'content_flow', direction = 'vertical'}
	content_flow.style.vertical_spacing = 8
	content_flow.style.margin = {-4, 0, -4, 0}
	content_flow.style.vertical_align = 'center'

    content_flow.add{type = 'progressbar', name = 'progressbar', style = 'electric_satisfaction_statistics_progressbar'}.style.horizontally_stretchable = true

    local camera_frame = content_flow.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = entity.position, surface_index = entity.surface_index}
	camera.visible = true
    camera.entity = entity
	camera.style.height = 180
	camera.zoom = 0.7

	content_flow.add{type = 'label', name = 'distance_bonus'}
    content_flow.add{type = 'label', name = 'lifetime_generation'}
    content_flow.add{type = 'label', name = 'airspace_traffic_flow'}
    
    Aerial.update_gui(player)
end

Aerial.events.on_gui_closed = function(event)
    local player = game.get_player(event.player_index)
	if (event.gui_type or player.opened_gui_type) == defines.gui_type.custom then
		local gui = player.gui.screen.aerial_gui
		if gui then gui.destroy() end
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
    stored_energy = math.min(stored_energy, max_energy + 1)
    content_flow.progressbar.value = stored_energy / max_energy
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