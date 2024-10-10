local factor = 30

RECIPE {
    type = "recipe",
    name = "steam-turbine-mk03",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {type = "item", name = "titanium-plate",     amount = 40 * factor},
        {type = "item", name = "processing-unit",    amount = 10 * factor},
        {type = "item", name = "ns-material",        amount = 25 * factor},
        {type = "item", name = "small-parts-03",     amount = 100 * factor},
        {type = "item", name = "graphene-roll",      amount = 25 * factor},
        {type = "item", name = "plastic-bar",        amount = 100 * factor},
        {type = "item", name = "brake-mk03",         amount = 5 * factor},
        {type = "item", name = "shaft-mk03",         amount = 1 * factor},
        {type = "item", name = "gearbox-mk03",       amount = 1 * factor},
        {type = "item", name = "utility-box-mk03",   amount = 2 * factor},
        {type = "item", name = "electronics-mk03",   amount = 1 * factor},
        {type = "item", name = "controler-mk03",     amount = 2 * factor},
        {type = "item", name = "aerogel",            amount = 20 * factor},
        {type = "item", name = "cf",                 amount = 100 * factor},
        {type = "item", name = "nxsb-alloy",         amount = 30 * factor},
        {type = "item", name = "centrifuge-mk02",    amount = 3},
        {type = "item", name = "steam-turbine-mk02", amount = 1},
    },
    results = {
        {type = "item", name = "steam-turbine-mk03", amount = 1}
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
        volume = 12000,
        pipe_covers = py.pipe_covers(true, true, true, true),
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        production_type = "input-output",
        filter = "pressured-steam",
        minimum_temperature = 500.0,
        pipe_connections = {
            {flow_direction = "input-output", position = {2.5, 5},   direction = defines.direction.south},
            {flow_direction = "input-output", position = {-2.5, 5},  direction = defines.direction.south},
            {flow_direction = "input-output", position = {2.5, -5},  direction = defines.direction.north},
            {flow_direction = "input-output", position = {-2.5, -5}, direction = defines.direction.north},


            {flow_direction = "input-output", position = {2.5, 4},   direction = defines.direction.south},
            {flow_direction = "input-output", position = {-2.5, 4},  direction = defines.direction.south},
            {flow_direction = "input-output", position = {2.5, -4},  direction = defines.direction.north},
            {flow_direction = "input-output", position = {-2.5, -4}, direction = defines.direction.north},
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
                draw_as_shadow = true,
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
                draw_as_shadow = true,
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
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk03.ogg"},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk03.ogg", volume = 0.45},
        apparent_volume = 2.5
    }
}
