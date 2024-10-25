local floor = math.floor

Solar_Updraft_Tower = {}
Solar_Updraft_Tower.events = {}

Solar_Updraft_Tower.power_generated_per_cover = 16000 / 3

---returns whether the distance between two positions is greater than the specified circular radius
---@param origin {x:number, y:number}
---@param position {x:number, y:number}
---@param radius number
---@return boolean
local function is_in_radius(origin, position, radius)
    local delta_x = math.abs(origin.x - position.x)
    local delta_y = math.abs(origin.y - position.y)

    if delta_x > radius or delta_y > radius then return false end

    return math.sqrt(delta_x ^ 2 + delta_y ^ 2) < radius
end

---Adds or removes `cover_count` glass covers worth of generation for the tower with a radius covering `position`
---@param position {x: integer, y: integer} the position to check against the radius
---@param cover_count integer the number of glass covers to add or remove from the power generated
local function update_parent_tower(position, cover_count)
    local parent = (storage.solar_updraft_towers[Solar_Updraft_Tower.last_unit or -1] or {}).entity
    -- Check our last-used tower
    if parent and is_in_radius(parent.position, position, Thermosolar.tower_range) then
        goto continue
    else
        parent = nil
    end
    for unit_id, tower_data in pairs(storage.solar_updraft_towers) do
        if is_in_radius(tower_data.entity.position, position, Thermosolar.tower_range) then
            parent = tower_data.entity
            Solar_Updraft_Tower.last_unit = unit_id
            goto continue
        end
    end
    if not parent then return end
    ::continue::
    Solar_Updraft_Tower.update_power_generation(parent, cover_count)
end

---Updates power generation for the tower provided, or all towers if none provided.<br />
---If additional_cover_count is used, the power production is adjusted by that number of additional covers.
---@param tower entity? the tower to update, if <i>nil</i>, all towers are updated
---@param additional_cover_count integer? the amount of covers to add or remove from the power the tower generated. If <i>nil</i>, the radius is searched and the tiles are re-counted
function Solar_Updraft_Tower.update_power_generation(tower, additional_cover_count)
    if not tower then
        for _, tower_data in pairs(storage.solar_updraft_towers) do
            Solar_Updraft_Tower.update_power_generation(tower_data.entity)
        end
        return
    end

    local tower_data = storage.solar_updraft_towers[tower.unit_number]
    if not tower_data then return end

    if additional_cover_count then
        tower_data.glass_covers = tower_data.glass_covers + additional_cover_count
    else
        tower_data.glass_covers = tower.surface.count_tiles_filtered {position = tower.position, radius = Thermosolar.tower_range, name = "sut-panel"}
    end
    tower_data.max_production = (tower_data.glass_covers * Solar_Updraft_Tower.power_generated_per_cover + tower.prototype.get_max_energy_production()) * tower.surface.solar_power_multiplier
    tower.power_production = tower_data.max_production * Thermosolar.calc_daylight(tower.surface)
    tower.electric_buffer_size = tower.power_production

    storage.update_sut_guis = true
end

local function clear_shine_effect(surface, position)
    local x, y = position.x, position.y

    local a, b = floor(x / 2), y
    a = a * (-1) ^ floor(a / 30)
    b = b * (-1) ^ floor(b / 30)
    local sprite_num = (a + b) % 60 + 1

    if sprite_num >= 30 then
        sprite_num = 90 - sprite_num
    else
        sprite_num = 31 - sprite_num
    end

    local proxy = surface.find_entity("sut-panel-" .. sprite_num, position)
    if proxy and proxy.valid then
        proxy.destroy {raise_destroy = true}
    end
end

py.on_event(py.events.on_built_tile(), function(event)
    local surface = game.surfaces[event.surface_index]

    for _, tile in pairs(event.tiles) do
        local position = tile.position

        if tile.old_tile.name == "sut-panel" then
            update_parent_tower(position, -1)
            clear_shine_effect(surface, position)
        end
        if event.tile.name ~= "sut-panel" then goto continue end

        update_parent_tower(position, 1)

        local x, y = position.x, position.y

        local a, b = floor(x / 2), y
        a = a * (-1) ^ floor(a / 30)
        b = b * (-1) ^ floor(b / 30)
        local sprite_num = (a + b) % 60 + 1

        if sprite_num >= 30 then
            sprite_num = 90 - sprite_num
        else
            sprite_num = 31 - sprite_num
        end

        local entity = surface.create_entity {
            name = "sut-panel-" .. sprite_num,
            position = tile.position
        }
        entity.destructible = false
        entity.minable = false

        ::continue::
    end
end)

py.on_event(py.events.on_mined_tile(), function(event)
    local surface = game.surfaces[event.surface_index]
    for _, tile in pairs(event.tiles) do
        if tile.old_tile.name == "sut-panel" then
            local position = tile.position
            update_parent_tower(position, -1)
            clear_shine_effect(surface, position)
        end
    end
end)

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if entity.name ~= "sut" then return end
    local surface = entity.surface

    rendering.draw_animation {
        animation = "sut-panel-base",
        render_layer = "floor",
        target = entity,
        surface = surface
    }

    local placement_restriction = surface.create_entity {name = "sut-placement-distance", position = entity.position, force = entity.force}
    placement_restriction.destructible = false
    storage.solar_updraft_towers[entity.unit_number] = {unit_number = entity.unit_number, entity = entity, placement_restriction = placement_restriction, glass_covers = 0}
    Solar_Updraft_Tower.update_power_generation(entity)
end)

py.register_on_nth_tick(60, "sut", "pyae", function()
    for _, tower_data in pairs(storage.solar_updraft_towers) do
        local entity = tower_data.entity
        local surface = entity.surface
        local activity = Thermosolar.calc_daylight(surface)

        if activity == 0 then
            entity.active = false
        else
            entity.active = true
            local smokestack = activity == 1 and "sut-smokestack" or "sut-smokestack-weak"
            surface.create_entity {name = smokestack, position = {entity.position.x, entity.position.y - 28}}
        end

        entity.power_production = tower_data.max_production * activity
        entity.electric_buffer_size = entity.power_production
    end

    if storage.update_sut_guis then
        Solar_Updraft_Tower.update_all_guis()
    end
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    local tower_data = storage.solar_updraft_towers[entity.unit_number]
    if not tower_data then return end
    if tower_data.placement_restriction.valid then tower_data.placement_restriction.destroy() end
    storage.solar_updraft_towers[entity.unit_number] = nil
    storage.update_sut_guis = not not next(storage.solar_updraft_towers)
end)

py.on_event(defines.events.on_gui_opened, function(event)
    local player = game.get_player(event.player_index)
    local entity = event.entity
    if event.gui_type ~= defines.gui_type.entity or not entity or entity.name ~= "sut" then return end

    if player.gui.screen.sut_gui then player.gui.screen.sut_gui.destroy() end
    local main_frame = player.gui.screen.add {type = "frame", name = "sut_gui", caption = entity.prototype.localised_name, direction = "vertical"}
    main_frame.tags = {unit_number = entity.unit_number}
    main_frame.auto_center = true
    main_frame.style.vertically_stretchable = true
    player.opened = main_frame

    local content_frame = main_frame.add {type = "frame", name = "content_frame", style = "inside_shallow_frame_with_padding"}

    local camera_frame = content_frame.add {type = "frame", name = "camera_frame", style = "py_nice_frame"}
    local camera = camera_frame.add {type = "camera", name = "camera", style = "py_caravan_camera", position = {entity.position.x, entity.position.y - 9}, surface_index = entity.surface.index}
    camera.visible = true
    camera.style.height = 420
    camera.style.width = 200
    camera.zoom = 0.4

    local content_flow = content_frame.add {type = "flow", name = "content_flow", direction = "vertical"}
    content_flow.style.vertical_spacing = 8
    content_flow.style.left_margin = 4
    content_flow.style.vertical_align = "center"
    content_flow.style.width = 220

    content_flow.add {type = "progressbar", name = "progressbar", style = "electric_satisfaction_statistics_progressbar"}.style.horizontally_stretchable = true

    content_flow.add {type = "line"}

    content_flow.add {type = "label", name = "total_covers"}
    content_flow.add {type = "label", name = "average_generation"}
    content_flow.add {type = "label", name = "daylight"}
    content_flow.add {type = "label", caption = {"sut-gui.range", Thermosolar.tower_range}}
    content_flow.add {type = "label", caption = {"sut-gui.energy-per-cover", py.format_energy(Solar_Updraft_Tower.power_generated_per_cover, "W")}}

    Solar_Updraft_Tower.update_gui(main_frame)
end)

py.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    local player = game.get_player(event.player_index)
    if (event.gui_type or player.opened_gui_type) == defines.gui_type.custom then
        local gui = player.gui.screen.sut_gui
        if gui then gui.destroy() end
    end
end)

function Solar_Updraft_Tower.update_gui(gui)
    local tower_data = storage.solar_updraft_towers[gui.tags.unit_number]
    if not tower_data then
        gui.destroy(); return
    end
    local content_flow = gui.content_frame.content_flow
    local surface = tower_data.entity.surface
    local daylight = Thermosolar.calc_daylight(surface)

    content_flow.progressbar.value = daylight
    content_flow.progressbar.caption = {"sut-gui.energy", py.format_energy(tower_data.entity.power_production, "W"), py.format_energy(tower_data.max_production, "W")}
    content_flow.total_covers.caption = {"sut-gui.total-covers", tower_data.glass_covers}
    content_flow.average_generation.caption = {"sut-gui.average-generation", py.format_energy(tower_data.max_production * Thermosolar.calc_average_daylight(surface), "W")}
    content_flow.daylight.caption = {"sut-gui.daylight", floor(daylight * 100)}
end

function Solar_Updraft_Tower.update_all_guis()
    for _, player in pairs(game.connected_players) do
        local gui = player.gui.screen.sut_gui
        if gui then Solar_Updraft_Tower.update_gui(gui) end
    end
end
