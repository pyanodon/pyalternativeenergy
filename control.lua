require "__pypostprocessing__.lib"

local farms = require "scripts/farming"
local events = defines.events

require "scripts/wiki/text-pages"
require "scripts/microwave-receiver"
require "scripts/thermosolar/shared"
require "scripts/thermosolar/solar-updraft-tower"
require "scripts/thermosolar/heliostat"
require "scripts/solar"
require "scripts/wind/wind"
require "scripts/aerial"
require "scripts/hydro"

py.on_event(py.events.on_init(), function()
    storage.reactor_tanks = storage.reactor_tanks or {}
    storage.lrf_panels = storage.lrf_panels or {}
    storage.stirling = storage.stirling or {}
    for farm, domain in pairs(farms) do
        remote.call("pyfarm", "register", farm, domain)
    end
end)

py.on_event(py.events.on_built(), function(event)
    Solar.events.on_built(event)
    Microwave_Receiver.events.on_built(event)
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

py.register_on_nth_tick(55, "thermosolar", "pyae", function(event)
    local active = Thermosolar.calc_daylight(game.surfaces["nauvis"]) > 0.5
    for _, panel in pairs(storage.lrf_panels) do
        if panel.valid then panel.active = active end
    end
    for _, panel in pairs(storage.stirling) do
        if panel.valid then panel.active = active end
    end
end)

py.register_on_nth_tick(100, "solar", "pyae", Solar.events[100])
py.register_on_nth_tick(61, "wind", "pyae", Wind.events[61])

py.on_event(py.events.on_destroyed(), function(event)
    Solar.events.on_destroyed(event)
    Microwave_Receiver.events.on_destroyed(event)
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

py.on_event(events.on_gui_opened, function(event)
    Microwave_Receiver.events.on_gui_opened(event)
    Heliostat.events.on_gui_opened(event)
end)

py.on_event({events.on_gui_closed, events.on_player_changed_surface}, function(event)
    Microwave_Receiver.events.on_gui_closed(event)
    Heliostat.events.on_gui_closed(event)
    Aerial.events.on_gui_closed(event)
end)

py.on_event(events.on_rocket_launched, Microwave_Receiver.events.on_rocket_launched)
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

remote.add_interface("pyae", {
    ---@param func string
    execute_on_nth_tick = function(func)
        py.mod_nth_tick_funcs[func]()
    end
})

py.finalize_events()
