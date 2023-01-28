local util = require('util')

require 'scripts/wiki/text-pages'
require 'scripts/microwave-receiver'
require 'scripts/thermosolar/shared'
require 'scripts/thermosolar/solar-updraft-tower'
require 'scripts/thermosolar/heliostat'
require 'scripts/solar'
require 'scripts/wind/wind'

local function init_globals()
    Solar.events.on_init()
    Microwave_Receiver.events.on_init()
    Thermosolar.events.on_init()
    Wind.events.on_init()
    Wiki.events.on_init()

    global.reactor_tanks = global.reactor_tanks or {}
    global.lrf_panels = global.lrf_panels or {}
    global.stirling = global.stirling or {}
end

script.on_init(init_globals)
script.on_configuration_changed(init_globals)

local on_built = {defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.script_raised_revive, defines.events.script_raised_built}
script.on_event(on_built, function(event)
    Solar.events.on_built(event)
    Solar_Updraft_Tower.events.on_built(event)
    Microwave_Receiver.events.on_built(event)
    Heliostat.events.on_built(event)
    Wind.events.on_built(event)

    local E = event.created_entity or event.entity
    if not E.valid then return end
    local surface = E.surface

    if E.name == 'nuke-tank-input' then
        local out1 = surface.create_entity{
            name = 'nuke-tank-output',
            position = {E.position.x + 6, E.position.y},
            force = game.players.force
        }
        local out2 = surface.create_entity{
            name = 'nuke-tank-output',
            position = {E.position.x + 6, E.position.y + 6},
            force = game.players.force
        }
        local in2 = surface.create_entity{
            name = 'nuke-tank-input',
            position = {E.position.x, E.position.y + 6},
            force = game.players.force
        }
        --[[
        local moderator = surface.create_entity{
            name = 'control-rod',
            position = {E.position.x + 3, E.position.y + 6},
            force = game.players.force
        }
        ]] --
        global.reactor_tanks[E.unit_number] = {
            input_tank = E,
            output_neutron_tank = out2,
            input_neutron_tank = in2,
            dirty_fuel_tank = out1
            -- moderator = moderator
        }
    elseif string.match(E.name, 'tidal%-placer') then
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
    elseif string.match(E.name, 'numal%-reef') and string.match(E.name, 'placer') then
        local direction = E.direction
        local x = 0
        local y = 0
        if direction == defines.direction.north then
            y = -4
        elseif direction == defines.direction.south then
            y = 4
        elseif direction == defines.direction.east then
            x = 4
        elseif direction == defines.direction.west then
            x = -4
        end
        surface.create_entity{
            name = 'numal-reef-mk' .. string.match(E.name, '%d+'),
            position = {E.position.x + x, E.position.y + y},
            force = E.force,
            direction = E.direction,
            raise_built = true
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

local on_destroyed = {defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.script_raised_destroy, defines.events.on_entity_died}
script.on_event(on_destroyed, function(event)
    Solar.events.on_destroyed(event)
    Microwave_Receiver.events.on_destroyed(event)
    Solar_Updraft_Tower.events.on_destroyed(event)
    Heliostat.events.on_destroyed(event)
    Wind.events.on_destroyed(event)

    local E = event.entity
    if string.match(E.name, 'lrf%-panel') ~= nil then
        global.lrf_panels[E.unit_number] = nil
    elseif E.name == 'stirling-concentrator' then
        global.stirling[E.unit_number] = nil
    end
end)

script.on_event(defines.events.on_gui_opened, function(event)
    Microwave_Receiver.events.on_gui_opened(event)
    Solar_Updraft_Tower.events.on_gui_opened(event)
    Heliostat.events.on_gui_opened(event)
end)

script.on_event(defines.events.on_gui_elem_changed, function(event)

end)

script.on_event(defines.events.on_rocket_launched, function(event)
    Microwave_Receiver.events.on_rocket_launched(event)
end)

script.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    Microwave_Receiver.events.on_gui_closed(event)
    Solar_Updraft_Tower.events.on_gui_closed(event)
    Heliostat.events.on_gui_closed(event)
end)

script.on_event({defines.events.on_player_built_tile, defines.events.on_robot_built_tile}, function(event)
    Solar_Updraft_Tower.events.on_build_tile(event)
end)

script.on_event({defines.events.on_player_mined_tile, defines.events.on_robot_mined_tile}, function(event)
    Solar_Updraft_Tower.events.on_destroyed_tile(event)
end)

script.on_event(defines.events.on_player_cursor_stack_changed, function(event)
    Thermosolar.events.on_player_cursor_stack_changed(event)
end)