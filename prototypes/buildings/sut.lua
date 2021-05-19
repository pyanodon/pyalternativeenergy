RECIPE {
    type = "recipe",
    name = "sut",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"sut", 1}
    }
}

ITEM {
    type = "item",
    name = "sut",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-tower.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "sut",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sut",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-tower.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "sut"},
    fast_replaceable_group = "sut",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-8.7, -8.7}, {8.7, 8.7}},
    selection_box = {{-9, -9}, {9, 9}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/top.png",
                width = 608,
                height = 1312,
                frame_count = 1,
                shift = util.by_pixel(0, -335),
                scale = 0.9473
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/sh.png",
                width = 832,
                height = 592,
                frame_count = 1,
                shift = util.by_pixel(108, 8),
                draw_as_shadow = true,
                scale = 0.9473
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-0, 271),
            west_position = util.by_pixel(-0, 272),
            south_position = util.by_pixel(-0, 272),
            east_position = util.by_pixel(-0, 272),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/bottom.png",
                frame_count = 30,
                line_length = 3,
                width = 608,
                height = 32,
                animation_speed = 0.3,
                scale = 0.9473
                --draw_as_glow = true,
            }
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 0.70},
        apparent_volume = 2.5
    }
}
