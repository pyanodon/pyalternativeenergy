local util = require('util')

local si_prefixes = {
    [0] = '',
    'si-prefix-symbol-kilo',
    'si-prefix-symbol-mega',
    'si-prefix-symbol-giga',
    'si-prefix-symbol-tera',
    'si-prefix-symbol-peta',
    'si-prefix-symbol-exa',
    'si-prefix-symbol-zetta',
    'si-prefix-symbol-yotta'
}
function _G.format_energy(energy, watts_or_joules)
	if watts_or_joules == 'W' then
        watts_or_joules = 'si-unit-symbol-watt'
        energy = energy * 60
    elseif watts_or_joules == 'J' then
        watts_or_joules = 'si-unit-symbol-joule'
    else
        error()
    end

    local prefix = 0
	while energy >= 1000 do
        energy = energy / 1000
        prefix = prefix + 1
    end
	return {'' , string.format('%.2f', energy), ' ', {si_prefixes[prefix]}, {watts_or_joules}}
end

_G.gui_events = {
	[defines.events.on_gui_click] = {},
	[defines.events.on_gui_confirmed] = {},
	[defines.events.on_gui_text_changed] = {},
	[defines.events.on_gui_checked_state_changed] = {},
	[defines.events.on_gui_selection_state_changed] = {},
	[defines.events.on_gui_checked_state_changed] = {},
	[defines.events.on_gui_elem_changed] = {},
	[defines.events.on_gui_value_changed] = {},
	[defines.events.on_gui_location_changed] = {},
	[defines.events.on_gui_selected_tab_changed] = {},
	[defines.events.on_gui_switch_state_changed] = {}
}
local function process_gui_event(event)
	if event.element and event.element.valid then
		for pattern, f in pairs(gui_events[event.name]) do
			if event.element.name:match(pattern) then f(event); return end
		end
	end
end

require 'scripts/microwave-receiver'
require 'scripts/thermosolar/shared'
require 'scripts/thermosolar/solar-updraft-tower'
require 'scripts/thermosolar/heliostat'

local function init_globals()
    Microwave_Receiver.events.on_init()
    Thermosolar.events.on_init()

    global.windmills = global.windmills or {}
    global.reactor_tanks = global.reactor_tanks or {}
    global.currently_selected_entity = global.currently_selected_entity or {}
    global.solar_panels = global.solar_panels or {}
    global.antisolar_panels = global.antisolar_panels or {}
    global.lrf_panels = global.lrf_panels or {}
    global.stirling = global.stirling or {}
end

script.on_init(init_globals)
script.on_configuration_changed(init_globals)

local function distance(x1, y1, x2, y2)
    local dx = x1 - x2
    local dy = y1 - y2
    return math.sqrt(dx * dx + dy * dy)
end

local on_built = {defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.script_raised_revive, defines.events.script_raised_built}
script.on_event(on_built, function(event)
    Solar_Updraft_Tower.events.on_built(event)
    Microwave_Receiver.events.on_built(event)
    Heliostat.events.on_built(event)

    local E = event.created_entity or event.entity
    if not E.valid then return end

    if E.type == 'electric-energy-interface' then
        local turbine_type, mk = string.match(E.name, ('(%a+)%-turbine%-(mk%d+)'))
        if turbine_type ~= nil then
            local base_name = turbine_type .. '-turbine-' .. mk
            -- Create wind collision boxes for vawt,hawt,multiblade
            game.surfaces[E.surface.name].create_entity{
                name = base_name .. '-collision',
                position = E.position,
                force = E.force,
                create_build_effect_smoke = false,
            }

            if turbine_type == "multiblade" or turbine_type == "hawt" then
                --log(HE.name)
                local ani = rendering.draw_animation{
                    animation = base_name .. '-north',
                    surface = 'nauvis',
                    target = E,
                    render_layer = 129
                }
                global.windmills[E.unit_number] = {windmill = E, animation = ani, max_power = 50, base_name = base_name}
                -- log(serpent.block(global.windmills))
            end
        end
    end

    if E.name == 'nuke-tank-input' then
        local out1 = game.surfaces['nauvis'].create_entity{
            name = 'nuke-tank-output',
            position = {E.position.x + 6, E.position.y},
            force = game.players.force
        }
        local out2 = game.surfaces['nauvis'].create_entity{
            name = 'nuke-tank-output',
            position = {E.position.x + 6, E.position.y + 6},
            force = game.players.force
        }
        local in2 = game.surfaces['nauvis'].create_entity{
            name = 'nuke-tank-input',
            position = {E.position.x, E.position.y + 6},
            force = game.players.force
        }
        --[[
        local moderator = game.surfaces['nauvis'].create_entity{
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
        --log(serpent.block(global.reactor_tanks))
    elseif string.match(E.name, 'tidal%-placer') then
      --log("hit")
        local direction = E.direction
        local x = 0
        local y = 0
        if direction == defines.direction.north then
            --log('hit')
            y = -2
        elseif direction == defines.direction.south then
            --log('hit')
            y = 2
        elseif direction == defines.direction.east then
            --log('hit')
            x = 1
        elseif direction == defines.direction.west then
            --log('hit')
            x = -1
        end
        game.surfaces[E.surface.name].create_entity{
            name = 'tidal-mk'.. string.match(E.name, '%d+'),
            position = {E.position.x + x, E.position.y + y},
            force = E.force,
            direction = E.direction
        }
        E.destroy()
    elseif string.match(E.name, "numal%-reef") and string.match(E.name, "placer") then
        local direction = E.direction
        local x = 0
        local y = 0
        if direction == defines.direction.north then
            --log('hit')
            y = -4
        elseif direction == defines.direction.south then
            --log('hit')
            y = 4
        elseif direction == defines.direction.east then
            --log('hit')
            x = 4
        elseif direction == defines.direction.west then
            --log('hit')
            x = -4
        end
        game.surfaces[E.surface.name].create_entity{
            name = 'numal-reef-mk' .. string.match(E.name, '%d+'),
            position = {E.position.x + x, E.position.y + y},
            force = E.force,
            direction = E.direction,
            raise_built = true
        }
        E.destroy()
    elseif E.name == 'anti-solar' then
        global.antisolar_panels[E.unit_number] = E
    elseif string.match(E.name, "lrf%-panel") ~= nil then
        --log('hit')
        global.lrf_panels[E.unit_number] = E
    elseif E.name == "stirling-concentrator" then
        global.stirling[E.unit_number] = E
    end
end)

local function draw_windmill(direction)
    for m, mill in pairs(global.windmills) do
        rendering.destroy(mill.animation)
        local ani = rendering.draw_animation{
            animation = mill.base_name .. direction,
            surface = 'nauvis',
            target = mill.windmill,
            render_layer = 129
        }
        mill.animation = ani
    end
end

script.on_nth_tick(60, function(event)
    Solar_Updraft_Tower.events[60]()
    Heliostat.events[60]()

    local wind_dir = game.surfaces['nauvis'].wind_orientation
    -- log(wind_dir)
    local dir = ''
    if wind_dir > 0.9375 and wind_dir <= 0.0625 then
        dir = '-north'
        draw_windmill(dir)
    elseif wind_dir > 0.0625 and wind_dir <= 0.1875 then
        dir = '-northeast'
        draw_windmill(dir)
    elseif wind_dir > 0.1875 and wind_dir <= 0.3125 then
        dir = '-east'
        draw_windmill(dir)
    elseif wind_dir > 0.3125 and wind_dir <= 0.4375 then
        dir = '-southeast'
        draw_windmill(dir)
    elseif wind_dir > 0.4375 and wind_dir <= 0.5625 then
        dir = '-south'
        draw_windmill(dir)
    elseif wind_dir > 0.5625 and wind_dir <= 0.6875 then
        dir = '-southwest'
        draw_windmill(dir)
    elseif wind_dir > 0.6875 and wind_dir <= 0.8125 then
        dir = '-west'
        draw_windmill(dir)
    elseif wind_dir > 0.8125 and wind_dir <= 0.9375 then
        dir = '-northwest'
        draw_windmill(dir)
    end
end)

script.on_nth_tick(55, function(event)
    --log('hit')
    if game.surfaces['nauvis'].daytime >= 0.25 and game.surfaces['nauvis'].daytime < 0.75 then
        --log('hit')
        for p, panel in pairs(global.lrf_panels) do
            if panel.valid == true then
                panel.active = false
            end
        end
        for a,anti in pairs(global.antisolar_panels) do
            if anti.valid == true then
                anti.active = true
            end
        end
        for p,panel in pairs(global.stirling) do
            if panel.valid == true then
                panel.active = false
            end
        end
        for e, entity in pairs(global.solar_tower) do
            if entity.tower.valid == true then
                entity.tower.active = false
            end
        end
    else
        --log('hit')
        for p, panel in pairs(global.lrf_panels) do
            if panel.valid == true then
                panel.active = true
            elseif panel.valid == false then
                panel = nil
            end
        end
        for a,anti in pairs(global.antisolar_panels) do
            if anti.valid == true then
                anti.active = false
            end
        end
        for p,panel in pairs(global.stirling) do
            if panel.valid == true then
                panel.active = true
            end
        end
        for e, entity in pairs(global.solar_tower) do
            if entity.tower.valid == true then
                entity.tower.active = true
            end
        end
    end
end)

local on_destroyed = {defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.script_raised_destroy, defines.events.on_entity_died}
script.on_event(on_destroyed, function(event)
    Microwave_Receiver.events.on_destroyed(event)
    Solar_Updraft_Tower.events.on_destroyed(event)
    Heliostat.events.on_destroyed(event)

    local E = event.entity
    if E.type == 'electric-energy-interface' then
        local turbine_type, mk = string.match(E.name, ('(%a+)%-turbine%-(mk%d+)'))
        if turbine_type ~= nil then
            local base_name = turbine_type .. '-turbine-' .. mk
            local collisions = game.surfaces[E.surface.name].find_entities_filtered{
                name = base_name .. "-collision",
                position = E.position,
            }
            for _, collision_entity in pairs(collisions) do
                if collision_entity.valid then collision_entity.destroy() end
            end
            if turbine_type == "multiblade" or turbine_type == "hawt" then
                --log('hit')
                local mill = global.windmills[E.unit_number]
                rendering.destroy(mill.animation)
                global.windmills[E.unit_number] = nil
            end
        end
    end
    if string.match(E.name, "lrf%-panel") ~= nil then
        global.lrf_panels[E.unit_number] = nil
    elseif E.name == 'anti-solar' then
        global.antisolar_panels[E.unit_number] = nil
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