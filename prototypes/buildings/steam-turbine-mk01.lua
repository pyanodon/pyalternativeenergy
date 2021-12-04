RECIPE {
    type = "recipe",
    name = "steam-turbine-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"pipe", 20},
        {"steel-plate", 100},
        {"iron-gear-wheel", 200},
        {"duralumin", 20},
        {"intermetallics", 10},
        {"shaft-mk01", 1},
        {"brake-mk01", 4},
        {"utility-box-mk01", 2},
        {"gearbox-mk01", 1},
        {"electronic-circuit", 30},
    },
    results = {
        {"steam-turbine-mk01", 1}
    }
}:add_unlock('nonrenewable-mk01')

ITEM {
    type = "item",
    name = "steam-turbine-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "x",
    place_result = "steam-turbine-mk01",
    stack_size = 10
}

ENTITY {
    type = "generator",
    name = "steam-turbine-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "steam-turbine-mk01"},
    max_health = 500,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 1,
    maximum_temperature = 1000,
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_box = {
        filter = "pressured-steam",
        minimum_temperature = 500,
        base_area = 1,
        base_level = -1,
        pipe_covers = DATA.Pipes.covers(false, true, true, true),
        --pipe_picture = pipe_pictures({0, 3}),
        production_type = "input-output",
        pipe_connections = {
            {type = "input-output", position = {3.0, 0.0}},
            {type = "input-output", position = {-3.0, 0.0}}
        }
    },
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
    },
    --scale=1.75,
    horizontal_animation = {
        filename = "__pyfusionenergygraphics__/graphics/entity/py-turbine/py-turbine-horizontal.png",
        width = 170,
        height = 178,
        frame_count = 40,
        line_length = 10,
        shift = {0.05, -0.0}
    },
    vertical_animation = {
        filename = "__pyfusionenergygraphics__/graphics/entity/py-turbine/py-turbine-vertical.png",
        width = 170,
        height = 178,
        frame_count = 40,
        line_length = 10,
        shift = {0.05, -0.0}
    },
    smoke = {
        {
            name = "turbine-smoke",
            north_position = {-0.0, -2},
            east_position = {-0.0, -2},
            frequency = 10 / 32,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        }
    },
    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.3,
    match_speed_to_activity = true,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/py-turbine.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/py-turbine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
