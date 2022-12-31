local collision_data = require("prototypes.functions.collision-mask")
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE {
    type = "recipe",
    name = "multiblade-turbine-mk01",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"small-electric-pole", 2},
        {"small-parts-01", 8},
        {"stone-brick", 6},
        {'inductor1', 6}
    },
    results = {
        {"multiblade-turbine-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "multiblade-turbine-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "z",
    place_result = "multiblade-turbine-mk01",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "multiblade-turbine-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    collision_mask = {wind_layer, "object-layer", "player-layer", "water-tile"},
    minable = {mining_time = 0.5, result = "multiblade-turbine-mk01"},
    placeable_by = {item = 'multiblade-turbine-mk01', count = 1},
    fast_replaceable_group = "multiblade-turbine-mk01",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "800kJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '800kW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    picture = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/base-fishturbine.png',
        width = 224,
        height = 224,
    },
}


data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'multiblade-turbine-mk01-collision',
        render_layer = "wires-above",
        icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation", "not-on-map"},
        collision_box = {{-11.4, -11.4}, {11.4, 11.4}},
        collision_mask = { wind_layer },
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
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
        name = 'multiblade-turbine-mk01-north',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r5.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk01-northeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/s6.png",
                width = 64,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(144, 0),
                animation_speed = 0.5,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r6.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },

        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk01-east',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/s7.png",
                width = 64,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(144, 0),
                animation_speed = 0.5,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r7.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk01-southeast',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/s8.png",
                width = 64,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(144, 0),
                animation_speed = 0.5,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r8.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk01-south',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r1.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk01-southwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r2.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk01-west',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r3.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
        }
    }
}
)

data:extend(
    {
        {
        type = 'animation',
        name = 'multiblade-turbine-mk01-northwest',
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r4.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
        }
    }
}
)
