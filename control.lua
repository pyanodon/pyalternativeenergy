
script.on_init(function()
global.windmills = {}
end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
    local E = event.created_entity
    if E.name == 'hawt-turbine-mk03' then
        local HE = game.surfaces['nauvis'].create_entity{
            name = E.name .. '-hidden',
            position = E.position,
            force = E.force
        }
        local ani = rendering.draw_animation{
            animation = 'hawt-turbine-mk03-north',
            surface = 'nauvis',
            target = HE
        }
        E.destroy()
        global.windmills[HE.unit_number] =
            {
                windmill = HE,
                animation = ani,
                max_power = 50
            }
        --log(serpent.block(global.windmills))
    end
end)

script.on_nth_tick(60, function(event)
    local wind_dir = game.surfaces['nauvis'].wind_orientation
    local wind_speed = game.surfaces['nauvis'].wind_speed
    log(wind_speed)
    if wind_dir > 0.9375 and wind_dir <= 0.0625 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-north',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.0625 and wind_dir <= 0.1875 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-northeast',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.1875 and wind_dir <= 0.3125 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-east',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.3125 and wind_dir <= 0.4375 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-southeast',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.4375 and wind_dir <= 0.5625 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-south',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.5625 and wind_dir <= 0.6875 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-southwest',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.6875 and wind_dir <= 0.8125 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-west',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.8125 and wind_dir <= 0.9375 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = 'hawt-turbine-mk03-northwest',
                    surface = 'nauvis',
                    target = mill.windmill
                }
                mill.animation = ani
        end
    end
    for m, mill in pairs(global.windmills) do
        --log(serpent.block(mill.power_production))
        --mill.windmill.power_production = mill.max_power * wind_speed
    end
end)
