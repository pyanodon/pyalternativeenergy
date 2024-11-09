RECIPE {
    type = "recipe",
    name = "heat-smelter-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"stone-brick",     20}, {"steel-plate", 40}, {"titanium-plate", 15}, {"iron-plate", 40}, {type = "item", name = "steam-engine", amount = 10},
        {"iron-gear-wheel", 50}, {type = "item", name = "electronic-circuit", amount = 5}
    },
    results = {{type = "item", name = "heat-smelter-mk01", amount = 1}}
}:add_unlock("uranium-processing")

ITEM {
    type = "item",
    name = "heat-smelter-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/smelter-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-rawores-buildings-mk01",
    order = "a",
    place_result = "heat-smelter-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "heat-smelter-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/smelter-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "heat-smelter-mk01"},
    fast_replaceable_group = "smelter",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"py-rawores-smelter"},
    crafting_speed = 1,
    energy_source = {
        type = "heat",
        max_temperature = 2000,
        specific_heat = "1MJ",
        max_transfer = "2GW",
        min_working_temperature = 500,
        minimum_glow_temperature = 350,
        connections = {
            {
                position = {0, -6.5},
                direction = defines.direction.north
            },
            {
                position = {1, -6.8},
                direction = defines.direction.north
            },
            {
                position = {2, -7},
                direction = defines.direction.north
            },
            {
                position = {3, -7.4},
                direction = defines.direction.north
            }
        },
        pipe_covers = make_4way_animation_from_spritesheet {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
            width = 64,
            height = 64,
            direction_count = 4,
            scale = 0.5
        },
        heat_pipe_covers = make_4way_animation_from_spritesheet(apply_heat_pipe_glow {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
            width = 64,
            height = 64,
            direction_count = 4,
            scale = 0.5
        }),
        heat_picture = {
            north = apply_heat_pipe_glow {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
                priority = "extra-high",
                width = 44,
                height = 96,
                shift = util.by_pixel(-0.5, 8.5),
                scale = 0.5
            },
            east = apply_heat_pipe_glow {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
                priority = "extra-high",
                width = 80,
                height = 80,
                shift = util.by_pixel(-21, -13),
                scale = 0.5
            },
            south = apply_heat_pipe_glow {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
                priority = "extra-high",
                width = 28,
                height = 40,
                shift = util.by_pixel(-1, -30),
                scale = 0.5
            },
            west = apply_heat_pipe_glow {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
                priority = "extra-high",
                width = 64,
                height = 76,
                shift = util.by_pixel(23, -13),
                scale = 0.5
            }
        }
    },
    --[[
    energy_source = {
        type = 'fluid',
        emissions_per_minute = {
            pollution = 10
        },
        destroy_non_fuel_fluid = false,
        fluid_box = {
            volume = 200,
            pipe_connections = {{flow_direction = 'input', position = {0, -6.0}, direction = defines.direction.north}},
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
            production_type = 'input'
        },
        effectivity = 1,
        burns_fluid = true,
        light_flicker = {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0}
        },
        scale_fluid_usage = true,
        fluid_usage_per_tick = 10,
        smoke = {
            {
                name = 'smoke',
                north_position = util.by_pixel(-176, -59),
                south_position = util.by_pixel(-176, -59),
                east_position = util.by_pixel(-176, -59),
                west_position = util.by_pixel(-176, -59),
                frequency = 90,
                slow_down_factor = 1,
                starting_vertical_speed = 0.05,
                starting_frame_deviation = 60
            }, {
                name = 'smoke',
                north_position = util.by_pixel(-176, -92),
                south_position = util.by_pixel(-176, -92),
                east_position = util.by_pixel(-176, -92),
                west_position = util.by_pixel(-176, -92),
                frequency = 90,
                slow_down_factor = 1,
                starting_vertical_speed = 0.05,
                starting_frame_deviation = 60
            }
        }
    },
    ]] --
    --burns_fluid = true,
    --scale_fluid_usage = true,
    energy_usage = "10MW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-144, -64),
                west_position = util.by_pixel(-144, -64),
                south_position = util.by_pixel(-144, -64),
                east_position = util.by_pixel(-144, -64),
                animation = {
                    filename = "__pyraworesgraphics__/graphics/entity/smelter/left-on.png",
                    frame_count = 50,
                    line_length = 16,
                    width = 128,
                    height = 480,
                    animation_speed = 0.3
                }
            }, {
            north_position = util.by_pixel(-144, -64),
            west_position = util.by_pixel(-144, -64),
            south_position = util.by_pixel(-144, -64),
            east_position = util.by_pixel(-144, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-on-mask.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }, {
            north_position = util.by_pixel(-144, -64),
            west_position = util.by_pixel(-144, -64),
            south_position = util.by_pixel(-144, -64),
            east_position = util.by_pixel(-144, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-fx.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                draw_as_glow = true
            }
        }, {
            north_position = util.by_pixel(-16, -64),
            west_position = util.by_pixel(-16, -64),
            south_position = util.by_pixel(-16, -64),
            east_position = util.by_pixel(-16, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-on.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3
            }
        }, {
            north_position = util.by_pixel(-16, -64),
            west_position = util.by_pixel(-16, -64),
            south_position = util.by_pixel(-16, -64),
            east_position = util.by_pixel(-16, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-on-mask.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }, {
            north_position = util.by_pixel(-16, -64),
            west_position = util.by_pixel(-16, -64),
            south_position = util.by_pixel(-16, -64),
            east_position = util.by_pixel(-16, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-fx.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                draw_as_glow = true
            }
        }, {
            north_position = util.by_pixel(96, -64),
            west_position = util.by_pixel(96, -64),
            south_position = util.by_pixel(96, -64),
            east_position = util.by_pixel(96, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-on.png",
                frame_count = 50,
                line_length = 16,
                width = 96,
                height = 480,
                animation_speed = 0.3
            }
        }, {
            north_position = util.by_pixel(96, -64),
            west_position = util.by_pixel(96, -64),
            south_position = util.by_pixel(96, -64),
            east_position = util.by_pixel(96, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-on-mask.png",
                frame_count = 50,
                line_length = 16,
                width = 96,
                height = 480,
                animation_speed = 0.3,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }, {
            north_position = util.by_pixel(96, -64),
            west_position = util.by_pixel(96, -64),
            south_position = util.by_pixel(96, -64),
            east_position = util.by_pixel(96, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-fx.png",
                frame_count = 50,
                line_length = 16,
                width = 96,
                height = 480,
                animation_speed = 0.3,
                draw_as_glow = true
            }
        }
        },
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/smelter/off.png",
                    width = 512,
                    height = 544,
                    frame_count = 1,
                    shift = util.by_pixel(16, -64)
                }, {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/off-mask.png",
                width = 512,
                height = 544,
                frame_count = 1,
                shift = util.by_pixel(16, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        -- 1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-3.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-5.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {3.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {5.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {3.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {5.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-3.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-5.0, 6.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/smelter.ogg", volume = 1.25},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/smelter.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
