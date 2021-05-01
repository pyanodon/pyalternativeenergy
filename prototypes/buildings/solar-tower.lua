RECIPE {
    type = "recipe",
    name = "solar-tower-building",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"solar-tower-building", 1}
    }
}

ITEM {
    type = "item",
    name = "solar-tower-building",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-tower.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "solar-tower-building",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "solar-tower-building",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-tower.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "solar-tower-building"},
    fast_replaceable_group = "solar-tower",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-9.8, -9.8}, {9.8, 9.8}},
    selection_box = {{-10.0, -10.0}, {10.0, 10.0}},
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
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png",
                width = 640,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(0, -352)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png",
                width = 640,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(0, -352),
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png",
                width = 96,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(368, -352),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-176, 81),
            west_position = util.by_pixel(-176, 81),
            south_position = util.by_pixel(-176, 81),
            east_position = util.by_pixel(-176, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(48, 81),
            west_position = util.by_pixel(48, 81),
            south_position = util.by_pixel(48, 81),
            east_position = util.by_pixel(48, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-176, -143),
            west_position = util.by_pixel(-176, -143),
            south_position = util.by_pixel(-176, -143),
            east_position = util.by_pixel(-176, -143),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(48, -143),
            west_position = util.by_pixel(48, -143),
            south_position = util.by_pixel(48, -143),
            east_position = util.by_pixel(48, -143),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-176, -367),
            west_position = util.by_pixel(-176, -367),
            south_position = util.by_pixel(-176, -367),
            east_position = util.by_pixel(-176, -367),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(48, -367),
            west_position = util.by_pixel(48, -367),
            south_position = util.by_pixel(48, -367),
            east_position = util.by_pixel(48, -367),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(208, -143),
            west_position = util.by_pixel(208, -143),
            south_position = util.by_pixel(208, -143),
            east_position = util.by_pixel(208, -143),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png",
                frame_count = 20,
                line_length = 20,
                width = 96,
                height = 672,
                animation_speed = 0.3,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-16, -720),
            west_position = util.by_pixel(-16, -720),
            south_position = util.by_pixel(-16, -720),
            east_position = util.by_pixel(-16, -720),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png",
                frame_count = 20,
                line_length = 5,
                width = 288,
                height = 288,
                animation_speed = 0.3,
                --draw_as_glow = true,
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
            pipe_connections = {{type = "input", position = {1.5, -10.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -10.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, -10.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, -10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.5, 10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.5, 10.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 0.70},
        apparent_volume = 2.5
    }
}
