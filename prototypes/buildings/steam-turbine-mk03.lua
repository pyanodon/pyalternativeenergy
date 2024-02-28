local factor = 30

RECIPE {
    type = "recipe",
    name = "steam-turbine-mk03",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {'titanium-plate', 40 * factor},
        {'processing-unit', 10 * factor},
        {'ns-material', 25 * factor},
        {'small-parts-03', 100 * factor},
        {'graphene-roll', 25 * factor},
        {'plastic-bar', 100 * factor},
        {"brake-mk03", 5 * factor},
        {"shaft-mk03", 1 * factor},
        {"gearbox-mk03", 1 * factor},
        {"utility-box-mk03", 2 * factor},
        {"electronics-mk03", 1 * factor},
        {"controler-mk03", 2 * factor},
        {'aerogel', 20 * factor},
        {"cf", 100 * factor},
        {"nxsb-alloy", 30 * factor},
        {'centrifuge-mk02', 3},
        {"steam-turbine-mk02", 1},
    },
    results = {
        {"steam-turbine-mk03", 1}
    }
}:add_unlock("nonrenewable-mk03")

ITEM {
    type = "item",
    name = "steam-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "e",
    place_result = "steam-turbine-mk03",
    stack_size = 10
}

ENTITY {
    type = "generator",
    name = "steam-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "steam-turbine-mk03"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 100,
    maximum_temperature = 3000,
    destroy_non_fuel_fluid = false,
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-2.6, -7.5}, {2.6, 7.5}},
    selection_box = {{-3.0, -8.0}, {3.0, 8.0}},
    fluid_input = {
        name = "pressured-steam",
        amount = 0.0,
        minimum_temperature = 2000.0
    },
    fluid_box = {
        base_area = 60,
        base_level = -1,
        height = 2,
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        production_type = "input-output",
        filter = "pressured-steam",
        minimum_temperature = 500.0,
        pipe_connections = {
            {type = "input-output", position = {3.5, 5}},
            {type = "input-output", position = {-3.5, 5}},
            {type = "input-output", position = {3.5, -5}},
            {type = "input-output", position = {-3.5, -5}},

            
            {type = "input-output", position = {3.5, 4}},
            {type = "input-output", position = {-3.5, 4}},
            {type = "input-output", position = {3.5, -4}},
            {type = "input-output", position = {-3.5, -4}},
        }
    },
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
    },
    horizontal_animation = {
        layers = {
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk03/hor-raw.png",
            width = 512,
            height = 224,
            frame_count = 10,
            line_length = 3,
            shift = util.by_pixel(0, -16),
            animation_speed = 2.5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk03/hor-sh.png",
            width = 544,
            height = 160,
            frame_count = 10,
            line_length = 3,
            shift = util.by_pixel(16, 16),
            animation_speed = 2.5,
            draw_as_shadow = true;
            },
        },
    },
    vertical_animation = {
        layers = {
            {
        filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk03/ver-raw.png",
        width = 192,
        height = 544,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(0, -16),
        animation_speed = 2.5,
            },
            {
            filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk03/ver-sh.png",
            width = 224,
            height = 480,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(16, 16),
            animation_speed = 2.5,
            draw_as_shadow = true;
            },
        },
    },
    smoke = {
        {
            name = "light-smoke",
            north_position = {-0.0, 1.5},
            east_position = {-2.5, -2.5},
            frequency = 5 / 16,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
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
