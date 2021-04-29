RECIPE {
    type = "recipe",
    name = "solar-concentrator",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"solar-concentrator", 1}
    }
}

ITEM {
    type = "item",
    name = "solar-concentrator",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-concentrator.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "solar-concentrator",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "solar-concentrator",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-concentrator.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "solar-concentrator"},
    fast_replaceable_group = "solar-concentrator",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/off.png",
                width = 416,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(0, -16)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/sh.png",
                width = 448,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(16, -16),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-96, 16),
            west_position = util.by_pixel(-176, 81),
            south_position = util.by_pixel(-176, 81),
            east_position = util.by_pixel(-176, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/flash-left.png",
                frame_count = 50,
                line_length = 10,
                width = 160,
                height = 320,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(64, 16),
            west_position = util.by_pixel(-176, 81),
            south_position = util.by_pixel(-176, 81),
            east_position = util.by_pixel(-176, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/flash-right.png",
                frame_count = 50,
                line_length = 10,
                width = 160,
                height = 320,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-144, -64),
            west_position = util.by_pixel(-176, 81),
            south_position = util.by_pixel(-176, 81),
            east_position = util.by_pixel(-176, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/l-left.png",
                frame_count = 50,
                line_length = 10,
                width = 128,
                height = 352,
                animation_speed = 0.3,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-16, -64),
            west_position = util.by_pixel(-176, 81),
            south_position = util.by_pixel(-176, 81),
            east_position = util.by_pixel(-176, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/l-mid.png",
                frame_count = 50,
                line_length = 10,
                width = 128,
                height = 352,
                animation_speed = 0.3,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(112, -64),
            west_position = util.by_pixel(-176, 81),
            south_position = util.by_pixel(-176, 81),
            east_position = util.by_pixel(-176, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/l-right.png",
                frame_count = 50,
                line_length = 10,
                width = 128,
                height = 352,
                animation_speed = 0.3,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1, -7}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1, -7}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3, -7}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3, -7}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1, 7}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1, 7}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3, 7}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3, 7}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/solar-concentrator.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/solar-concentrator.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
}
