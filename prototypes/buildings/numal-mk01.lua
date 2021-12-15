RECIPE{
    type = 'recipe',
    name = 'numal-mk01',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'concrete', 200},
        {'titanium-plate', 100},
        {'steel-plate', 100},
        {'duralumin', 50},
        {'glass', 20},
        {'advanced-circuit', 35}
    },
    results = {{'numal-mk01', 1}}
}:add_unlock('numal-mk01')

ITEM{
    type = 'item',
    name = 'numal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/numal-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-buildings-mk01',
    order = 'a',
    place_result = 'numal-mk01',
    stack_size = 10
}

ENTITY{
    type = 'assembling-machine',
    name = 'numal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/numal-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'numal-mk01'},
    fast_replaceable_group = 'numal',
    max_health = 100,
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {module_slots = 8},
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {'solar-tower'},
    crafting_speed = 0.1,
    energy_source = {type = 'electric', usage_priority = 'secondary-input', emissions_per_minute = 1},
    energy_usage = '400kW',
    animation = {
        north = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-bot.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 48)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-top.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, 16)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-mask.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 150,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-bot-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 48),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, 32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/ao.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/ao-bot.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 48)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/ao-top.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/l-bot.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 16,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/l-top.png',
                    width = 128,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 16,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, 16)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/dome.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/sh.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/sh-bot.png',
                    width = 128,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 16,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, 80)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/sh-top.png',
                    width = 96,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 16,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 80)
                }
            }
        },
        south = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -0)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-bot.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -96)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-top.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -112)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-mask.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 150,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -0),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-bot-mask.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -96),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -112),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/ao.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -0)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/ao-bot.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -96)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/ao-top.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -112)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/l-bot.png',
                    width = 128,
                    height = 96,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 16,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, -96)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/l-top.png',
                    width = 128,
                    height = 96,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 16,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -128)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/dome.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -0)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/sh.png',
                    width = 288,
                    height = 480,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -0)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/sh-bot.png',
                    width = 96,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, -64)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/sh-top.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(96, -87)
                }
            }
        },
        east = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw-anim.png',
                    width = 96,
                    height = 256,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -48)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw-mask.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 150,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw-anim-mask.png',
                    width = 96,
                    height = 256,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -48),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/ao-fix.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/ao.png',
                    width = 96,
                    height = 256,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -48)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/l-bot.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/l-up.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -128)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/dome.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/sh.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/sh-bot.png',
                    width = 128,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 10,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, 80)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/sh-top.png',
                    width = 64,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -80)
                }
            }
        },
        west = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-bot.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-top.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -112)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-mask.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 150,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-bot-mask.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-top-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -112),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/ao.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/ao-bot.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/ao-top.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -112)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/l-bot.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/l-top.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_glow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -144)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/dome.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/sh.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/sh-bot.png',
                    width = 96,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 80)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/sh-top.png',
                    width = 64,
                    height = 64,
                    frame_count = 150,
                    -- repeat_count = 150,
                    line_length = 20,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-48, -80)
                }
            }
        }
    },
    working_visualisations =
    {
        {
            north_animation = {

                        filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/s-top.png',
                        frame_count = 75,
                        line_length = 10,
                        run_mode = 'forward-then-backward',
                        width = 96,
                        height = 160,
                        shift = util.by_pixel(0, -0),
                        animation_speed = 0.5

            },
            south_animation = {

                        filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/s-gtop.png',
                        frame_count = 75,
                        line_length = 10,
                        run_mode = 'forward-then-backward',
                        width = 96,
                        height = 128,
                        shift = util.by_pixel(0, -0),
                        animation_speed = 0.5

            },
            west_animation = {

                        filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/s-top.png',
                        frame_count = 75,
                        line_length = 20,
                        run_mode = 'forward-then-backward',
                        width = 96,
                        height = 128,
                        shift = util.by_pixel(0, -0),
                        animation_speed = 0.5

            },
            east_animation = {

                        filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/s-top.png',
                        frame_count = 75,
                        line_length = 10,
                        run_mode = 'forward-then-backward',
                        width = 96,
                        height = 128,
                        shift = util.by_pixel(0, -0),
                        animation_speed = 0.5

            }
        },
    },
    fluid_boxes = {
        -- 1
        {
            production_type = 'input',
            pipe_picture = DATA.Pipes.pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = 'input', position = {0, -6}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/numal.ogg', volume = 1.0},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/numal.ogg', volume = 0.65},
        apparent_volume = 0.45
    }
}
