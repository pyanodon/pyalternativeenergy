RECIPE {
    type = "recipe",
    name = "hawt-turbine-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"rotor-mk03", 1},
        {"nacelle-mk03", 1},
        {"anemometer-mk03", 1},
        {"vane-mk03", 1},
        {"tower-mk03", 1},
        {"electronics-mk03", 1},
    },
    results = {
        {"hawt-turbine-mk03", 1}
    }
}:add_unlock("wind-mk03")

ITEM {
    type = "item",
    name = "hawt-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "d",
    place_result = "hawt-turbine-mk03",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "hidden"},
    --minable = {mining_time = 0.5, result = "hawt-turbine-mk03"},
    fast_replaceable_group = "hawt-turbine",
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
        output_flow_limit = "50MW",
        render_no_power_icon = false
    },
    energy_production = '10MW',
    energy_usage = "0kW",
    picture =
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r1.png',
            width = 192,
            height = 416,
            shift = util.by_pixel(0, -112),
        },
    }

ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk03-hidden",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk03"},
    fast_replaceable_group = "hawt-turbine",
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
        output_flow_limit = "50MW",
        render_no_power_icon = false
    },
    eenergy_production = '10MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    placeable_by = {item = 'hawt-turbine-mk03', count = 1}
}

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-north',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r5.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l5.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s5.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-northeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r6.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l6.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s6.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-east',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r7.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l7.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s7.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-southeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r8.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l8.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s8.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-south',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r1.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l1.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s1.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-southwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r2.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l2.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s2.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-west',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r3.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l3.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s3.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-northwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r4.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l4.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s4.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)
