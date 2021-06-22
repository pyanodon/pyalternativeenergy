RECIPE{
    type = 'recipe',
    name = 'tidal-mk01',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'pipe', 20}},
    results = {{'tidal-mk01', 1}}
}

ITEM{
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

ENTITY{
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
    energy_source = { type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '500MJ',
        output_flow_limit = "50MW",
        render_no_power_icon = false
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    animation = {
        north ={
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/top.png",
                    width = 608,
                    height = 1312,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 30,
                    shift = util.by_pixel(1, -321),
                },
        },
        west ={
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/top.png",
                    width = 608,
                    height = 1312,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 30,
                    shift = util.by_pixel(1, -321),
                },
        },
        east ={
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/top.png",
                    width = 608,
                    height = 1312,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 30,
                    shift = util.by_pixel(1, -321),
                    scale = 0.9473
                },
        },
        south ={
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/top.png",
                    width = 608,
                    height = 1312,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 30,
                    shift = util.by_pixel(1, -321),
                    scale = 0.9473
                },
        },
    },
}

