RECIPE {
    type = "recipe",
    name = "steam-turbine-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe",               amount = 20},
        {type = "item", name = "steel-plate",        amount = 100},
        {type = "item", name = "iron-gear-wheel",    amount = 200},
        {type = "item", name = "duralumin",          amount = 20},
        {type = "item", name = "intermetallics",     amount = 10},
        {type = "item", name = "shaft-mk01",         amount = 1},
        {type = "item", name = "brake-mk01",         amount = 4},
        {type = "item", name = "utility-box-mk01",   amount = 2},
        {type = "item", name = "gearbox-mk01",       amount = 3},
        {type = "item", name = "electronic-circuit", amount = 30},
    },
    results = {
        {type = "item", name = "steam-turbine-mk01", amount = 1}
    }
}:add_unlock("nonrenewable-mk01")

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
    destroy_non_fuel_fluid = false,
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
        volume = 200,
        pipe_covers = py.pipe_covers(false, true, true, true),
        --pipe_picture = pipe_pictures({0, 3}),
        production_type = "input-output",
        pipe_connections = {
            {flow_direction = "input-output", position = {2.0, 0.0},  direction = defines.direction.east},
            {flow_direction = "input-output", position = {-2.0, 0.0}, direction = defines.direction.west}
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
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/py-turbine.ogg", volume = 0.5},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/py-turbine.ogg", volume = 0.3},
        apparent_volume = 1.5
    }
}
