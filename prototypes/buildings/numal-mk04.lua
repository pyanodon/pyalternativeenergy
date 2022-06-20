RECIPE{
    type = 'recipe',
    name = 'numal-reef-mk04',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"numal-reef-mk03", 1},
        {"anti-reflex-glass", 100},
        {"silver-foam", 20},
        {"divertor", 10},
        {"metallic-glass", 30},
        {'metastable-quasicrystal', 30},
        {"harmonic-absorber", 50},
        {"control-unit", 30},
        {"sc-engine", 8},
        {"hyperelastic-material", 30},
        {"ti-n", 100},
        {"super-alloy", 500},
        {"low-density-structure", 10},
    },
    results = {{'numal-reef-mk04', 1}}
}:add_unlock('numal-mk04')

ITEM{
    type = 'item',
    name = 'numal-reef-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/icons/numal-mk04.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-buildings-mk04',
    order = 'a',
    place_result = 'numal-placer',
    stack_size = 10
}

ENTITY{
    type = 'assembling-machine',
    name = 'numal-reef-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/icons/numal-mk04.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'numal-reef-mk04'},
    fast_replaceable_group = 'numal',
    max_health = 100,
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    draw_entity_info_icon_background = false,
    show_recipe_icon = false,
    match_animation_speed_to_activity = false,
    module_specification = {module_slots = 16},
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {'numal'},
    crafting_speed = 0.1,
    energy_source = {type = 'electric', usage_priority = 'secondary-input', emissions_per_minute = 1},
    energy_usage = '1600kW',
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-bot-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 48),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, 32),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-bot-mask.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -96),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -112),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
        west = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-0, -32)
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
                    shift = util.by_pixel(-0, -32),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw-anim-mask.png',
                    width = 96,
                    height = 256,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -48),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/ao-fix.png',
                    width = 416,
                    height = 352,
                    frame_count = 1,
                    repeat_count = 150,
                    line_length = 1,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-0, -32)
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
                    shift = util.by_pixel(-0, -32)
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
                    shift = util.by_pixel(-0, -32)
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
        east = {
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-bot-mask.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-top-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -112),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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

                filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/all.png',
                frame_count = 150,
                line_length = 15,
                width = 192,
                height = 192,
                shift = util.by_pixel(16, -76),
                animation_speed = 0.4

            },
            south_animation = {
                        filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/all.png',
                        frame_count = 150,
                        line_length = 15,
                        width = 160,
                        height = 192,
                        shift = util.by_pixel(0, -16),
                        animation_speed = 0.4
                },
            west_animation = {

                        filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/all.png',
                        frame_count = 150,
                        line_length = 15,
                        width = 192,
                        height = 192,
                        shift = util.by_pixel(-48, -48),
                        animation_speed = 0.4

            },
            east_animation = {

                        filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/all.png',
                        frame_count = 150,
                        line_length = 15,
                        width = 192,
                        height = 160,
                        shift = util.by_pixel(45, -64),
                        animation_speed = 0.4
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

ENTITY {
    type = "offshore-pump",
    name = "numal-placer",
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "filter-directions", "hidden"},
    collision_mask = { "object-layer", "train-layer" }, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
    center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    adjacent_tile_collision_mask = { "ground-tile" }, -- to prevent building on edge of map :(
    adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
    --minable = {mining_time = 0.1, result = "offshore-test"},
    max_health = 150,
    corpse = "offshore-pump-remnants",
    dying_explosion = "offshore-pump-explosion",
    fluid = "water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water",
      pipe_connections =
      {
        {
          position = {0, 5.5},
          type = "output"
        }
      }
    },
    pumping_speed = 20,
    tile_width = 1,
    tile_height = 1,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/offshore-pump.ogg",
          volume = 0.5
        }
      },
      match_volume_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    min_perceived_performance = 0.5,
    always_draw_fluid = false,
    graphics_set =
    {
      underwater_layer_offset = 30,
      base_render_layer = "ground-patch",
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-bot-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 48),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, 32),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-bot-mask.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -96),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -112),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw-anim-mask.png',
                    width = 96,
                    height = 256,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -48),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-bot-mask.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-top-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -112),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
      fluid_animation =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 22,
          height = 20,
          shift = util.by_pixel(-2, -22),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 40,
            height = 40,
            shift = util.by_pixel(-1, -22),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 24,
          shift = util.by_pixel(6, -10),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 38,
            height = 50,
            shift = util.by_pixel(6, -11),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 8,
          shift = util.by_pixel(-2, -4),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 36,
            height = 14,
            shift = util.by_pixel(-1, -4),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 24,
          shift = util.by_pixel(-8, -10),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 36,
            height = 50,
            shift = util.by_pixel(-7, -11),
            scale = 0.5
          }
        }
      },
      glass_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-glass.png",
          width = 18,
          height = 20,
          shift = util.by_pixel(-2, -22),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-glass.png",
            width = 36,
            height = 40,
            shift = util.by_pixel(-2, -22),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-glass.png",
          width = 18,
          height = 18,
          shift = util.by_pixel(4, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-glass.png",
            width = 30,
            height = 32,
            shift = util.by_pixel(5, -13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-glass.png",
          width = 22,
          height = 12,
          shift = util.by_pixel(-2, -6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-glass.png",
            width = 40,
            height = 24,
            shift = util.by_pixel(-1, -6),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-glass.png",
          width = 16,
          height = 16,
          shift = util.by_pixel(-6, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-glass.png",
            width = 30,
            height = 32,
            shift = util.by_pixel(-6, -14),
            scale = 0.5
          }
        }
      },
      base_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-legs.png",
          width = 60,
          height = 52,
          shift = util.by_pixel(-2, -4),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-legs.png",
            width = 114,
            height = 106,
            shift = util.by_pixel(-1, -5),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(4, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-legs.png",
            width = 106,
            height = 60,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-legs.png",
          width = 56,
          height = 54,
          shift = util.by_pixel(-2, 6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-legs.png",
            width = 110,
            height = 108,
            shift = util.by_pixel(-2, 6),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(-6, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-legs.png",
            width = 108,
            height = 64,
            shift = util.by_pixel(-6, 12),
            scale = 0.5
          }
        }
      },
      underwater_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-underwater.png",
          width = 52,
          height = 16,
          shift = util.by_pixel(-2, -34),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-underwater.png",
            width = 98,
            height = 36,
            shift = util.by_pixel(-1, -32),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-underwater.png",
          width = 18,
          height = 38,
          shift = util.by_pixel(40, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-underwater.png",
            width = 40,
            height = 72,
            shift = util.by_pixel(39, 17),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-underwater.png",
          width = 52,
          height = 26,
          shift = util.by_pixel(-2, 48),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-underwater.png",
            width = 98,
            height = 48,
            shift = util.by_pixel(-1, 49),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-underwater.png",
          width = 20,
          height = 34,
          shift = util.by_pixel(-40, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-underwater.png",
            width = 40,
            height = 72,
            shift = util.by_pixel(-40, 17),
            scale = 0.5
          }
        }
      }
    },
    placeable_position_visualization =
    {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3*64
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump-reflection.png",
        priority = "extra-high",
        width = 132,
        height = 156,
        shift = util.by_pixel(0, 19),
        variation_count = 4,
        scale = 1
      },
      rotate = false,
      orientation_to_variation = true
    }
  }
