local MAX_SATELLITES_PER_RECIEVER = 15
local POWER_PRODUCTION_PER_SATELLITE_WATTS = 80000

py.on_event(py.events.on_init(), function()
    storage.microwave_receivers = storage.microwave_receivers or {}
end)

local function get_gui(player)
    return player.gui.screen.microwave_receiver_gui
end

local function update_gui(gui)
    local force = game.forces[gui.tags.force]
    if not force or not force.valid then return end

    local microwave_data = storage.microwave_receivers[gui.tags.unit_number]
    if not microwave_data then
        gui.destroy(); return
    end

    local content_flow = gui.content_frame.content_flow
    content_flow.progressbar.value = microwave_data.allocated_satellites / MAX_SATELLITES_PER_RECIEVER
    content_flow.progressbar.caption = {
        "",
        microwave_data.allocated_satellites .. "/" .. MAX_SATELLITES_PER_RECIEVER,
        "    ",
        py.format_energy(microwave_data.allocated_satellites * POWER_PRODUCTION_PER_SATELLITE_WATTS, "W")
    }
    content_flow.total_launched.caption = { "microwave-receiver-gui.launched-satellites", force.get_item_launched("microwave-satellite") }

    local total_built = 0
    for _, microwave_data in pairs(storage.microwave_receivers) do
        if microwave_data.force == force then total_built = total_built + 1 end
    end
    content_flow.total_built.caption = { "microwave-receiver-gui.total-receivers", total_built }
end

local function create_gui(player, entity)
    -- check for existing ui and delete.
    local old_gui = get_gui(player)
    if old_gui then
        if old_gui.tags.unit_number == entity.unit_number then
            player.opened = old_gui
            return
        else
            old_gui.destroy()
        end
    end

    local main_frame = player.gui.screen.add({ type = "frame", name = "microwave_receiver_gui", caption = entity.prototype.localised_name, direction = "vertical" })
    main_frame.style.width = 340
    main_frame.tags = { unit_number = entity.unit_number, force = player.force.name }
    main_frame.auto_center = true
    player.opened = main_frame

    local content_frame = main_frame.add({ type = "frame", name = "content_frame", direction = "vertical", style = "inside_shallow_frame_with_padding" })
    local content_flow = content_frame.add({ type = "flow", name = "content_flow", direction = "vertical" })
    content_flow.style.vertical_spacing = 8
    content_flow.style.margin = { -4, 0, -4, 0 }
    content_flow.style.vertical_align = "center"

    local status_flow = content_flow.add({ type = "flow", name = "status_flow", direction = "horizontal" })
    status_flow.style.vertical_align = "center"
    local status_sprite = status_flow.add({ type = "sprite", name = "status_sprite" })
    status_sprite.resize_to_sprite = false
    status_sprite.style.size = { 16, 16 }
    status_sprite.sprite = "utility/status_working"
    status_flow.add({ type = "label", name = "status_text" }).caption = { "entity-status.working" }

    local camera_frame = content_flow.add({ type = "frame", name = "camera_frame", style = "py_nice_frame" })
    local camera = camera_frame.add({ type = "camera", name = "camera", style = "py_caravan_camera", position = { entity.position.x, entity.position.y - 2 }, surface_index = entity.surface.index })
    camera.visible = true
    camera.style.height = 180
    camera.zoom = 0.5

    content_flow.add({ type = "progressbar", name = "progressbar", style = "electric_satisfaction_statistics_progressbar" }).style.horizontally_stretchable = true
    content_flow.add({ type = "line" })
    content_flow.add({ type = "label", name = "total_launched" })
    content_flow.add({ type = "label", name = "total_built" })

    update_gui(main_frame)
end

local function recalc_satellite_distribution(force)
    local total_launched = force.get_item_launched("microwave-satellite")
    local total_receivers = 0
    for _, microwave_data in pairs(storage.microwave_receivers) do
        if microwave_data.force == force then total_receivers = total_receivers + 1 end
    end
    local average_satellites = math.min(MAX_SATELLITES_PER_RECIEVER, math.ceil(total_launched / total_receivers))

    for _, microwave_data in pairs(storage.microwave_receivers) do
        if total_launched >= average_satellites then
            microwave_data.allocated_satellites = average_satellites
            total_launched = total_launched - average_satellites
        else
            microwave_data.allocated_satellites = total_launched
            total_launched = 0
        end

        local entity = microwave_data.entity
        entity.power_production = microwave_data.allocated_satellites * POWER_PRODUCTION_PER_SATELLITE_WATTS
        entity.electric_buffer_size = entity.power_production
    end

    for _, player in pairs(game.connected_players) do
        if player.force == force then
            local gui = get_gui(player)
            if gui then update_gui(gui) end
        end
    end
end

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if entity.name ~= "microwave-receiver" then return end
    storage.microwave_receivers[entity.unit_number] = { unit_number = entity.unit_number, entity = entity, allocated_satellites = 0, force = entity.force }
    recalc_satellite_distribution(entity.force)
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if entity.name ~= "microwave-receiver" then return end
    storage.microwave_receivers[entity.unit_number] = nil
    recalc_satellite_distribution(entity.force)
end)

py.on_event(defines.events.on_rocket_launched, function(event)
    recalc_satellite_distribution(event.rocket.force)
end)

py.on_event(py.events.on_entity_clicked(), function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    if not entity or not entity.valid then return end
    if entity.name ~= "microwave-receiver" then return end
    create_gui(player, entity)
end)

py.on_event(defines.events.on_gui_opened, function(event)
    if event.gui_type ~= defines.gui_type.entity then return end
    local player = game.get_player(event.player_index)
    local entity = event.entity
    if not entity or not entity.valid then return end
    if entity.name ~= "microwave-receiver" then return end
    create_gui(player, entity)
end)

py.on_event({ defines.events.on_gui_closed, defines.events.on_player_changed_surface }, function(event)
    local player = game.get_player(event.player_index)
    if (event.gui_type or player.opened_gui_type) == defines.gui_type.custom then
        local gui = get_gui(player)
        if gui then gui.destroy() end
    end
end)
