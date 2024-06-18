local FUN = require("__pycoalprocessing__/prototypes/functions/functions")
local MODULE_SLOTS = 16

RECIPE{
    type = 'recipe',
    name = 'numal-reef-mk03',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"numal-reef-mk02", 1},
        {"ticocr-alloy", 50},
        {"phosphate-glass", 100},
        {"py-heat-exchanger", 1},
        {"electric-engine-unit", 5},
        {"sc-unit", 20},
        {"cf", 100},
        {'ns-material', 20},
        {"small-parts-03", 200},
        {"neuromorphic-chip", 30},
        {"processing-unit", 50},
        {"mechanical-parts-03", 2},
    },
    results = {{'numal-reef-mk03', 1}}
}:add_unlock('numal-mk03')

ITEM{
    type = 'item',
    name = 'numal-reef-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/numal-mk03.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-farm-buildings-mk03',
    order = 'a',
    place_result = 'numal-reef-mk03',
    stack_size = 10
}

ENTITY{
    type = 'assembling-machine',
    name = 'numal-reef-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/numal-mk03.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'numal-reef-mk03'},
    placeable_by = {item = "numal-reef-mk03", count = 1},
    fast_replaceable_group = 'numal',
    next_upgrade = "numal-reef-mk04",
    max_health = 100,
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_mask = data.raw['assembling-machine']['numal-reef-mk01'].collision_mask,
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {module_slots = MODULE_SLOTS},
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {'numal'},
    crafting_speed = FUN.farm_speed_derived(MODULE_SLOTS, "numal-reef-mk01"),
    energy_source = {type = 'electric', usage_priority = 'secondary-input', emissions_per_minute = 1},
    energy_usage = '1000kW',
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
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-bot-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 48),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/north/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, 32),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
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
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-bot-mask.png',
                    width = 96,
                    height = 96,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -96),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/south/raw-top-mask.png',
                    width = 64,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(80, -112),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
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
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/east/raw-anim-mask.png',
                    width = 96,
                    height = 256,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -48),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
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
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-bot-mask.png',
                    width = 96,
                    height = 160,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, 32),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/numal/west/raw-top-mask.png',
                    width = 96,
                    height = 128,
                    frame_count = 150,
                    line_length = 20,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -112),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
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
            pipe_connections = {{type = 'input', position = {0, 6}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/numal.ogg', volume = 1.0},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/numal.ogg', volume = 0.65},
        apparent_volume = 0.45
    },
    -- Blacklist from squeak through
    squeak_behaviour = false
}