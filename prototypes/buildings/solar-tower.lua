RECIPE {
    type = 'recipe',
    name = 'solar-tower-building',
    energy_required = 10,
    enabled = false,
    ingredients = {
        {type = 'item', name = 'concrete',                amount = 1000},
        {type = 'item', name = 'super-alloy',             amount = 1000},
        {type = 'item', name = 'cf',                      amount = 500},
        {type = 'item', name = 'biopolymer',              amount = 800},
        {type = 'item', name = 'niobium-pipe',            amount = 800},
        {type = 'item', name = 'metallic-glass',          amount = 300},
        {type = 'item', name = 'glass',                   amount = 1000},
        {type = 'item', name = 'nbfe-alloy',              amount = 1000},
        {type = 'item', name = 'science-coating',         amount = 500},
        {type = 'item', name = 'carbon-aerogel',          amount = 1000},
        {type = 'item', name = 'metastable-quasicrystal', amount = 50},
        {type = 'item', name = 'intelligent-unit',        amount = 10},
        {type = 'item', name = 'low-density-structure',   amount = 400},
        {type = 'item', name = 'mechanical-parts-04',     amount = 10}
    },
    results = {
        {type = 'item', name = 'solar-tower-building', amount = 1}
    }
}:add_unlock('thermal-mk04')

ITEM {
    type = 'item',
    name = 'solar-tower-building',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-tower.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-thermosolar',
    order = 'da',
    place_result = 'solar-tower-building',
    stack_size = 10
}

local structure = {
    layers = {
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png',
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352)
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png',
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352),
            draw_as_light = true
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png',
            width = 96,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(368, -352),
            draw_as_shadow = true
        }
    }
}

local fire = {
    layers = {
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png',
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, 81)
            --draw_as_glow = true,
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png',
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, 81)
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png',
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -143)
            --draw_as_glow = true,
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png',
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -143)
            --draw_as_glow = true,
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png',
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -367)
            --draw_as_glow = true,
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png',
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -367)
            --draw_as_glow = true,
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png',
            frame_count = 20,
            line_length = 20,
            width = 96,
            height = 672,
            animation_speed = 0.2,
            shift = util.by_pixel(208, -143)
            --draw_as_glow = true,
        },
        {
            filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png',
            frame_count = 20,
            line_length = 5,
            width = 288,
            height = 288,
            animation_speed = 0.2,
            shift = util.by_pixel(-16, -720)
            --draw_as_glow = true,
        }
    }
}

local fire_glow = {
    filename = '__core__/graphics/empty.png',
    priority = 'extra-high',
    frame_count = 1,
    width = 1,
    height = 1
}

ENTITY {
    type = 'boiler',
    name = 'solar-tower-building',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-tower.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 20, result = 'solar-tower-building'},
    max_health = 5500,
    corpse = 'boiler-remnants',
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    mode = 'output-to-separate-pipe',
    collision_box = {{-9.8, -9.8}, {9.8, 9.8}},
    collision_mask = {layers = {item = true, object = true, player = true, water_tile = true, sut_placement_distance = true}},
    selection_box = {{-10.0, -10.0}, {10.0, 10.0}},
    target_temperature = 5000,
    fluid_box = {
        volume = 10000,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {
            {flow_direction = 'input', position = {7.5, 9.5},  direction = defines.direction.south},
            {flow_direction = 'input', position = {6.5, 9.5},  direction = defines.direction.south},
            {flow_direction = 'input', position = {-7.5, 9.5}, direction = defines.direction.south},
            {flow_direction = 'input', position = {-6.5, 9.5}, direction = defines.direction.south}
        },
        production_type = 'input',
        filter = 'molten-salt'
    },
    output_fluid_box = {
        volume = 10000,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {
            {flow_direction = 'output', position = {7.5, -9.5},  direction = defines.direction.north},
            {flow_direction = 'output', position = {6.5, -9.5},  direction = defines.direction.north},
            {flow_direction = 'output', position = {-7.5, -9.5}, direction = defines.direction.north},
            {flow_direction = 'output', position = {-6.5, -9.5}, direction = defines.direction.north},
        },
        production_type = 'output',
        filter = 'hot-molten-salt'
    },
    energy_consumption = '16GW',
    energy_source = {
        type = 'fluid',
        emissions_per_minute = {
            pollution = 0
        },
        destroy_non_fuel_fluid = false,
        fluid_box = {
            volume = 100,
            pipe_connections = {},
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
            production_type = 'input',
            filter = 'void'
        },
        effectivity = 1,
        burns_fluid = false,
        scale_fluid_usage = false,
        fluid_usage_per_tick = 1,
        render_no_power_icon = false
    },
    working_sound = {
        sound = {
            filename = '__base__/sound/boiler.ogg',
            volume = 0.8
        },
        max_sounds_per_type = 3
    },
    burning_cooldown = 60,
    pictures = {
        north = {
            structure = structure,
            fire = fire,
            fire_glow = fire_glow,
        },
        east = {
            structure = structure,
            fire = fire,
            fire_glow = fire_glow,
        },
        south = {
            structure = structure,
            fire = fire,
            fire_glow = fire_glow,
        },
        west = {
            structure = structure,
            fire = fire,
            fire_glow = fire_glow,
        },
    }
}
