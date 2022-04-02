RECIPE {
    type = "recipe",
    name = "sut",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"sut", 1}
    }
}:add_unlock("thermal-mk03")

ITEM {
    type = "item",
    name = "sut",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-tower.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
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
                line_length = 1,
                repeat_count = 30,
                shift = util.by_pixel(1, -321),
                scale = 0.9473
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/sh.png",
                width = 832,
                height = 592,
                frame_count = 1,
                line_length = 1,
                repeat_count = 30,
                shift = util.by_pixel(109, 8),
                draw_as_shadow = true,
                scale = 0.9473
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/bottom.png",
                frame_count = 30,
                line_length = 3,
                width = 608,
                height = 32,
                animation_speed = 0.3,
                scale = 0.9473,
                shift = util.by_pixel(1, 285),
            },
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 0.70},
        apparent_volume = 2.5
    }
}
