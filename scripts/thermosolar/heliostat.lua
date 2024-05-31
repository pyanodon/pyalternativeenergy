local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Heliostat = {}
Heliostat.events = {}

Heliostat.max_heliostats = 1926
Heliostat.mk04_turbines_supported_per_maxed_tower = (0.2 * (4 / 1000)) -- MK04 turbines were buffed from 4/s to 1k/s steam usage

function Heliostat.is_heliostat(heliostat)
	return not not (string.match(heliostat.name, 'solar%-tower%-panel%d+'))
end

function Heliostat.find_tower(heliostat)
	return heliostat.surface.find_entities_filtered{name = 'solar-tower-building', force = heliostat.force, radius = Thermosolar.tower_range, limit = 1, position = heliostat.position}[1]
end

local min_void_temp = 0
local max_void_temp = 8333.33333333
function Heliostat.update_power_generation(tower, excluded_heliostat)
    local tower_data = global.heliostat_towers[tower.unit_number]
    if not tower_data then return end

    tower_data.heliostats = 0
	for _, heliostat in pairs(tower.surface.find_entities_filtered{position = tower.position, radius = Thermosolar.tower_range, force = tower.force, type = 'simple-entity-with-owner'}) do
		if heliostat ~= excluded_heliostat and Heliostat.is_heliostat(heliostat) then
			tower_data.heliostats = tower_data.heliostats + 1
			heliostat = Heliostat.rotate_heliostat(heliostat, tower)
		end
	end
    tower_data.max_production = (global.energy_per_heliostat * tower_data.heliostats) * tower.surface.solar_power_multiplier
	tower_data.efficiency = tower_data.heliostats / Heliostat.max_heliostats * tower.surface.solar_power_multiplier
	tower_data.max_salt_production = tower_data.efficiency * 4000

    Heliostat.update_all_guis()
end

function Heliostat.rotate_heliostat(heliostat, tower)
	local sprite_num
	local old_sprite_num = string.match(heliostat.name, 'solar%-tower%-panel(%d+)')
	old_sprite_num = tonumber(old_sprite_num)

	local tower = tower or Heliostat.find_tower(heliostat)
	if not tower then
		sprite_num = 0
	else
		local x, y = (heliostat.position.x - tower.position.x), (heliostat.position.y - tower.position.y)
		local angle = math.atan2(y, x)
		local deg = math.deg(angle)
		if deg < 0 then deg = deg + 360 end
		sprite_num = math.floor(deg / 11.25)
	end

	if sprite_num == old_sprite_num then return heliostat end

	local rotated = heliostat.surface.create_entity{
		name = 'solar-tower-panel' .. sprite_num,
		position = heliostat.position,
		force = heliostat.force
	}
	heliostat.destroy()
	return rotated
end

Heliostat.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if not entity.valid then return end

	if Heliostat.is_heliostat(entity) then
		entity = Heliostat.rotate_heliostat(entity)
		local tower = Heliostat.find_tower(entity)
		if tower then Heliostat.update_power_generation(tower) end
	elseif entity.name == 'solar-tower-building' then
		local placement_restriction = entity.surface.create_entity{name = 'sut-placement-distance', position = entity.position, force = entity.force}
		placement_restriction.destructible = false
		global.heliostat_towers[entity.unit_number] = {entity = entity, unit_number = entity.unit_number, placement_restriction = placement_restriction, heliostats = 0}
		Heliostat.update_power_generation(entity)
		global.update_heliostat_guis = true
	end
end

Heliostat.events.on_destroyed = function(event)
    local entity = event.entity

	if Heliostat.is_heliostat(entity) then
		local tower = Heliostat.find_tower(entity)
		if tower then Heliostat.update_power_generation(tower, entity) end
		return
	end

    local tower_data = global.heliostat_towers[entity.unit_number]
    if not tower_data then return end
    if tower_data.placement_restriction.valid then tower_data.placement_restriction.destroy() end
    global.heliostat_towers[entity.unit_number] = nil
    global.update_heliostat_guis = not not next(global.heliostat_towers)
end

Heliostat.events.on_gui_opened = function(event)
	local player = game.get_player(event.player_index)
	local entity = event.entity
	if event.gui_type ~= defines.gui_type.entity or not entity or entity.name ~= 'solar-tower-building' then return end

	if player.gui.screen.heliostat_gui then player.gui.screen.heliostat_gui.destroy() end
	local main_frame = player.gui.screen.add{type = 'frame', name = 'heliostat_gui', caption = entity.prototype.localised_name, direction = 'vertical'}
	main_frame.tags = {unit_number = entity.unit_number}
	main_frame.auto_center = true
    main_frame.style.vertically_stretchable = true
	player.opened = main_frame

	local content_frame = main_frame.add{type = 'frame', name = 'content_frame', style = 'inside_shallow_frame_with_padding'}

    local camera_frame = content_frame.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = {entity.position.x, entity.position.y - 10}, surface_index = entity.surface.index}
	camera.visible = true
	camera.style.height = 380
	camera.style.width = 200
	camera.zoom = 0.36

	local content_flow = content_frame.add{type = 'flow', name = 'content_flow', direction = 'vertical'}
	content_flow.style.vertical_spacing = 8
    content_flow.style.left_margin = 4
	content_flow.style.vertical_align = 'center'
	content_flow.style.width = 260

	content_flow.add{type = 'progressbar', name = 'progressbar', style = 'electric_satisfaction_statistics_progressbar'}.style.horizontally_stretchable = true

	content_flow.add{type = 'line'}

	content_flow.add{type = 'label', name = 'total_heliostats'}
	content_flow.add{type = 'label', name = 'average_generation'}
	content_flow.add{type = 'label', name = 'effective_generation'}
	content_flow.add{type = 'label', name = 'daylight'}
	content_flow.add{type = 'label', caption = {'heliostat-gui.range', Thermosolar.tower_range}}
	content_flow.add{type = 'label', caption = {'heliostat-gui.energy-per-heliostat', FUN.format_energy(global.energy_per_heliostat, 'W')}}
	content_flow.add{type = 'label', caption = {'heliostat-gui.target-temperature'}}

	Heliostat.update_gui(main_frame)
end

Heliostat.events.on_gui_closed = function(event)
	local player = game.get_player(event.player_index)
	if (event.gui_type or player.opened_gui_type) == defines.gui_type.custom then
		local gui = player.gui.screen.heliostat_gui
		if gui then gui.destroy() end
	end
end

function Heliostat.update_gui(gui)
	local tower_data = global.heliostat_towers[gui.tags.unit_number]
	if not tower_data then gui.destroy(); return end
	local content_flow = gui.content_frame.content_flow
    local surface = tower_data.entity.surface
    local daylight = Thermosolar.calc_daylight(surface)

	content_flow.progressbar.value = daylight
	content_flow.progressbar.caption = {'heliostat-gui.salt-generation', math.floor(tower_data.max_salt_production * daylight), math.floor(tower_data.max_salt_production)}
    content_flow.total_heliostats.caption = {'heliostat-gui.total-heliostats', tower_data.heliostats}
    content_flow.average_generation.caption = {'heliostat-gui.average-generation', math.floor(tower_data.max_salt_production * Thermosolar.calc_average_daylight(surface))}
    content_flow.effective_generation.caption = {'heliostat-gui.effective-generation', FUN.format_energy(tower_data.max_production * daylight, 'W'), FUN.format_energy(tower_data.max_production, 'W')}
    content_flow.daylight.caption = {'sut-gui.daylight', math.floor(daylight * 100)}
end

script.on_event('open-gui', function(event)
	local player = game.players[event.player_index]
	if player.cursor_stack and player.cursor_stack.valid_for_read then return end
	local entity = player.selected
	if not entity or not Heliostat.is_heliostat(entity) then return end
	local tower = Heliostat.find_tower(entity)
	if tower then player.opened = tower end
end)

Heliostat.events[60] = function()
	for _, tower_data in pairs(global.heliostat_towers) do
		if tower_data.heliostats ~= 0 then
			local tower = tower_data.entity
			local daylight = Thermosolar.calc_daylight(tower.surface)
			if daylight ~= 0 then
				local target_temperature = (tower_data.efficiency * daylight) * (max_void_temp - min_void_temp)
				target_temperature = math.min(max_void_temp, math.max(min_void_temp, target_temperature + min_void_temp))
				tower.fluidbox[3] = {name = 'void', amount = 61, temperature = target_temperature}
			end
		end
	end

	if global.update_heliostat_guis then
		Heliostat.update_all_guis()
	end
end

function Heliostat.update_all_guis()
    for _, player in pairs(game.connected_players) do
        local gui = player.gui.screen.heliostat_gui
        if gui then Heliostat.update_gui(gui) end
    end
end