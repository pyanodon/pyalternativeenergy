local util = require('util')
local farms = require 'scripts/farming'
local events = defines.events

require 'scripts/wiki/text-pages'
require 'scripts/microwave-receiver'
require 'scripts/thermosolar/shared'
require 'scripts/thermosolar/solar-updraft-tower'
require 'scripts/thermosolar/heliostat'
require 'scripts/solar'
require 'scripts/wind/wind'
require 'scripts/aerial'

local function init_globals()
    Solar.events.on_init()
    Microwave_Receiver.events.on_init()
    Thermosolar.events.on_init()
    Wind.events.on_init()
    Wiki.events.on_init()
    Aerial.events.on_init()

    global.reactor_tanks = global.reactor_tanks or {}
    global.lrf_panels = global.lrf_panels or {}
    global.stirling = global.stirling or {}
    for farm, domain in pairs(farms) do
        remote.call('pyfarm', 'register', farm, domain)
    end
end

script.on_init(init_globals)
script.on_configuration_changed(init_globals)

local on_built = {events.on_built_entity, events.on_robot_built_entity, events.script_raised_revive, events.script_raised_built}
script.on_event(on_built, function(event)
    Solar.events.on_built(event)
    Solar_Updraft_Tower.events.on_built(event)
    Microwave_Receiver.events.on_built(event)
    Heliostat.events.on_built(event)
    Wind.events.on_built(event)
    Aerial.events.on_built(event)

    local E = event.created_entity or event.entity
    if not E.valid then return end
    local surface = E.surface

    if string.match(E.name, 'tidal%-placer') then
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
        surface.create_entity{
            name = 'tidal-mk'.. string.match(E.name, '%d+'),
            position = {E.position.x + x, E.position.y + y},
            force = E.force,
            direction = E.direction
        }
        E.destroy()
    elseif string.match(E.name, 'lrf%-panel') ~= nil then
        global.lrf_panels[E.unit_number] = E
    elseif E.name == 'stirling-concentrator' then
        global.stirling[E.unit_number] = E
    end
end)

script.on_nth_tick(60, function(event)
    Solar_Updraft_Tower.events[60]()
    Heliostat.events[60]()
end)

script.on_nth_tick(55, function(event)
    local active = Thermosolar.calc_daylight(game.surfaces['nauvis']) > 0.5
    for _, panel in pairs(global.lrf_panels) do
        if panel.valid then panel.active = active end
    end
    for _, panel in pairs(global.stirling) do
        if panel.valid then panel.active = active end
    end
end)

script.on_nth_tick(100, Solar.events[100])
script.on_nth_tick(61, Wind.events[61])

local on_destroyed = {events.on_player_mined_entity, events.on_robot_mined_entity, events.script_raised_destroy, events.on_entity_died}
script.on_event(on_destroyed, function(event)
    Solar.events.on_destroyed(event)
    Microwave_Receiver.events.on_destroyed(event)
    Solar_Updraft_Tower.events.on_destroyed(event)
    Heliostat.events.on_destroyed(event)
    Wind.events.on_destroyed(event)
    Aerial.events.on_destroyed(event)

    local E = event.entity
    if not E.valid or not E.unit_number then return end
    if string.match(E.name, 'lrf%-panel') ~= nil then
        global.lrf_panels[E.unit_number] = nil
    elseif E.name == 'stirling-concentrator' then
        global.stirling[E.unit_number] = nil
    end
end)

script.on_event(events.on_gui_opened, function(event)
    Microwave_Receiver.events.on_gui_opened(event)
    Solar_Updraft_Tower.events.on_gui_opened(event)
    Heliostat.events.on_gui_opened(event)
end)

script.on_event({events.on_gui_closed, events.on_player_changed_surface}, function(event)
    Microwave_Receiver.events.on_gui_closed(event)
    Solar_Updraft_Tower.events.on_gui_closed(event)
    Heliostat.events.on_gui_closed(event)
    Aerial.events.on_gui_closed(event)
end)

script.on_event(events.on_rocket_launched, Microwave_Receiver.events.on_rocket_launched)
local on_built_tile = {events.on_player_built_tile, events.on_robot_built_tile}
script.on_event(on_built_tile, Solar_Updraft_Tower.events.on_build_tile)
local on_mined_tile = {events.on_player_mined_tile, events.on_robot_mined_tile}
script.on_event(on_mined_tile, Solar_Updraft_Tower.events.on_destroyed_tile)
script.on_event(events.on_player_cursor_stack_changed, Thermosolar.events.on_player_cursor_stack_changed)
script.on_event(events.on_ai_command_completed, Aerial.events.on_ai_command_completed)
script.on_event(defines.events.on_script_trigger_effect, Wind.events.on_script_trigger_effect)
script.on_nth_tick(117, Aerial.events[117])
script.on_nth_tick(116, Aerial.events[116])
script.on_event('open-gui', Aerial.events.on_open_gui)

script.on_nth_tick(9, function()
    for _, player in pairs(game.connected_players) do
		local gui = player.gui.screen.aerial_gui
		if gui then Aerial.update_gui(gui) end
	end
end)