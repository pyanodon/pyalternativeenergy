local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Solar_Updraft_Tower = {}
Solar_Updraft_Tower.events = {}

Solar_Updraft_Tower.power_generated_per_cover = 16000/3

function Solar_Updraft_Tower.update_power_generation(tower)
    if not tower then
        for _, tower_data in pairs(global.solar_updraft_towers) do
            Solar_Updraft_Tower.update_power_generation(tower_data.entity)
        end
        return
    end

    local tower_data = global.solar_updraft_towers[tower.unit_number]
    if not tower_data then return end

    tower_data.glass_covers = tower.surface.count_tiles_filtered{position = tower.position, radius = Thermosolar.tower_range, name = 'sut-panel'}
    tower_data.max_production = (tower_data.glass_covers * Solar_Updraft_Tower.power_generated_per_cover + tower.prototype.max_energy_production) * tower.surface.solar_power_multiplier
    tower.power_production = tower_data.max_production * Thermosolar.calc_daylight(tower.surface)
	tower.electric_buffer_size = tower.power_production

    Solar_Updraft_Tower.update_all_guis()
end

function Solar_Updraft_Tower.break_glass_cover(tile)
    local x, y = tile.position.x, tile.position.y

    local row = global.glass_covers[x]
    if row and row[y] then
        rendering.destroy(row[y].sprite)
        row[y] = nil
        if not next(row) then
            global.glass_covers[x] = nil
        end
    end
end

Solar_Updraft_Tower.events.on_build_tile = function(event)
    local surface = game.surfaces[event.surface_index]
    local broken_glass = event.tile.name == 'sut-panel'
	for _, tile in pairs(event.tiles) do
        if tile.old_tile.name == 'sut-panel' then
            Solar_Updraft_Tower.break_glass_cover(tile)
            broken_glass = true
        end
        if event.tile.name ~= 'sut-panel' then goto continue end

        local x, y = tile.position.x, tile.position.y

        local a, b = math.floor(x / 2), y
        a = a * (-1) ^ math.floor(a / 30)
        b = b * (-1) ^ math.floor(b / 30)
        local sprite_num = (a + b) % 60 + 1

        if sprite_num >= 30 then
            sprite_num = 90 - sprite_num
        else
            sprite_num = 31 - sprite_num
        end

        local sprite = rendering.draw_sprite{
            sprite = 'sut-panel-' .. sprite_num,
            render_layer = 136,
            surface = surface,
            target = tile.position
        }

        global.glass_covers[x] = global.glass_covers[x] or {}
        global.glass_covers[x][y] = {position = tile.position, sprite = sprite}

        ::continue::
	end

    if broken_glass then
        Solar_Updraft_Tower.update_power_generation()
    end
end

Solar_Updraft_Tower.events.on_destroyed_tile = function(event)
    local broken_glass = false
    for _, tile in pairs(event.tiles) do
        if tile.old_tile.name == 'sut-panel' then
            Solar_Updraft_Tower.break_glass_cover(tile)
            broken_glass = true
        end
    end

    if broken_glass then
        Solar_Updraft_Tower.update_power_generation()
    end
end

Solar_Updraft_Tower.events.on_built = function(event)
    local entity = event.created_entity or event.entity
    if entity.name ~= 'sut' then return end
    local surface = entity.surface

    rendering.draw_animation{
        animation = 'sut-panel-base',
        render_layer = 'floor',
        target = entity,
        surface = surface
    }

    local placement_restriction = surface.create_entity{name = 'sut-placement-distance', position = entity.position, force = entity.force}
    placement_restriction.destructible = false
    global.solar_updraft_towers[entity.unit_number] = {unit_number = entity.unit_number, entity = entity, placement_restriction = placement_restriction, glass_covers = 0}
    Solar_Updraft_Tower.update_power_generation(entity)
    global.update_sut_guis = true
end

Solar_Updraft_Tower.events[60] = function()
    for _, tower_data in pairs(global.solar_updraft_towers) do
        local entity = tower_data.entity
        local surface = entity.surface
        local activity = Thermosolar.calc_daylight(surface)

        if activity == 0 then
            entity.active = false
        else
            entity.active = true
            local smokestack = activity == 1 and 'sut-smokestack' or 'sut-smokestack-weak'
            surface.create_entity{name = smokestack, position = {entity.position.x, entity.position.y - 28}}
        end

        entity.power_production = tower_data.max_production * activity
	    entity.electric_buffer_size = entity.power_production
    end

    if global.update_sut_guis then
        Solar_Updraft_Tower.update_all_guis()
    end
end

Solar_Updraft_Tower.events.on_destroyed = function(event)
    local entity = event.entity
    local tower_data = global.solar_updraft_towers[entity.unit_number]
    if not tower_data then return end
    if tower_data.placement_restriction.valid then tower_data.placement_restriction.destroy() end
    global.solar_updraft_towers[entity.unit_number] = nil
    global.update_sut_guis = not not next(global.solar_updraft_towers)
end

Solar_Updraft_Tower.events.on_gui_opened = function(event)
	local player = game.get_player(event.player_index)
	local entity = event.entity
	if event.gui_type ~= defines.gui_type.entity or entity.name ~= 'sut' then return end

	local main_frame = player.gui.screen.add{type = 'frame', name = 'sut_gui', caption = entity.prototype.localised_name, direction = 'vertical'}
	main_frame.tags = {unit_number = entity.unit_number}
	main_frame.auto_center = true
    main_frame.style.vertically_stretchable = true
	player.opened = main_frame

	local content_frame = main_frame.add{type = 'frame', name = 'content_frame', style = 'inside_shallow_frame_with_padding'}

    local camera_frame = content_frame.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = {entity.position.x, entity.position.y - 9}, surface_index = entity.surface.index}
	camera.visible = true
	camera.style.height = 420
	camera.style.width = 200
	camera.zoom = 0.4

	local content_flow = content_frame.add{type = 'flow', name = 'content_flow', direction = 'vertical'}
	content_flow.style.vertical_spacing = 8
    content_flow.style.left_margin = 4
	content_flow.style.vertical_align = 'center'
	content_flow.style.width = 220

	content_flow.add{type = 'progressbar', name = 'progressbar', style = 'electric_satisfaction_statistics_progressbar'}.style.horizontally_stretchable = true

	content_flow.add{type = 'line'}

	content_flow.add{type = 'label', name = 'total_covers'}
	content_flow.add{type = 'label', name = 'average_generation'}
	content_flow.add{type = 'label', name = 'daylight'}
	content_flow.add{type = 'label', caption = {'sut-gui.range', Thermosolar.tower_range}}
	content_flow.add{type = 'label', caption = {'sut-gui.energy-per-cover', FUN.format_energy(Solar_Updraft_Tower.power_generated_per_cover, 'W')}}

	Solar_Updraft_Tower.update_gui(main_frame)
end

Solar_Updraft_Tower.events.on_gui_closed = function(event)
	local player = game.get_player(event.player_index)
	if (event.gui_type or player.opened_gui_type) == defines.gui_type.custom then
		local gui = player.gui.screen.sut_gui
		if gui then gui.destroy() end
	end
end

function Solar_Updraft_Tower.update_gui(gui)
	local tower_data = global.solar_updraft_towers[gui.tags.unit_number]
	if not tower_data then gui.destroy(); return end
	local content_flow = gui.content_frame.content_flow
    local surface = tower_data.entity.surface
    local daylight = Thermosolar.calc_daylight(surface)

	content_flow.progressbar.value = daylight
	content_flow.progressbar.caption = {'sut-gui.energy', FUN.format_energy(tower_data.entity.power_production, 'W'), FUN.format_energy(tower_data.max_production, 'W')}
    content_flow.total_covers.caption = {'sut-gui.total-covers', tower_data.glass_covers}
    content_flow.average_generation.caption = {'sut-gui.average-generation', FUN.format_energy(tower_data.max_production * Thermosolar.calc_average_daylight(surface), 'W')}
    content_flow.daylight.caption = {'sut-gui.daylight', math.floor(daylight * 100)}
end

function Solar_Updraft_Tower.update_all_guis()
    for _, player in pairs(game.connected_players) do
        local gui = player.gui.screen.sut_gui
        if gui then Solar_Updraft_Tower.update_gui(gui) end
    end
end