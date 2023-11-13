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

	local tick = game.tick
	local last_message = global.last_cancel_creation_message or 0
	if last_message + 60 < tick then
		surface.create_entity{
			name = 'flying-text',
			position = position,
			text = message,
			render_player_index = player_index
		}
		global.last_cancel_creation_message = game.tick
	end
end

local energy_per_distance = {
    ['aerial-blimp-mk01'] = 12000000,
    ['aerial-blimp-mk02'] = 24000000,
    ['aerial-blimp-mk03'] = 36000000,
    ['aerial-blimp-mk04'] = 48000000,
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

    local previous_position = aerial_data.previous_position
    if previous_position then
        local distance = distance(previous_position, entity.position)
        local energy = distance * energy_per_distance[entity.name]
        acculumator.energy = acculumator.energy + energy
    end
    aerial_data.previous_position = entity.position

    local id = (previous_target or acculumator).electric_network_id
    if not id then return end
    local all_poles = (global.electric_networks[surface.index] or {})[id]
    if not all_poles or #all_poles < 2 then return end
    local target
    while not target or target == previous_target do
        target = all_poles[math.random(#all_poles)]
        if not target.valid then
            refresh_electric_networks(surface)
            all_poles = (global.electric_networks[surface.index] or {})[id]
            if not all_poles then return end
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
    if acculumator.electric_network_id ~= target.electric_network_id then
        acculumator.teleport(position)
    end
end

Aerial.events.on_built = function(event)
    local entity = event.created_entity or event.entity
    if not entity.valid or not entity.unit_number then return end
    if energy_per_distance[entity.name] then
        local acculumator = create_interface(entity)
        if not acculumator.is_connected_to_electric_network() then
            acculumator.destroy()
            cancel_creation(entity, event.player_index, {'aerial-gui.must-be-placed-in-electric-network'})
            return
        end

        local aerial_data = {
            acculumator = acculumator,
            entity = entity,
        }   
        global.aerial_data[entity.unit_number] = aerial_data
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
    elseif entity.type == 'electric-pole' then
        global.surfaces_to_refresh[entity.surface.index] = true
    end
end

Aerial.events.on_ai_command_completed = function(event)
    local aerial_data = global.aerial_data[event.unit_number]
    if not aerial_data then return end
    find_target(aerial_data)
end