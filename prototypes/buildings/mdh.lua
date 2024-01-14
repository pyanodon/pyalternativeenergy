RECIPE {
    type = "recipe",
    name = "mdh",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"mdh", 1}
    },
}:add_unlock("fusion-mk02")

ITEM {
    type = "item",
    name = "mdh",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mdh.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "a",
    place_result = "mdh",
    stack_size = 10
}

ENTITY {
    type = "generator",
    name = "mdh",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mdh.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "mdh"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 50,
    maximum_temperature = 5000,
    destroy_non_fuel_fluid = false,
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-2.8, -7.8}, {2.8, 7.8}},
    selection_box = {{-3.0, -8.0}, {3.0, 8.0}},
    fluid_input = {
        name = "neutron",
        amount = 0.0,
        minimum_temperature = 500.0
    },
    fluid_box = {
        base_area = 1,
        base_level = -1,
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        production_type = "input-output",
        filter = "neutron",
        minimum_temperature = 500.0,
        pipe_connections = {
            {type = "input-output", position = {3.5, 5}},
            {type = "input-output", position = {-3.5, 5}},
            {type = "input-output", position = {3.5, -5}},
            {type = "input-output", position = {-3.5, -5}},
        }
    },
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        emissions_per_minute = 0.0,
    },
    horizontal_animation = {
        layers = {
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/mdh/h-raw.png",
            width = 512,
            height = 256,
            frame_count = 20,
            line_length = 4,
            shift = util.by_pixel(0, -32),
            animation_speed = 1/5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/mdh/h-l.png",
            width = 128,
            height = 32,
            frame_count = 20,
            line_length = 4,
            shift = util.by_pixel(-90, -48),
            animation_speed = 1/5,
            draw_as_glow = true;
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/mdh/h-sh.png",
            width = 530,
            height = 164,
            frame_count = 1,
            line_length = 1,
            repeat_count = 20,
            shift = util.by_pixel(16, 16),
            animation_speed = 1/5,
            draw_as_shadow = true;
            },
        },
    },
    vertical_animation = {
        layers = {
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/mdh/v-raw.png",
            width = 192,
            height = 576,
            frame_count = 20,
            line_length = 10,
            shift = util.by_pixel(0, -32),
            animation_speed = 1/5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/mdh/v-l.png",
            width = 32,
            height = 128,
            frame_count = 20,
            line_length = 10,
            shift = util.by_pixel(2, 34),
            animation_speed = 1/5,
            draw_as_glow = true;
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/mdh/v-sh.png",
            width = 220,
            height = 486,
            frame_count = 1,
            line_length = 1,
            repeat_count = 20,
            shift = util.by_pixel(16, 16),
            animation_speed = 1/5,
            draw_as_shadow = true;
            },
        },
    },
    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.3,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/gas-extractor.ogg", volume = 0.45},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/gas-extractor.ogg", volume = 0.35},
        apparent_volume = 1.5
    }
}
