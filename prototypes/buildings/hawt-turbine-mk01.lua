local collision_data = require("prototypes.functions.collision-mask")
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE{
    type = 'recipe',
    name = 'hawt-turbine-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"rotor-mk01", 1},
        {"nacelle-mk01", 1},
        {"anemometer-mk01", 1},
        {"vane-mk01", 1},
        {"tower-mk01", 1},
    },
    results = {
        {"hawt-turbine-mk01", 1}
    }
}:add_unlock("wind-mk01")

ITEM{
    type = 'item',
    name = 'hawt-turbine-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'd',
    place_result = 'hawt-turbine-mk01',
    stack_size = 10
}

ENTITY{
    type = 'electric-energy-interface',
    name = 'hawt-turbine-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation', 'hidden'},
    collision_mask = {wind_layer, 'object-layer', 'player-layer', 'water-tile'},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk01"},
    placeable_by = {item = 'hawt-turbine-mk01', count = 1},
    fast_replaceable_group = 'hawt-turbine',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = "500MJ",
        output_flow_limit = "50MW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '0.5MW',
    energy_usage = '0kW',
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/hawt-turbine-mk01.ogg', volume = 0.85},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/hawt-turbine-mk01.ogg', volume = 0.6},
        apparent_volume = 2.5
    },
    picture = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/base-mk01.png',
        width = 224,
        height = 288,
        shift = util.by_pixel(0, -20),
    }
}

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'hawt-turbine-mk01-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk01.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-13.4, -13.4}, {13.4, 13.4}},
        collision_mask = { wind_layer },
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        selectable_in_game = false,
        picture = {
            filename = '__pyalternativeenergygraphics__/graphics/icons/filler.png',
            width = 4,
            height = 4,
        },
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-north',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r5.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a5.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l5.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s5.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 13),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-northeast',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r6.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a6.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l6.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s6.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 13),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-east',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r7.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a7.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l7.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s7.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 13),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-southeast',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r8.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a8.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l8.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s8.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 13),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-south',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r1.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a1.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l1.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s1.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 13),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-southwest',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r2.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a2.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l2.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s2.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 13),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-west',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r3.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a3.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l3.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s3.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 13),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})

data:extend({
    {
        type = 'animation',
        name = 'hawt-turbine-mk01-northwest',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r4.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/a4.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/l4.png',
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            }, {
                filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/s4.png',
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4,
                draw_as_shadow = true
            }
        }
    }
})
