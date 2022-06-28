local util = require('util')
-- TODO: rewrite microwave sat code to have launched sats added to a pool and the code sorting the sat pool between recivers as seperate functions

script.on_init(function()
    global.windmills = {}
    global.reactor_tanks = {}
    global.microwave_satellites = {}
    global.orphan_sats = 0
    global.currently_selected_entity = {}
    global.aerials = {aerial_base_list = {}, abl_count = 0, aerial_bases = {}, aerial_blimps = {}, idle_blimps = {}}
    global.antisolar_panels = {}
    global.lrf_panels = {}
    global.solar_tower = {}
    global.tower_cicles = {}
    global.updraft_tower = {}
    global.stirling = {}
end)

script.on_configuration_changed(function()
    if global.tower_cicles == nil then
        global.tower_cicles = {}
    end

    if global.updraft_tower == nil then
        global.updraft_tower = {}
    end

    if global.aerials == nil or global.aerials.idle_blimps == nil then
        global.aerials = {aerial_base_list = {}, abl_count = 0, aerial_bases = {}, aerial_blimps = {}, idle_blimps = {}}
    end
end)

local function distance ( x1, y1, x2, y2 )
    local dx = x1 - x2
    local dy = y1 - y2
    return math.sqrt ( dx * dx + dy * dy )
  end

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
    local E = event.created_entity
    if E.type == 'electric-energy-interface' and
        (string.match(E.name, 'hawt%-turbine') ~= nil or string.match(E.name, 'multiblade%-turbine') ~= nil) then
            log("hit")
        local HE = game.surfaces['nauvis'].create_entity{
            name = E.name .. '-hidden',
            position = E.position,
            force = E.force
        }
        log(HE.name)
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

    elseif E.name == "solar-tower-building" then
        global.solar_tower[E.unit_number] = {tower = E, panels = {}, panel_count = 0}
    elseif E.name == "sut" then
        local base = game.surfaces[E.surface.name].create_entity{
            name = "sut-panel-base",
            position = E.position,
            force = E.force
        }
        global.updraft_tower[E.unit_number] = {tower = E, base = base, panels = {}, panel_count = 0}
    elseif string.match(E.name, 'solar%-tower%-panel') ~= nil then
        -- find solar tower and angle from it
        local tower = game.surfaces[E.surface.name].find_entities_filtered{name = 'solar-tower-building'}

        if next(tower) ~= nil then
            local tower_x = tower[1].position.x
            local tower_y = tower[1].position.y
            local x = E.position.x
            local y = E.position.y
            if distance(tower_x, tower_y, x, y) <= 100 then
                local zeroed_x = x - tower_x
                local zeroed_y = y - tower_y
                local angle = math.atan2(zeroed_y, zeroed_x)
                -- log(serpent.block(angle))
                local deg = math.deg(angle)
                if deg < 0 then deg = deg + 360 end
                -- log(serpent.block(deg))

                local sprite_num = math.floor(deg / 11.25)

                if sprite_num < 1 then sprite_num = 1 end

                local panel = game.surfaces[E.surface.name].create_entity{
                    name = 'solar-tower-panel' .. sprite_num,
                    position = E.position,
                    force = E.force
                }
                E.destroy()
                global.solar_tower[tower[1].unit_number].panels[panel.unit_number] = panel
                global.solar_tower[tower[1].unit_number].panel_count = global.solar_tower[tower[1].unit_number].panel_count + 1
            else
                game.show_message_dialog{
                    text = {"warnings.solar-panel"}
                }
            end
        end
    elseif string.match(E.name, "sut%-panel") ~= nil then
            -- find updraft tower and angle from it
            local tower = game.surfaces[E.surface.name].find_entities_filtered{name = 'sut'}

            if next(tower) ~= nil then
                local tower_x = tower[1].position.x
                local tower_y = tower[1].position.y
                local x = E.position.x
                local y = E.position.y
                if distance(tower_x, tower_y, x, y) <= 100 then
                    local zeroed_x = x - tower_x
                    local zeroed_y = y - tower_y
                    local angle = math.atan2(zeroed_y, zeroed_x)
                    -- log(serpent.block(angle))
                    local deg = math.deg(angle)
                    if deg < 0 then deg = deg + 360 end
                    -- log(serpent.block(deg))

                    local sprite_num = math.floor(deg / 6)
                    --log(sprite_num)
                    if sprite_num < 1 then sprite_num = 1 end

                    local panel = game.surfaces[E.surface.name].create_entity{
                        name = 'sut-panel-' .. sprite_num,
                        position = E.position,
                        force = E.force
                    }
                    local floor = game.surfaces[E.surface.name].create_entity{
                        name = 'sut-panel-floor',
                        position = E.position,
                        force = E.force
                    }
                    E.destroy()
                    global.updraft_tower[tower[1].unit_number].panels[panel.unit_number] = {panel = panel, floor = floor}
                    global.updraft_tower[tower[1].unit_number].panel_count = global.updraft_tower[tower[1].unit_number].panel_count + 1
                else
                    game.show_message_dialog{
                        text = {"warnings.sut-panel"}
                    }
                end
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
        --log(serpent.block(global.reactor_tanks))
    elseif E.name == 'microwave-receiver' then
        local mr = game.surfaces['nauvis'].create_entity{
            name = "microwave-receiver-hidden",
            position = E.position,
            force = E.force
        }
        global.microwave_satellites[mr.unit_number] = {reciver = mr, satellites = 0, max = 10}
        local ent_sats = global.microwave_satellites[mr.unit_number].satellites
        if global.orphan_sats > 0 then
            if global.orphan_sats > 10 then
                ent_sats = 10
                global.orphan_sats = global.orphan_sats - 10
            elseif global.orphan_sats <= 10 then
                ent_sats = global.orphan_sats
                global.orphan_sats = 0
            end
        end
        mr.power_production = ent_sats * 83333.34
        mr.electric_buffer_size = ent_sats * 5000000
        --log(serpent.block(global.microwave_satellites))
        local ani = rendering.draw_animation{animation = E.name, surface = mr.surface, target = mr, render_layer = 129}
        E.destroy()
    elseif E.name == 'aerial-base' then
        --log('hit')
        table.insert(global.aerials.aerial_base_list, E.unit_number)
        global.aerials.abl_count = global.aerials.abl_count + 1
        global.aerials.aerial_bases[E.unit_number] = E
    elseif string.match(E.name, 'aerial%-blimp') ~= nil then
        --log('hit')
        global.aerials.aerial_blimps[E.unit_number] = {unit = E, current_destination = 1}
        if next(global.aerials.aerial_base_list) ~= nil then
            --log('hit')
            E.set_command{
                type = defines.command.go_to_location,
                destination = global.aerials.aerial_bases[global.aerials.aerial_base_list[1]].position,
                radius = 5
            }
        end
    elseif string.match(E.name, 'tidal%-placer') then
        log("hit")
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
    if next(global.solar_tower) ~= nil then
        for t,tower in pairs(global.solar_tower) do
            if tower.panel_count ~= 0 then
                local panel_count = tower.panel_count
                local tt = tower.tower
                local fluid = {name = "void", amount = 100, temperature = 4 * panel_count}
                tt.fluidbox[3] = fluid
            end
        end
    end
    if next(global.updraft_tower) ~= nil then
        for t,tower in pairs(global.updraft_tower) do
            if tower.tower.valid == true then
                if tower.panel_count ~= 0 then
                    local panel_count = tower.panel_count
                    local tt = tower.tower
                    tt.power_production = 10000 * panel_count
                end
            else
                if tower.base.valid == true then
                    tower.base.destroy()
                end
                tower = nil
            end
        end
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
        for e, entity in pairs(global.updraft_tower) do
            if entity.tower.valid == true then
                entity.tower.active = false
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
        for e, entity in pairs(global.updraft_tower) do
            if entity.tower.valid == true then
                entity.tower.active = true
            end
        end
        for e, entity in pairs(global.solar_tower) do
            if entity.tower.valid == true then
                entity.tower.active = true
            end
        end
    end
end)

script.on_nth_tick(30, function(event)
    if next(global.aerials.idle_blimps) ~= nil then
        log(serpent.block(global.aerials.idle_blimps))
        for b, blimp in pairs(global.aerials.idle_blimps) do
            if global.aerials.aerial_base_list[1] ~= nil then
                local dist_2_target = util.distance(global.aerials.aerial_bases[global.aerials.aerial_base_list[1]].position, blimp.unit.position)
                --log(dist)
                if dist_2_target > 10 then
                    blimp.unit.set_command{
                        type = defines.command.go_to_location,
                        destination = global.aerials.aerial_bases[global.aerials.aerial_base_list[1]].position,
                        radius = 5
                    }
                    blimp.current_destination = 1
                    global.aerials.idle_blimps[blimp.unit_number] = nil
                end
            end
        end
    end
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
    local E = event.entity
    -- log('hit')
    if E.type == 'electric-energy-interface' and
        (string.match(E.name, 'hawt%-turbine') ~= nil or string.match(E.name, 'multiblade%-turbine') ~= nil) then
        --log('hit')
        local mill = global.windmills[E.unit_number]
        rendering.destroy(mill.animation)
        global.windmills[E.unit_number] = nil
    elseif E.name == 'aerial-base' then
        for b, base in pairs(global.aerials.aerial_base_list) do
            log("hit")
            log(serpent.block(global.aerials.aerial_base_list))
            log(b)
            log(base)
            log(E.unit_number)
            if E.unit_number == base then
                log("hit")
                global.aerials.aerial_base_list[b] = nil
                global.aerials.aerial_bases[E.unit_number] = nil
                global.aerials.abl_count = global.aerials.abl_count - 1
                break
            end
        end
        log("hit")
            local new_table = {}
            for e, entry in pairs(global.aerials.aerial_base_list) do
                table.insert(new_table, entry)
            end
            global.aerials.aerial_base_list = new_table
            log(serpent.block(global.aerials.aerial_base_list))
    elseif string.match(E.name, 'aerial%-blimp') ~= nil then
        if global.aerials.aerial_blimps[E.unit_number] ~= nil then
            global.aerials.aerial_blimps[E.unit_number] = nil
        end
    elseif E.name == 'microwave-receiver' then
        global.orphan_sats = global.orphan_sats + global.microwave_satellites[E.unit_number].satellites
        global.microwave_satellites[E.unit_number] = nil
        --log(serpent.block(global.orphan_sats))
    elseif string.match(E.name, "lrf%-panel") ~= nil then
        global.lrf_panels[E.unit_number] = nil
    elseif E.name == 'anti-solar' then
        global.antisolar_panels[E.unit_number] = nil
    elseif string.match(E.name, "sut%-panel") ~= nil then
        local tower = game.surfaces[E.surface.name].find_entities_filtered{name = 'sut'}
        if next(tower) ~= nil then
            global.updraft_tower[tower[1].unit_number].panels[E.unit_number].floor.destroy()
            global.updraft_tower[tower[1].unit_number].panels[E.unit_number] = nil
        end
    end
    -- log(serpent.block(global.windmills))
end)

local function delete_circle()
    if next(global.tower_cicles) ~= nil then
        --log('hit')
        for c, circle in pairs(global.tower_cicles) do
            --log('hit')
            rendering.destroy(circle)
        end
        --log('hit')
        global.tower_cicles = {}
    end
end

script.on_event(defines.events.on_player_cursor_stack_changed, function(event)
    --log("hit")
    local hand = game.players[event.player_index]
    --log(serpent.dump(hand.cursor_stack))
    --log(serpent.block(hand.is_cursor_empty()))
    if hand.cursor_stack ~= nil then
        --log('hit')
        if hand.cursor_stack.valid_for_read == true then
            --log('hit')
            if hand.cursor_stack.name == "solar-tower-panel" then
                --log('hit')
                if next(global.solar_tower) ~= nil then
                    for t, tower in pairs(global.solar_tower) do
                        delete_circle()
                            local circle = rendering.draw_circle{color = {r = 100, g = 53.3, b = 0, a = 0.5}, radius = 100, target = tower.tower, filled = true, surface = hand.surface}
                            table.insert(global.tower_cicles, circle)
                            --log(serpent.block(global.tower_cicles))
                    end
                end
            elseif hand.cursor_stack.name == "sut-panel" then
                --log('hit')
                if next(global.updraft_tower) ~= nil then
                    for t, tower in pairs(global.updraft_tower) do
                        delete_circle()
                            local circle = rendering.draw_circle{color = {r = 100, g = 53.3, b = 0, a = 0.5}, radius = 100, target = tower.tower, filled = true, surface = hand.surface}
                            table.insert(global.tower_cicles, circle)
                            --log(serpent.block(global.tower_cicles))
                    end
                end
        elseif hand.cursor_stack.name ~= "solar-tower-panel" or hand.cursor_stack.name ~= "sut-panel" then
                    --log('hit')
                    delete_circle()
                end
        elseif hand.cursor_stack.valid_for_read ~= true then
            --log('hit')
            delete_circle()
        end
    end
end)

script.on_event(defines.events.on_rocket_launched, function(event)

    local r_inv = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
    local items = 0
    --log(serpent.block(r_inv))
    for s, sat in pairs(r_inv) do
        --log(s)
        --log(sat)
        if s == 'microwave-satellite' then items = sat end
    end
    --log(items)

    if items > 0 then
        --log('hit')
        if next(global.microwave_satellites) ~= nil then
            for r, recivers in pairs(global.microwave_satellites) do
                -- log('hit')
                if items > 0 then
                    -- log('hit')
                    --log(serpent.block(recivers))
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
                --log(items)
                global.orphan_sats = global.orphan_sats + items
                --log(serpent.block(global.orphan_sats))
            end
        else
            global.orphan_sats = global.orphan_sats + items
        end
        --log(serpent.block(global.orphan_sats))
    end
end)

script.on_event(defines.events.on_gui_opened, function(event)

end)

script.on_event(defines.events.on_gui_elem_changed, function(event)

end)

script.on_event(defines.events.on_ai_command_completed, function(event)
    if event.result == defines.behavior_result.success then
        --log('hit')
        if global.aerials.aerial_blimps[event.unit_number] ~= nil then
            --log('hit')
            local blimp = global.aerials.aerial_blimps[event.unit_number]
            --log(blimp.unit.surface.name)
            local bases = game.surfaces[blimp.unit.surface.name].find_entities_filtered{
                position = blimp.unit.position,
                radius = 10,
                name = 'aerial-base'
            }
            log(serpent.block(global.aerials.aerial_base_list))
            local cd = blimp.current_destination
            --log(cd)
            local cd_last = cd - 1
            local base = global.aerials.aerial_base_list[cd_last] or
                             global.aerials.aerial_base_list[global.aerials.abl_count]
            log(serpent.block(base))
            local dist = util.distance(global.aerials.aerial_bases[base].position, blimp.unit.position)
            --log(dist)
            for b, base in pairs(bases) do
                --log('hit')
                base.energy = base.energy + (1000 * dist)
                break
            end
            --log('hit')
            local cd_next = cd + 1
            if global.aerials.aerial_base_list[cd_next] == nil then cd_next = 1 end
            log(cd_next)
            log(serpent.block(global.aerials.aerial_base_list))
            local dist_2_target = util.distance(global.aerials.aerial_bases[global.aerials.aerial_base_list[cd_next]].position, blimp.unit.position)
            --log(dist)
            if dist_2_target > 10 then
                blimp.unit.set_command{
                    type = defines.command.go_to_location,
                    destination = global.aerials.aerial_bases[global.aerials.aerial_base_list[cd_next]].position,
                    radius = 5
                }
                blimp.current_destination = cd_next
            else
                log(event.unit_number)
                log(serpent.block(global.aerials.idle_blimps))
                global.aerials.idle_blimps[event.unit_number] = blimp
            end
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
