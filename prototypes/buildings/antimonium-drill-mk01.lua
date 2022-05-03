RECIPE {
    type = "recipe",
    name = "antimonium-drill-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"electric-mining-drill", 5},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 40},
        {"aluminium-plate", 20},
        {"engine-unit", 2},
    },
    results = {
        {"antimonium-drill-mk01", 1}
    }
}:add_unlock("antimony-mk01")

ITEM {
    type = "item",
    name = "antimonium-drill-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/antimonium-drill-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "antimonium-drill-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "antimonium-drill-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/antimonium-drill-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "antimonium-drill-mk01"},
    fast_replaceable_group = "antimonium-drill",
    max_health = 700,
    resource_categories = {"antimonium"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"consumption", "speed", "pollution"},
    mining_speed = 1,
    energy_source = {
        type = "burner",
        fuel_category = "drill",
        effectivity = 1,
        light_flicker = {color = {0,0,0}},
        fuel_inventory_size = 1,
        emissions_per_minute = 20,
    },
    energy_usage = "300kW",
    mining_power = 1,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/shade.png",
                width = 224,
                height = 224,
                line_length = 1,
                frame_count = 1,
                repeat_count = 50,
                animation_speed = 0.3,
                shift = util.by_pixel(-0, -0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/bot-raw.png",
                width = 224,
                height = 224,
                line_length = 9,
                frame_count = 50,
                animation_speed = 0.3,
                shift = util.by_pixel(-0, -0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/top-raw.png",
                width = 224,
                height = 256,
                line_length = 9,
                frame_count = 50,
                animation_speed = 0.3,
                shift = util.by_pixel(-0, -240),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/sh.png",
                width = 256,
                height = 224,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(16, -0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/l.png",
                width = 224,
                height = 480,
                line_length = 1,
                frame_count = 1,
                repeat_count = 50,
                draw_as_glow = true,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                blend_mode = "additive",
                animation_speed = 0.3,
                shift = util.by_pixel(-0, -128),
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/antimonium-drill.ogg", volume = 0.55},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/antimonium-drill.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
}
