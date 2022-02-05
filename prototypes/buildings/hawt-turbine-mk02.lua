RECIPE {
    type = "recipe",
    name = "hawt-turbine-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"rotor-mk02", 1},
        {"nacelle-mk02", 1},
        {"anemometer-mk02", 1},
        {"vane-mk02", 1},
        {"tower-mk02", 1},
        {"electronics-mk02", 3},
    },
    results = {
        {"hawt-turbine-mk02", 1}
    }
}:add_unlock("wind-mk02")

ITEM {
    type = "item",
    name = "hawt-turbine-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "d",
    place_result = "hawt-turbine-mk02",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    --minable = {mining_time = 0.5, result = "hawt-turbine-mk02"},
    fast_replaceable_group = "hawt-turbine",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "500MJ",
        output_flow_limit = "50MW",
        render_no_power_icon = false
    },
    energy_production = '100MW',
    energy_usage = "0kW",
    picture =
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r1.png',
            width = 224,
            height = 352,
            shift = util.by_pixel(0, -64),
        },
    }

ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk02-hidden",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk02"},
    fast_replaceable_group = "hawt-turbine",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "500MJ",
        output_flow_limit = "50MW",
        render_no_power_icon = false
    },
    energy_production = '100MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk02.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk02.ogg", volume = 0.8},
        apparent_volume = 2.5
    },
    placeable_by = {item = 'hawt-turbine-mk02', count = 1}
}

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk02-north',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r5.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s5.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a5.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l5.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
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
        name = 'hawt-turbine-mk02-northeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r6.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s6.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a6.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l6.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
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
        name = 'hawt-turbine-mk02-east',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r7.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s7.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a7.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l7.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
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
        name = 'hawt-turbine-mk02-southeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r8.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s8.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a8.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l8.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
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
        name = 'hawt-turbine-mk02-south',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r1.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s1.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a1.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l1.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
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
        name = 'hawt-turbine-mk02-southwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r2.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s2.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a2.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l2.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
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
        name = 'hawt-turbine-mk02-west',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r3.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s3.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a3.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l3.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
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
        name = 'hawt-turbine-mk02-northwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r4.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s4.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a4.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l4.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
                draw_as_glow = true,
            },
        }
    }
}
)
