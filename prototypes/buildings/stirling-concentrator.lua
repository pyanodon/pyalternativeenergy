RECIPE{
    type = 'recipe',
    name = 'stirling-concentrator',
    energy_required = 0.5,
    enabled = false,
    category = 'advanced-crafting',
    ingredients = {
        {type = 'fluid', name = 'lubricant', amount = 100},
        {'axis-tracker', 2},
        {'mirror-mk02', 40},
        {'steel-plate', 50},
        {'cf', 30},
        {'stirling-engine', 1},
        {'self-assembly-monolayer', 10},
        {'regenerator', 1},
        {'tower-mk02', 1},
    },
    results = {{'stirling-concentrator', 1}}
}:add_unlock('thermal-mk02')

ITEM{
    type = 'item',
    name = 'stirling-concentrator',
    icon = '__pyalternativeenergygraphics__/graphics/icons/stirling-concentrator.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-thermosolar',
    order = 'bb',
    place_result = 'stirling-concentrator',
    stack_size = 50
}

local structure = {layers = {
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/raw-stirling.png',
        width = 192,
        height = 288,
        line_length = 5,
        frame_count = 10,
        shift = util.by_pixel(-16, -64),
        animation_speed = 0.001
    },
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/sh-stirling.png',
        width = 224,
        height = 160,
        line_length = 5,
        frame_count = 10,
        shift = util.by_pixel(32, -0),
        draw_as_shadow = true,
        animation_speed = 0.001
    }
}}

local empty = {
    filename = '__core__/graphics/empty.png',
    priority = 'extra-high',
    frame_count = 1,
    width = 1,
    height = 1
}

ENTITY {
    type = 'boiler',
    name = 'stirling-concentrator',
    icon = '__pyalternativeenergygraphics__/graphics/icons/stirling-concentrator.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'stirling-concentrator'},
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    mode = 'heat-water-inside',
    target_temperature = 5000,
    energy_source = {type = 'void'},
    energy_consumption = '1.6MW',
    structure = {
        north = structure,
        east = structure,
        south = structure,
        west = structure
    },
    fire_flicker_enabled = false,
    fire = {
        north = empty,
        east = empty,
        south = empty,
        west = empty
    },
    fire_glow_flicker_enabled = false,
    fire_glow = {
        north = empty,
        east = empty,
        south = empty,
        west = empty
    },
    burning_cooldown = 0,
    fluid_box = {
        production_type = 'input-output',
        pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
        pipe_covers = py.pipe_covers(false, true, true, true),
        base_area = 10,
        pipe_connections = {
            {flow_direction = 'input-output', position = {0, -3}, direction = defines.direction.north},
            {flow_direction = 'input-output', position = {0, 3}, direction = defines.direction.south},
            {flow_direction = 'input-output', position = {-3, 0}, direction = defines.direction.west},
            {flow_direction = 'input-output', position = {3, 0}, direction = defines.direction.east}
        },
        filter = 'molten-salt'
    },
    output_fluid_box = {
        pipe_connections = {},
        production_type = 'output'
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    placeable_by = {item = 'stirling-concentrator', count = 1}
}
