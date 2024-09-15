local factor = 100

RECIPE {
    type = "recipe",
    name = "steam-turbine-mk04",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {type = "item", name = "concrete", amount = 30 * factor},
        {type = "item", name = "super-alloy", amount = 30 * factor},
        {type = "item", name = "electronics-mk04", amount = 1 * factor},
        {type = "item", name = "low-density-structure", amount = 10 * factor},
        {type = "item", name = "nbfe-alloy", amount = 10 * factor},
        {type = "item", name = "gearbox-mk04", amount = 1 * factor},
        {type = "item", name = "brake-mk04", amount = 2 * factor},
        {type = "item", name = "nxzngd", amount = 8 * factor},
        {type = "item", name = "cf", amount = 50 * factor},
        {type = "item", name = "fes", amount = 3 * factor},
        {type = "item", name = "shaft-mk04", amount = 1 * factor},
        {type = "item", name = 'metastable-quasicrystal', amount = 1 * factor},
        {type = "item", name = "hyperelastic-material", amount = 10 * factor},
        {type = "item", name = "biopolymer", amount = 30 * factor},
        {type = "item", name = "controler-mk04", amount = 4 * factor},
        {type = "item", name = 'centrifuge-mk03', amount = 5},
        {type = "item", name = "steam-turbine-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "steam-turbine-mk04", amount = 1}
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
        volume = 120000,
        pipe_covers = py.pipe_covers(true, true, true, true),
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        production_type = "input-output",
        filter = "pressured-steam",
        minimum_temperature = 500.0,
        pipe_connections = {
            {flow_direction = "input-output", position = {2.6, 6.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {-2.6, 6.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {2.6, -6.5}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {-2.6, -6.5}, direction = defines.direction.north},

            
            {flow_direction = "input-output", position = {2.6, 7.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {-2.6, 7.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {2.6, -7.5}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {-2.6, -7.5}, direction = defines.direction.north},

            
            {flow_direction = "input-output", position = {2.6, 8.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {-2.6, 8.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {2.6, -8.5}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {-2.6, -8.5}, direction = defines.direction.north},

            
            {flow_direction = "input-output", position = {2.6, 5.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {-2.6, 5.5}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {2.6, -5.5}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {-2.6, -5.5}, direction = defines.direction.north},
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
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk03.ogg"},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk03.ogg", volume = 0.45},
        apparent_volume = 2.5
    }
}
