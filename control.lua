local util = require("util")
--TODO: rewrite microwave sat code to have launched sats added to a pool and the code sorting the sat pool between recivers as seperate functions

script.on_init(function()
    global.windmills = {}
    global.reactor_tanks = {}
    global.microwave_satellites = {}
    global.orphan_sats = 0
    global.currently_selected_entity = {}
    global.aerials = {aerial_base_list = {},abl_count = 0, aerial_bases = {}, aerial_blimps = {}}
    global.solar_panels = {}
end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
    local E = event.created_entity
    if E.type == 'electric-energy-interface' and
        (string.match(E.name, 'hawt%-turbine') ~= nil or string.match(E.name, 'multiblade%-turbine') ~= nil) then
        local HE = game.surfaces['nauvis'].create_entity{
            name = E.name .. '-hidden',
            position = E.position,
            force = E.force
        }
        local ani = rendering.draw_animation{
            animation = E.name .. '-north',
            surface = 'nauvis',
            target = HE,
            render_layer = 129
        }
        local name = E.name
        E.destroy()
        global.windmills[HE.unit_number] = {windmill = HE, animation = ani, max_power = 50, base_name = name}
        -- log(serpent.block(global.windmills))
    elseif string.match(E.name, 'solar%-tower%-panel') ~= nil then
        -- find solar tower and angle from it
        local tower = game.surfaces[E.surface.name].find_entities_filtered{name = 'solar-tower-building'}

        if next(tower) ~= nil then
            local tower_x = tower[1].position.x
            local tower_y = tower[1].position.y
            local x = E.position.x
            local y = E.position.y

            local zeroed_x = x - tower_x
            local zeroed_y = y - tower_y
            local angle = math.atan2(zeroed_y, zeroed_x)
            -- log(serpent.block(angle))
            local deg = math.deg(angle)
            if deg < 0 then deg = deg + 360 end
            -- log(serpent.block(deg))

            local sprite_num = math.floor(deg / 11.25)

            if sprite_num < 1 then sprite_num = 1 end

            game.surfaces[E.surface.name].create_entity{
                name = 'solar-tower-panel' .. sprite_num,
                position = E.position,
                force = E.force
            }
            E.destroy()
        end
    elseif E.name == 'nuke-tank-input' then
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
        log(serpent.block(global.reactor_tanks))
    elseif E.name == 'microwave-receiver' then
        global.microwave_satellites[E.unit_number] = {reciver = E, satellites = 0, max = 10}
        local ent_sats = global.microwave_satellites[E.unit_number].satellites
        if global.orphan_sats > 0 then
            if global.orphan_sats > 10 then
                ent_sats = 10
                global.orphan_sats = global.orphan_sats - 10
            elseif global.orphan_sats <= 10 then
                ent_sats = global.orphan_sats
                global.orphan_sats = 0
            end
        end
        E.power_production = ent_sats * 83333.34
        E.electric_buffer_size = ent_sats * 5000000
        log(serpent.block(global.microwave_satellites))
        local ani = rendering.draw_animation{
            animation = E.name,
            surface = E.surface,
            target = E,
            render_layer = 129
        }
    elseif E.name == 'aerial-base' then
        log('hit')
        table.insert(global.aerials.aerial_base_list, E.unit_number)
        global.aerials.abl_count = global.aerials.abl_count + 1
        global.aerials.aerial_bases[E.unit_number] = E
    elseif string.match(E.name, 'aerial%-blimp') ~= nil then
        log('hit')
        global.aerials.aerial_blimps[E.unit_number] = {unit = E, current_destination = 1}
        if next(global.aerials.aerial_base_list) ~= nil then
            log('hit')
            E.set_command{
                type = defines.command.go_to_location,
                destination = global.aerials.aerial_bases[global.aerials.aerial_base_list[1]].position,
                radius = 5
            }
        end
    elseif E.name == 'tidal-placer' then
        game.surfaces[E.surface.name].create_entity{
            name = "tidal-mk01",
            position = E.position,
            force = E.force,
            direction = E.direction
        }
        E.destroy()
    elseif E.name == 'numal-placer' then
        game.surfaces[E.surface.name].create_entity{
            name = "numal-mk01",
            position = E.position,
            force = E.force,
            direction = E.direction
        }
        E.destroy()
    elseif E.name == "solar-panel-mk02" then
        local ani = rendering.draw_animation{
            animation = "solar-panel-mk02",
            surface = "nauvis",
            target = E,
            render_layer = 129,
            animation_speed = 0
        }
        global.solar_panels[E.unit_number] = {
            entity = E,
            animation = ani
        }
    elseif E.name == "solar-panel-mk03" then
        local ani = rendering.draw_animation{
            animation = "solar-panel-mk03",
            surface = "nauvis",
            target = E,
            render_layer = 129,
            animation_speed = 0
        }
        global.solar_panels[E.unit_number] = {
            entity = E,
            animation = ani
        }
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
    for m, mill in pairs(global.windmills) do
        -- log(serpent.block(mill.power_production))
        -- mill.windmill.power_production = mill.max_power * wind_speed
    end
    if next(global.solar_panels) ~= nil then
        --log(serpent.block(global.solar_panels))
        for p, panel in pairs(global.solar_panels) do
            --log(serpent.block(p))
            --log(serpent.block(panel))
            --log(serpent.block(math.floor((game.surfaces["nauvis"].daytime * 10))))
            rendering.destroy(global.solar_panels[p].animation)
            local ani = rendering.draw_animation{
                animation = panel.entity.name,
                surface = "nauvis",
                target = panel.entity,
                render_layer = 129,
                animation_speed = 0,
                animation_offset = math.floor((game.surfaces["nauvis"].daytime * 10))
            }
            global.solar_panels[p].animation = ani
        end
    end
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
    local E = event.entity
    -- log('hit')
    if E.type == 'electric-energy-interface' and
        (string.match(E.name, 'hawt%-turbine') ~= nil or string.match(E.name, 'multiblade%-turbine') ~= nil) then
        log('hit')
        local mill = global.windmills[E.unit_number]
        rendering.destroy(mill.animation)
        global.windmills[E.unit_number] = nil
    elseif E.name == 'aerial-base' then
        for b, base in pairs(global.aerials.aerial_base_list) do
            if E.unit_number == base then
                global.aerials.aerial_base_list[b] = nil
                global.aerials.aerial_bases[E.unit_number] = nil
            end
            break
        end
    elseif string.match(E.name, 'aerial%-blimp') ~= nil then
        if global.aerials.aerial_blimps[E.unit_number] ~= nil then
            global.aerials.aerial_blimps[E.unit_number] = nil
        end
    elseif E.name == 'microwave-receiver' then
        global.orphan_sats = global.orphan_sats + global.microwave_satellites[E.unit_number].satellites
        global.microwave_satellites[E.unit_number] = nil
        log(serpent.block(global.orphan_sats))
    elseif E.name == "solar-panel-mk02" then
        rendering.destroy(global.solar_panels[E.unit_number].animation)
        global.solar_panels[E.unit_number] = nil
    elseif E.name == "solar-panel-mk03" then
        rendering.destroy(global.solar_panels[E.unit_number].animation)
        global.solar_panels[E.unit_number] = nil
    end
    -- log(serpent.block(global.windmills))
end)

script.on_event(defines.events.on_rocket_launched, function(event)

    local r_inv = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
    local items = 0
    log(serpent.block(r_inv))
    for s, sat in pairs(r_inv) do
        log(s)
        log(sat)
        if s == 'microwave-satellite' then items = sat end
    end
    log(items)

    if items > 0 then
        log('hit')
        if next(global.microwave_satellites) ~= nil then
            for r, recivers in pairs(global.microwave_satellites) do
                -- log('hit')
                if items > 0 then
                    -- log('hit')
                    log(serpent.block(recivers))
                    local sats = recivers.satellites
                    if sats < recivers.max then
                        -- log('hit')
                        sats = sats + items
                        items = 0
                    end
                    if sats > recivers.max then
                        -- log('hit')
                        items = sats - recivers.max
                        sats = recivers.max
                    end
                    -- log('hit')
                    -- log(sats)
                    recivers.satellites = sats
                    -- log(serpent.block(global.microwave_satellites))
                    recivers.reciver.power_production = sats * 83333.34
                    recivers.reciver.electric_buffer_size = sats * 5000000
                    -- log(serpent.block(recivers.reciver.power_production))
                else
                    break
                end
                log(items)
                global.orphan_sats = global.orphan_sats + items
                log(serpent.block(global.orphan_sats))
            end
        else
            global.orphan_sats = global.orphan_sats + items
        end
        log(serpent.block(global.orphan_sats))
    end
end)

script.on_event(defines.events.on_gui_opened, function(event)

end)

script.on_event(defines.events.on_gui_elem_changed, function(event)

end)

script.on_event(defines.events.on_ai_command_completed, function(event)
    if event.result == defines.behavior_result.success then
        log('hit')
        if global.aerials.aerial_blimps[event.unit_number] ~= nil then
            log('hit')
            local blimp = global.aerials.aerial_blimps[event.unit_number]
            log(blimp.unit.surface.name)
            local bases = game.surfaces[blimp.unit.surface.name].find_entities_filtered{
                position = blimp.unit.position,
                radius = 10,
                name = 'aerial-base'
            }
            --log(serpent.block(bases[1].position))
            local cd = blimp.current_destination
            log(cd)
            local cd_last = cd - 1
            local base = global.aerials.aerial_base_list[cd_last] or global.aerials.aerial_base_list[global.aerials.abl_count]
            log(base)
            local dist = util.distance(global.aerials.aerial_bases[base].position, blimp.unit.position)
            log(dist)
            for b, base in pairs(bases) do
                log('hit')
                base.energy = base.energy + (100 * dist)
                break
            end
            log('hit')
            local cd_next = cd + 1
            if global.aerials.aerial_base_list[cd_next] == nil then cd_next = 1 end
            blimp.unit.set_command{
                type = defines.command.go_to_location,
                destination = global.aerials.aerial_bases[global.aerials.aerial_base_list[cd_next]].position,
                radius = 5
            }
            blimp.current_destination = cd_next
        end
    end
end)

script.on_event(defines.events.on_entity_died, function(event)
    local E = event.entity
    if E.name == 'microwave-receiver' then
        global.orphan_sats = global.orphan_sats + global.microwave_satellites[E.unit_number].satellites
        global.microwave_satellites[E.unit_number] = nil
    end
end)
