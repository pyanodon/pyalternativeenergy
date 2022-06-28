RECIPE {
    type = "recipe",
    name = "sut",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"glass", 1000},
        {"small-parts-02", 400},
        {"stainless-steel", 500},
        {"electric-engine-unit", 18},
        {'ns-material', 20},
        {"advanced-circuit", 10},
        {"concrete", 100},
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
    type = "electric-energy-interface",
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
    continuous_animation = true,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '500MJ',
        output_flow_limit = "50MW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '1W',
    energy_usage = '0kW',
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/top.png",
                width = 608,
                height = 1312,
                frame_count = 1,
                line_length = 1,
                repeat_count = 10,
                shift = util.by_pixel(1, -321),
                scale = 0.9473
            },
            --[[
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
            ]]--
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 0.70},
        apparent_volume = 2.5
    },
    render_layer = "wires-above"
}

ENTITY {
    type = "simple-entity-with-owner",
    name = "sut-panel-base",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{0,0}, {0,0}},
    selection_box = {{0,0}, {0,0}},
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/sh.png",
                width = 832,
                height = 592,
                frame_count = 1,
                line_length = 1,
                repeat_count = 10,
                shift = util.by_pixel(109, 8),
                draw_as_shadow = true,
                scale = 0.9473,
                --variation_count = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/bottom.png",
                frame_count = 10,
                line_length = 2,
                width = 608,
                height = 48,
                animation_speed = 0.3,
                scale = 0.9473,
                shift = util.by_pixel(1, 278),
                --variation_count = 1,
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    render_layer = "floor"
}
