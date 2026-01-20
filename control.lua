require "__pypostprocessing__.lib"

local farms = require "scripts/farming"
local events = defines.events

require "scripts/wiki/text-pages"
require "scripts/microwave-receiver"
require "scripts/thermosolar/shared"
require "scripts/thermosolar/solar-updraft-tower"
require "scripts/thermosolar/heliostat"
require "scripts/wind/wind"
require "scripts/aerial"
require "scripts/tidal"

py.on_event(py.events.on_init(), function()
    storage.reactor_tanks = storage.reactor_tanks or {}
    storage.lrf_panels = storage.lrf_panels or {}
    storage.stirling = storage.stirling or {}
    for farm, farm_data in pairs(farms) do
        remote.call("pyfarm", "register", farm, farm_data.domain, farm_data.default_module)
    end
end)

py.on_event(py.events.on_built(), function(event)
    Heliostat.events.on_built(event)
    Wind.events.on_built(event)
    Aerial.events.on_built(event)

    local E = event.entity
    if not E.valid then return end
    local surface = E.surface

    if string.match(E.name, "tidal%-placer") then
        local direction = E.direction
        local x = 0
        local y = 0
        if direction == defines.direction.north then
            y = -2
        elseif direction == defines.direction.south then
            y = 2
        elseif direction == defines.direction.east then
            x = 1
        elseif direction == defines.direction.west then
            x = -1
        end
        surface.create_entity {
            name = "tidal-mk" .. string.match(E.name, "%d+"),
            position = {E.position.x + x, E.position.y + y},
            force = E.force,
            direction = E.direction
        }
        E.destroy()
    elseif string.match(E.name, "lrf%-panel") ~= nil then
        storage.lrf_panels[E.unit_number] = E
    elseif E.name == "stirling-concentrator" then
        storage.stirling[E.unit_number] = E
    end
end)

local REQUIRES_SUNLIGHT = {
    diode = defines.entity_status_diode.red,
    label = {"entity-status.requires-sunlight"}
}

py.register_on_nth_tick(55, "thermosolar", "pyae", function(event)
    local active = Thermosolar.calc_daylight(game.surfaces["nauvis"]) > 0.5 -- TODO: fix for multisurface
    for _, panel in pairs(storage.lrf_panels) do
        if panel.valid then
            panel.active = active
            panel.custom_status = (not active) and REQUIRES_SUNLIGHT or nil
        end
    end
    for _, panel in pairs(storage.stirling) do
        if panel.valid then
            panel.active = active
            panel.custom_status = (not active) and REQUIRES_SUNLIGHT or nil
        end
    end
end)

py.register_on_nth_tick(61, "wind", "pyae", Wind.events[61])

py.on_event(py.events.on_destroyed(), function(event)
    Heliostat.events.on_destroyed(event)
    Wind.events.on_destroyed(event)
    Aerial.events.on_destroyed(event)

    local E = event.entity
    if not E.valid or not E.unit_number then return end
    if string.match(E.name, "lrf%-panel") ~= nil then
        storage.lrf_panels[E.unit_number] = nil
    elseif E.name == "stirling-concentrator" then
        storage.stirling[E.unit_number] = nil
    end
end)

py.on_event(events.on_gui_opened, Heliostat.events.on_gui_opened)

py.on_event({events.on_gui_closed, events.on_player_changed_surface}, function(event)
    Heliostat.events.on_gui_closed(event)
    Aerial.events.on_gui_closed(event)
end)

py.on_event(events.on_player_cursor_stack_changed, Thermosolar.events.on_player_cursor_stack_changed)
py.on_event(events.on_ai_command_completed, Aerial.events.on_ai_command_completed)
py.on_event(defines.events.on_script_trigger_effect, Wind.events.on_script_trigger_effect)
py.register_on_nth_tick(117, "aerial117", "pyae", Aerial.events[117])
py.register_on_nth_tick(301, "aerial301", "pyae", Aerial.events[301])
--1h+1tick
py.register_on_nth_tick(60 * 60 * 60 + 1, "aerialfuckinghuge", "pyae", Aerial.events[60 * 60 * 60 + 1])
py.on_event(py.events.on_entity_clicked(), Aerial.events.on_open_gui)

py.register_on_nth_tick(9, "aerial9", "pyae", function()
    for _, player in pairs(game.connected_players) do
        local gui = player.gui.screen.aerial_gui
        if gui then Aerial.update_gui(gui) end
    end
end)

py.on_event(defines.events.on_tick, function(event)
    local func_list = remote.call("on_nth_tick", "query", "pyae", event.tick)
    for _, func in pairs(func_list) do
        py.mod_nth_tick_funcs[func]()
    end
end)

py.finalize_events()
