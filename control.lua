script.on_init(function()
    global.windmills = {}
    global.reactor_tanks = {}
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
    -- local wind_speed = game.surfaces['nauvis'].wind_speed
    -- log(wind_speed)
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
end)

script.on_nth_tick(60, function(event)

    if next(global.reactor_tanks) ~= nil then
        for t, tank in pairs(global.reactor_tanks) do
            if global.reactor_tanks[t] ~= nil then
                -- log(serpent.block(global.reactor_tanks))
                local in_t = global.reactor_tanks[t].input_tank
                local o_n_t = global.reactor_tanks[t].output_neutron_tank
                local i_n_t = global.reactor_tanks[t].input_neutron_tank
                local d_t = global.reactor_tanks[t].dirty_fuel_tank
                -- local mod = global.reactor_tanks[t].moderator
                local in_t_fbox = in_t.fluidbox[1]
                local nuts_in = i_n_t.fluidbox[1]
                log(serpent.block(in_t_fbox))
                log('hit')
                if in_t_fbox ~= nil then
                    log('hit')
                    local fuel = in_t_fbox
                    if nuts_in ~= nil then
                        -- "hot" neutrons fission more u235 as they are "thermal". will breed the u238 making more higher waste
                        -- "cold" neutrons fission less u235 but will fission some of the u238
                        if nuts_in.amount > 5 and fuel.amount > 5 then
                            fuel.temperature = fuel.temperature - ((nuts_in.temperature / 10) * 0.001)
                            global.reactor_tanks[t].input_tank.fluidbox[1] = fuel
                            local neu = i_n_t.remove_fluid{name = 'neutron', amount = 5}
                            local amount = in_t.remove_fluid{name = 'uf6', amount = 5}
                            d_t.insert_fluid{name = 'uf6', amount = amount, temperature = fuel.temperature}
                            o_n_t.insert_fluid{
                                name = 'neutron',
                                amount = 5 + math.ceil(((nuts_in.temperature - 500) / 5 / 10))
                            } -- need to adjust for neutron eco of different fluids
                        end
                    end
                end
            end
        end
    end

end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
    local E = event.entity
    log('hit')
    if E.type == 'electric-energy-interface' and
        (string.match(E.name, 'hawt%-turbine') ~= nil or string.match(E.name, 'multiblade%-turbine') ~= nil) then
        log('hit')
        local mill = global.windmills[E.unit_number]
        rendering.destroy(mill.animation)
        global.windmills[E.unit_number] = nil
    end
    log(serpent.block(global.windmills))
end)
