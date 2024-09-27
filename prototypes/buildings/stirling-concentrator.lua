RECIPE{
    type = 'recipe',
    name = 'stirling-concentrator',
    energy_required = 0.5,
    enabled = false,
    category = 'advanced-crafting',
    ingredients = {
        {type = 'fluid', name = 'lubricant', amount = 100},
        {type = "item", name = 'axis-tracker', amount = 2},
        {type = "item", name = 'mirror-mk02', amount = 40},
        {type = "item", name = 'steel-plate', amount = 50},
        {type = "item", name = 'cf', amount = 30},
        {type = "item", name = 'stirling-engine', amount = 1},
        {type = "item", name = 'self-assembly-monolayer', amount = 10},
        {type = "item", name = 'regenerator', amount = 1},
        {type = "item", name = 'tower-mk02', amount = 1},
    },
    results = {{type = "item", name = 'stirling-concentrator', amount = 1}}
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
    mode = 'heat-fluid-inside',
    target_temperature = 5000,
    energy_source = {type = 'void'},
    energy_consumption = '1.6MW',
    burning_cooldown = 0,
    fluid_box = {
        production_type = 'input-output',
        pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
        pipe_covers = py.pipe_covers(false, true, true, true),
        volume = 1000,
        pipe_connections = {
            {flow_direction = 'input-output', position = {0, -2.2}, direction = defines.direction.north},
            {flow_direction = 'input-output', position = {0, 2.2}, direction = defines.direction.south},
            {flow_direction = 'input-output', position = {-2.2, 0}, direction = defines.direction.west},
            {flow_direction = 'input-output', position = {2.2, 0}, direction = defines.direction.east}
        },
        filter = 'molten-salt'
    },
    output_fluid_box = {
        volume = 100,
        pipe_connections = {},
        production_type = 'output'
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    placeable_by = {item = 'stirling-concentrator', count = 1},
  pictures = {
    north = {
        structure = structure,
        fire = empty,
        fire_glow = empty,
    },
    east = {
        structure = structure,
        fire = empty,
        fire_glow = empty,
    },
    south = {
        structure = structure,
        fire = empty,
        fire_glow = empty,
    },
    west = {
        structure = structure,
        fire = empty,
        fire_glow = empty,
    },
  }
}
