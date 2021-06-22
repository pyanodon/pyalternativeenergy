RECIPE {
    type = 'recipe',
    name = 'tidal-mk01',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'pipe', 20}},
    results = {{'tidal-mk01', 1}}
}

ITEM {
    type = 'item',
    name = 'tidal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/tidal-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'd',
    place_result = 'tidal-mk01',
    stack_size = 10
}

ENTITY {
    type = 'electric-energy-interface',
    name = 'tidal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/tidal-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    -- minable = {mining_time = 0.5, result = "tidal-mk01"},
    fast_replaceable_group = 'tidal-mk01',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '500MJ',
        output_flow_limit = '50MW',
        render_no_power_icon = false
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    animations = {
        north = {
            layers = {
                {
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery.png',
                    frame_count = 1,
                    height = 255,
                    hr_version = {
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery.png',
                        frame_count = 1,
                        height = 430,
                        priority = 'high',
                        scale = 0.5,
                        width = 386,
                        x = 0,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 0,
                    y = 0
                },
                {
                    draw_as_shadow = true,
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png',
                    frame_count = 1,
                    height = 213,
                    hr_version = {
                        draw_as_shadow = true,
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png',
                        force_hr_shadow = true,
                        frame_count = 1,
                        height = 426,
                        priority = 'high',
                        scale = 0.5,
                        width = 674,
                        x = 0,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 0,
                    y = 0
                }
            }
        },
        east = {
            layers = {
                {
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery.png',
                    frame_count = 1,
                    height = 255,
                    hr_version = {
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery.png',
                        frame_count = 1,
                        height = 430,
                        priority = 'high',
                        scale = 0.5,
                        width = 386,
                        x = 386,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 337,
                    y = 0
                },
                {
                    draw_as_shadow = true,
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png',
                    frame_count = 1,
                    height = 213,
                    hr_version = {
                        draw_as_shadow = true,
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png',
                        force_hr_shadow = true,
                        frame_count = 1,
                        height = 426,
                        priority = 'high',
                        scale = 0.5,
                        width = 674,
                        x = 674,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 337,
                    y = 0
                }
            }
        },
        south = {
            layers = {
                {
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery.png',
                    frame_count = 1,
                    height = 255,
                    hr_version = {
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery.png',
                        frame_count = 1,
                        height = 430,
                        priority = 'high',
                        scale = 0.5,
                        width = 386,
                        x = 772,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 674,
                    y = 0
                },
                {
                    draw_as_shadow = true,
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png',
                    frame_count = 1,
                    height = 213,
                    hr_version = {
                        draw_as_shadow = true,
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png',
                        force_hr_shadow = true,
                        frame_count = 1,
                        height = 426,
                        priority = 'high',
                        scale = 0.5,
                        width = 674,
                        x = 1348,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 674,
                    y = 0
                }
            }
        },
        west = {
            layers = {
                {
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery.png',
                    frame_count = 1,
                    height = 255,
                    hr_version = {
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery.png',
                        frame_count = 1,
                        height = 430,
                        priority = 'high',
                        scale = 0.5,
                        width = 386,
                        x = 1158,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 1011,
                    y = 0
                },
                {
                    draw_as_shadow = true,
                    filename = '__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png',
                    frame_count = 1,
                    height = 213,
                    hr_version = {
                        draw_as_shadow = true,
                        filename = '__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png',
                        force_hr_shadow = true,
                        frame_count = 1,
                        height = 426,
                        priority = 'high',
                        scale = 0.5,
                        width = 674,
                        x = 2022,
                        y = 0
                    },
                    priority = 'high',
                    scale = 1,
                    width = 337,
                    x = 1011,
                    y = 0
                }
            }
        }
    }
}
