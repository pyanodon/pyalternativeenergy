RECIPE {
    type = "recipe",
    name = "microwave-receiver",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {'nxsb-alloy', 40},
        {'processing-unit', 15},
        {'ns-material', 50},
        {'small-parts-03', 150},
        {'graphene-roll', 25},
        {'plastic-bar', 100},
        {'super-steel', 100},
        {'electric-engine-unit', 10},
        {'aerogel', 20},
    },
    results = {
        {"microwave-receiver", 1}
    }
}:add_unlock("microwave-receiver")

ITEM {
    type = "item",
    name = "microwave-receiver",
    icon = "__pyalternativeenergygraphics__/graphics/icons/microwave-receiver.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "a",
    place_result = "microwave-receiver",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "microwave-receiver",
    icon = "__pyalternativeenergygraphics__/graphics/icons/microwave-receiver.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "microwave-receiver"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.3, -4.3}, {4.3, 4.3}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 4
    },
    energy_usage = "500kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b1.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.5,
                shift = util.by_pixel(-32, 96),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/sh-base.png",
                width = 288,
                height = 224,
                repeat_count = 100,
                --frame_count = 100,
                --line_length = 5,
                animation_speed = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(0, 0),
            },
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  }
