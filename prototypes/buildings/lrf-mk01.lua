RECIPE {
    type = 'recipe',
    name = 'lrf-building-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = 'iron-plate', amount = 600},
        {type = "item", name = 'steel-plate', amount = 200},
        {type = "item", name = 'glass', amount = 200},
        {type = "item", name = 'pipe', amount = 100},
        {type = "item", name = 'small-parts-01', amount = 1000},
        {type = "item", name = 'steam-engine', amount = 10},
        {type = "item", name = 'electronic-circuit', amount = 100},
        {type = "item", name = 'intermetallics', amount = 50},
        {type = "item", name = 'mechanical-parts-01', amount = 5},
    },
    results = {
        {type = "item", name = 'lrf-building-mk01', amount = 1}
    }
}:add_unlock('thermal-mk01')

ITEM {
    type = 'item',
    name = 'lrf-building-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/lrf-building-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-thermosolar',
    order = 'aa',
    place_result = 'lrf-building-mk01',
    stack_size = 10
}

ENTITY {
    type = 'assembling-machine',
    name = 'lrf-building-mk01',
    fixed_recipe = 'lrf-steam-1',
    icon = '__pyalternativeenergygraphics__/graphics/icons/lrf-building-mk01.png',
	icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'lrf-building-mk01'},
    fast_replaceable_group = 'lrf-building-mk01',
    max_health = 100,
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-7.8, -7.8}, {7.8, 7.8}},
    selection_box = {{-8.0, -8.0}, {8.0, 8.0}},
    match_animation_speed_to_activity = false,
    module_slots = 0,
    --allowed_effects = {'speed', 'consumption'},
    crafting_categories = {'lrf'},
    crafting_speed = 1,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-input',
        emissions_per_minute = {
            pollution = 1
        }
    },
    energy_usage = '30MW',
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(140, 17),
                west_position = util.by_pixel(140, 17),
                south_position = util.by_pixel(140, 17),
                east_position = util.by_pixel(140, 17),
                animation = {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/tela.png',
                    frame_count = 200,
                    line_length = 25,
                    width = 64,
                    height = 32,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(49, 112),
                west_position = util.by_pixel(49, 112),
                south_position = util.by_pixel(49, 112),
                east_position = util.by_pixel(49, 112),
                animation = {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/part.png',
                    frame_count = 36,
                    line_length = 6,
                    width = 96,
                    height = 96,
                    animation_speed = 0.4,
                    --draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(-192, -64),
                west_position = util.by_pixel(-192, -64),
                south_position = util.by_pixel(-192, -64),
                east_position = util.by_pixel(-192, -64),
                animation = {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/smoke.png',
                    frame_count = 50,
                    line_length = 10,
                    width = 128,
                    run_mode = 'backward',
                    height = 320,
                    animation_speed = 0.4,
                    --draw_as_glow = true,
                }
            }
        },
        animation = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/r.png',
                    width = 512,
                    height = 608,
                    frame_count = 1,
                    shift = util.by_pixel(0, -48)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/r-mask.png',
                    width = 512,
                    height = 608,
                    frame_count = 1,
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                    shift = util.by_pixel(0, -48)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/l.png',
                    width = 512,
                    height = 608,
                    frame_count = 1,
                    shift = util.by_pixel(0, -48),
                    draw_as_glow = true,
                },
            }
        },
    },
    fluid_boxes = {
        {
            production_type = 'input',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = 'input', position = {2.5, -7.8}, direction = defines.direction.north}}
        },
        {
            production_type = 'input',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = 'input', position = {-2.5, 7.8}, direction = defines.direction.south}}
        },
        {
            production_type = 'output',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = 'output', position = {-2.5, -7.8}, direction = defines.direction.north}}
        },
        {
            production_type = 'output',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = 'output', position = {2.5, 7.8}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/lrf.ogg', volume = 2.0},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/lrf.ogg', volume = 0.70},
        apparent_volume = 2.5
    }
}
