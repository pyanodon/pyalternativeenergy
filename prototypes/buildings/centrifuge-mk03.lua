RECIPE {
    type = "recipe",
    name = "centrifuge-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {'centrifuge-mk02', 1},
        {'titanium-plate', 40},
        {'processing-unit', 10},
        {'ns-material', 10},
        {'small-parts-03', 100},
        {'graphene-roll', 25},
        {'plastic-bar', 100},
        {'electric-engine-unit', 10},
        {'aerogel', 20},
        {"mechanical-parts-03", 1},
    },
    results = {
        {"centrifuge-mk03", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "centrifuge-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/centrifuge-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "centrifuge-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "centrifuge-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/centrifuge-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "centrifuge-mk03"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"centrifuging"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 4
    },
    energy_usage = "75MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/bot.png",
                width = 224,
                height = 32,
                repeat_count = 100,
                frame_count = 1,
                animation_speed = 0.7,
                shift = util.by_pixel(0, 96),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/bottom.png",
                width = 224,
                height = 160,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 9,
                animation_speed = 0.7,
                shift = util.by_pixel(0, 0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/bottom_mask.png",
                width = 224,
                height = 160,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 9,
                animation_speed = 0.7,
                shift = util.by_pixel(0, 0),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/top.png",
                width = 224,
                height = 128,
                repeat_count = 100,
                --frame_count = 100,
                line_length = 1,
                animation_speed = 0.7,
                shift = util.by_pixel(0, -144),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/top-mask.png",
                width = 224,
                height = 128,
                repeat_count = 100,
                --frame_count = 100,
                line_length = 1,
                animation_speed = 0.7,
                shift = util.by_pixel(0, -144),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(16, -96),
            west_position = util.by_pixel(16, -96),
            south_position = util.by_pixel(16, -96),
            east_position = util.by_pixel(16, -96),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/blink.png",
                frame_count = 100,
                line_length = 25,
                animation_speed = 0.7,
                width = 64,
                height = 32,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(128, -96),
            west_position = util.by_pixel(128, -96),
            south_position = util.by_pixel(128, -96),
            east_position = util.by_pixel(128, -96),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/turbine.png",
                frame_count = 100,
                line_length = 20,
                animation_speed = 0.7,
                width = 96,
                height = 96,
                draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, -4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound = { filename = "__pyalternativeenergygraphics__/sounds/centrifuge.ogg", volume = 0.25 },
      apparent_volume = 0.5
    },
    fast_replaceable_group = "centrifuge"
  }
