RECIPE {
    type = "recipe",
    name = "py-heat-exchanger-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "py-heat-exchanger-mk03", amount = 1},
        {type = "item", name = "low-density-structure",  amount = 10},
        {type = "item", name = "mechanical-parts-04",    amount = 1},
    },
    results = {
        {type = "item", name = "py-heat-exchanger-mk04", amount = 1}
    }
}:add_unlock("nonrenewable-mk04")

ITEM {
    type = "item",
    name = "py-heat-exchanger-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/py-heat-exchanger-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "z",
    place_result = "py-heat-exchanger-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "py-heat-exchanger-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/py-heat-exchanger-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "py-heat-exchanger-mk04"},
    fast_replaceable_group = "py-heat-exchanger",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"heat-exchanger"},
    crafting_speed = 8,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1000kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {0.0, -0.2},
                west_position = {0.0, -0.2},
                south_position = {0.0, -0.2},
                east_position = {0.0, -0.2},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/on.png",
                    frame_count = 80,
                    width = 224,
                    height = 224,
                    line_length = 9,
                    animation_speed = 0.5
                }
            },
            {
                north_position = {0.0, -0.2},
                west_position = {0.0, -0.2},
                south_position = {0.0, -0.2},
                east_position = {0.0, -0.2},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/on-mask.png",
                    frame_count = 80,
                    width = 224,
                    height = 224,
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                    line_length = 9,
                    animation_speed = 0.5
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/off.png",
                    width = 224,
                    height = 224,
                    frame_count = 1,
                    shift = {0.0, -0.2},
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/off-mask.png",
                    width = 224,
                    height = 224,
                    frame_count = 1,
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                    shift = {0.0, -0.2},
                },
            },
        },
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {3.0, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.0}, direction = defines.direction.south}}
        }
        --off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/heat-exchanger.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/heat-exchanger.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
