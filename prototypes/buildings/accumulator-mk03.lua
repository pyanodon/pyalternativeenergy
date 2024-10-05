RECIPE {
    type = "recipe",
    name = "accumulator-mk03",
    energy_required = 1,
    category = 'advanced-crafting',
    enabled = false,
    ingredients = {
        {type = "item", name = "supercapacitor", amount = 15},
        {type = "item", name = "processing-unit", amount = 10},
        {type = "item", name = "super-steel", amount = 50},
        {type = "item", name = "nano-wires", amount = 10}, --tinned cable
        {type = "item", name = "nexelit-plate", amount = 100}, -- {type = "item", name = "nexelit-plate", amount = 60},
        {type = "item", name = "optical-fiber", amount = 50},
        {type = "item", name = "biopolymer", amount = 20},
    },
    results = {
        {type = "item", name = "accumulator-mk03", amount = 1},
    }
}:add_unlock("py-accumulator-mk03")

ITEM {
    type = "item",
    name = "accumulator-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/accumulator-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-electric",
    order = "a",
    place_result = "accumulator-mk03",
    stack_size = 50
}

ENTITY {
    type = "accumulator",
    name = "accumulator-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/accumulator-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator-mk03"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    energy_source = {
        type = "electric",
        buffer_capacity = "1000MJ",
        usage_priority = "tertiary",
        input_flow_limit = "100000kW",
        output_flow_limit = "100000kW"
    },
    chargable_graphics = {
        picture = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/accumulator-mk03/raw.png",
                    width = 160,
                    height = 287,
                    frame_count = 1,
                    line_length = 1,
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
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
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
    circuit_connector_sprites = _G.circuit_connector_definitions["accumulator"].sprites,
    fast_replaceable_group = "py-accumulator"
}
