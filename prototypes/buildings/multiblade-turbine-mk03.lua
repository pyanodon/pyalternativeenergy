RECIPE {
    type = "recipe",
    name = "multiblade-turbine-mk03",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"pipe", 20},
    },
    results = {
        {"multiblade-turbine-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "multiblade-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "d",
    place_result = "multiblade-turbine-mk03",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "multiblade-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    --minable = {mining_time = 0.5, result = "multiblade-turbine-mk03"},
    fast_replaceable_group = "multiblade-turbine-mk03",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "500MJ",
        output_flow_limit = "50MW"
    },
    energy_production = '50MW',
    energy_usage = "0kW",
    picture =
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png',
            width = 288,
            height = 288,
            shift = util.by_pixel(16, 16),
        },
    }

ENTITY {
    type = "electric-energy-interface",
    name = "multiblade-turbine-mk03-hidden",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "multiblade-turbine-mk03"},
    fast_replaceable_group = "multiblade-turbine-mk03",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "500MJ",
        output_flow_limit = "50MW"
    },
    energy_production = '50MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    placeable_by = {item = 'multiblade-turbine-mk03', count = 1}
}

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-north',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -0),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s5.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r5.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l5.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },

        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-northeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -0),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s6.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r6.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l6.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },

        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-east',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -0),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s7.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r7.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l7.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-southeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -0),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s8.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r8.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l8.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-south',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -0),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s1.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r1.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l1.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-southwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -0),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s2.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r2.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l2.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-west',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s3.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r3.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l3.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk03-northwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -0),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s4.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                --draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r4.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l4.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },
        }
    }
}
)
