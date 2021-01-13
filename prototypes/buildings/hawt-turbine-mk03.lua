RECIPE {
    type = "recipe",
    name = "hawt-turbine-mk03",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"pipe", 20},
    },
    results = {
        {"hawt-turbine-mk03", 1}
    }
}

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
    type = "assembling-machine",
    name = "hawt-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk03"},
    fast_replaceable_group = "hawt-turbine-mk03",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"crafting"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.5,
    },
    energy_usage = "100kW",
    animation = {
        layers = {
            --north (maybe an empty animation file--filler-- since the rotations are listed bellow?)
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
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}

data:extend(
    {
        {
        type = 'animation',
        name = 'hawt-turbine-mk03-north',
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
        }
    }
}
)
