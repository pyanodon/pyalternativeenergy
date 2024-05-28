local factor = 100

RECIPE {
    type = "recipe",
    name = "steam-turbine-mk04",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {"concrete", 30 * factor},
        {"super-alloy", 30 * factor},
        {"electronics-mk04", 1 * factor},
        {"low-density-structure", 10 * factor},
        {"nbfe-alloy", 10 * factor},
        {"gearbox-mk04", 1 * factor},
        {"brake-mk04", 2 * factor},
        {"nxzngd", 8 * factor},
        {"cf", 50 * factor},
        {"fes", 3 * factor},
        {"shaft-mk04", 1 * factor},
        {'metastable-quasicrystal', 1 * factor},
        {"hyperelastic-material", 10 * factor},
        {"biopolymer", 30 * factor},
        {"controler-mk04", 4 * factor},
        {'centrifuge-mk03', 5},
        {"steam-turbine-mk03", 1},
    },
    results = {
        {"steam-turbine-mk04", 1}
    }
}:add_unlock("nonrenewable-mk04")

ITEM {
    type = "item",
    name = "steam-turbine-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "e",
    place_result = "steam-turbine-mk04",
    stack_size = 10
}

ENTITY {
    type = "generator",
    name = "steam-turbine-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "steam-turbine-mk04"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 1000,
    maximum_temperature = 5000,
    destroy_non_fuel_fluid = false,
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-2.6, -11}, {2.6, 11}},
    selection_box = {{-3.0, -11.5}, {3.0, 11.5}},
    fluid_input = {
        name = "pressured-steam",
        amount = 0.0,
        minimum_temperature = 3000.0
    },
    fluid_box = {
        base_area = 600,
        base_level = -1,
        height = 2,
        pipe_covers = py.pipe_covers(true, true, true, true),
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        production_type = "input-output",
        filter = "pressured-steam",
        minimum_temperature = 500.0,
        pipe_connections = {
            {type = "input-output", position = {3.5, 6.5}},
            {type = "input-output", position = {-3.5, 6.5}},
            {type = "input-output", position = {3.5, -6.5}},
            {type = "input-output", position = {-3.5, -6.5}},

            
            {type = "input-output", position = {3.5, 7.5}},
            {type = "input-output", position = {-3.5, 7.5}},
            {type = "input-output", position = {3.5, -7.5}},
            {type = "input-output", position = {-3.5, -7.5}},

            
            {type = "input-output", position = {3.5, 8.5}},
            {type = "input-output", position = {-3.5, 8.5}},
            {type = "input-output", position = {3.5, -8.5}},
            {type = "input-output", position = {-3.5, -8.5}},

            
            {type = "input-output", position = {3.5, 5.5}},
            {type = "input-output", position = {-3.5, 5.5}},
            {type = "input-output", position = {3.5, -5.5}},
            {type = "input-output", position = {-3.5, -5.5}},
        }
    },
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
    },
    horizontal_animation = {
        layers = {
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk04/r-h-down.png",
            width = 736,
            height = 288,
            frame_count = 1,
            line_length = 1,
            repeat_count = 30,
            shift = util.by_pixel(0, -48),
            animation_speed = 2.5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk04/h-anim.png",
            width = 288,
            height = 288,
            frame_count = 30,
            line_length = 6,
            shift = util.by_pixel(96, -48),
            animation_speed = 2.5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk04/sh-h.png",
            width = 736,
            height = 192,
            frame_count = 1,
            line_length = 1,
            repeat_count = 30,
            shift = util.by_pixel(32, -0),
            animation_speed = 2.5,
            draw_as_shadow = true;
            },
        },
    },
    vertical_animation = {
        layers = {
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk04/r-v-down.png",
            width = 224,
            height = 320,
            frame_count = 1,
            line_length = 1,
            repeat_count = 30,
            shift = util.by_pixel(-16, 208),
            animation_speed = 2.5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk04/v-anim.png",
            width = 192,
            height = 448,
            frame_count = 30,
            line_length = 10,
            shift = util.by_pixel(0, -176),
            animation_speed = 2.5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk04/sh-v.png",
            width = 224,
            height = 768,
            frame_count = 1,
            line_length = 1,
            repeat_count = 30,
            shift = util.by_pixel(32, -16),
            animation_speed = 2.5,
            draw_as_shadow = true;
            },
        },
    },
    smoke = {
        {
            name = "turbine-smoke",
            north_position = {-0.0, 2.5},
            east_position = {-4.9, -4.5},
            frequency = 5 / 16,
            starting_vertical_speed = 0.1,
            slow_down_factor = 0.6,
            starting_frame_deviation = 60
        },
    },
    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.3,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk03.ogg"},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk03.ogg", volume = 0.45},
        apparent_volume = 2.5
    }
}
