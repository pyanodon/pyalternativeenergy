local collision_data = require("prototypes.functions.collision-mask")
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE {
    type = "recipe",
    name = "hawt-turbine-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"nacelle-mk04", 1},
        {"anemometer-mk04", 1},
        {"tower-mk04", 1},
        {"electronics-mk04", 1},
    },
    results = {
        {"hawt-turbine-mk04", 1}
    }
}:add_unlock("wind-mk04")

ITEM {
    type = "item",
    name = "hawt-turbine-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "d",
    place_result = "hawt-turbine-mk04",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "hidden"},
    collision_mask = {wind_layer, 'object-layer', 'player-layer', 'water-tile'},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk04"},
    placeable_by = {item = 'hawt-turbine-mk04', count = 1},
    fast_replaceable_group = "hawt-turbine",
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
        output_flow_limit = "50MW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '22MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.6},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.4},
        apparent_volume = 2.5
    },
    picture =
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/base-mk04.png',
            width = 352,
            height = 416,
            shift = util.by_pixel(0, -64),
        },
    }

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'hawt-turbine-mk04-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk04.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-13.4, -13.4}, {13.4, 13.4}},
        collision_mask = { wind_layer },
        selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
        selectable_in_game = false,
        picture = {
            filename = '__pyalternativeenergygraphics__/graphics/icons/filler.png',
            width = 4,
            height = 4,
        },
    }
})

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk04-north',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r5.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a5.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l5.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s5.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
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
        name = 'hawt-turbine-mk04-northeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r6.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a6.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l6.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s6.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
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
        name = 'hawt-turbine-mk04-east',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r7.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a7.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l7.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s7.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
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
        name = 'hawt-turbine-mk04-southeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r8.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a8.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l8.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s8.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
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
        name = 'hawt-turbine-mk04-south',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r1.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a1.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l1.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s1.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
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
        name = 'hawt-turbine-mk04-southwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r2.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a2.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l2.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s2.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
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
        name = 'hawt-turbine-mk04-west',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r3.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a3.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l3.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s3.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
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
        name = 'hawt-turbine-mk04-northwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r4.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a4.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l4.png",
                width = 352,
                height = 416,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                --animation_speed = 1,
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s4.png",
                width = 352,
                height = 256,
                --line_length = 10,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                --animation_speed = 1,
                draw_as_shadow = true,
            },
        }
    }
}
)
