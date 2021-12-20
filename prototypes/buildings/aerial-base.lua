RECIPE {
    type = "recipe",
    name = "aerial-base",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = 'item', name = 'iron-plate', amount = 1},
    },
    results = {
        {type = "item", name = "aerial-base", amount = 1}
    }
}:add_unlock("renewable-mk01")

ITEM {
    type = "item",
    name = "aerial-base",
    icon = "__pyalternativeenergygraphics__/graphics/icons/microwave-receiver.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "f",
    place_result = "aerial-base",
    stack_size = 10
}

ENTITY {
    type = "accumulator",
    name = "aerial-base",
    icon = "__pyalternativeenergygraphics__/graphics/icons/accumulator-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "aerial-base"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    energy_source = {
        type = "electric",
        buffer_capacity = "10GJ",
        usage_priority = "primary-output",
        input_flow_limit = "0kW",
        output_flow_limit = "3000kW"
    },
    picture = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/raw.png",
                width = 160,
                height = 287,
                frame_count = 1,
                line_length = 1,
                --animation_speed = 0.45,
                --blend_mode = "additive",
                --draw_as_glow = true,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/idle.png",
                width = 160,
                height = 256,
                frame_count = 1,
                line_length = 1,
                --animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_glow = true,
                shift = util.by_pixel(0, -112)
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/sh.png",
              width = 192,
              height = 160,
              frame_count = 1,
              line_length = 1,
              --animation_speed = 0.45,
              --blend_mode = "multiplicative",
              draw_as_shadow = true,
              shift = util.by_pixel(16, -0)
            },
        }
    },
    charge_animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/raw.png",
                width = 160,
                height = 287,
                frame_count = 1,
                repeat_count = 25,
                line_length = 1,
                animation_speed = 0.3,
                --blend_mode = "additive",
                --draw_as_glow = true,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/charging.png",
                width = 160,
                height = 256,
                line_length = 5,
                frame_count = 25,
                shift = util.by_pixel(0, -112),
                draw_as_glow = true,
                animation_speed = 0.3
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/sh.png",
                width = 192,
                height = 160,
                repeat_count = 25,
                frame_count = 1,
                line_length = 1,
                animation_speed = 0.3,
                --blend_mode = "multiplicative",
                draw_as_shadow = true,
                shift = util.by_pixel(16, -0)
              },
        },
    },
    charge_cooldown = 30,
    charge_light = {intensity = 1, size = 12, color = {r = 0.219, g = 0.835, b = 0.188}},
    discharge_animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/raw.png",
                width = 160,
                height = 287,
                frame_count = 1,
                line_length = 1,
                repeat_count = 25,
                animation_speed = 0.3,
                --blend_mode = "additive",
                --draw_as_glow = true,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/discharging.png",
                width = 160,
                height = 256,
                line_length = 5,
                frame_count = 25,
                shift = util.by_pixel(0, -112),
                draw_as_glow = true,
                animation_speed = 0.3,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/sh.png",
                width = 192,
                height = 160,
                frame_count = 1,
                line_length = 1,
                repeat_count = 25,
                animation_speed = 0.3,
                --blend_mode = "multiplicative",
                draw_as_shadow = true,
                shift = util.by_pixel(16, -0)
              },
        },
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 1, size = 12, color = {r = 0.862, g = 0.117, b = 0.117}},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {
            filename = "__pyalternativeenergygraphics__/sounds/accumulator-mk03.ogg",
            volume = 0.6
        },
        idle_sound = {
            filename = "__base__/sound/accumulator-idle.ogg",
            volume = 0.4
        },
        max_sounds_per_type = 5
    },
    circuit_wire_connection_point = {
        shadow = {
            red = {0.984375, 1.10938},
            green = {0.890625, 1.10938}
        },
        wire = {
            red = {0.6875, 0.59375},
            green = {0.6875, 0.71875}
        }
    },
    circuit_wire_max_distance = 9,
    default_output_signal = {type = "virtual", name = "signal-A"},
    circuit_connector_sprites = _G.circuit_connector_definitions["accumulator"].sprites
}
