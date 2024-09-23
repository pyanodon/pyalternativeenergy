local collision_data = require 'prototypes.functions.collision-mask'
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk03',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "shaft-mk03", amount = 1},
        {type = "item", name = "anemometer-mk03", amount = 1},
        {type = "item", name = "gearbox-mk03", amount = 1},
        {type = "item", name = "processing-unit", amount = 10},
        {type = "item", name = "small-parts-03", amount = 400},
        {type = "item", name = "ns-material", amount = 20},
        {type = "item", name = "utility-box-mk03", amount = 2},
        {type = "item", name = "controler-mk03", amount = 2},
        {type = "item", name = "electronics-mk03", amount = 1},
        {type = "item", name = "super-steel", amount = 60},
        {type = "item", name = "nxsb-alloy", amount = 30},
        {type = "item", name = "plastic-bar", amount = 40},
        {type = "item", name = "cf", amount = 200},
        {type = "item", name = "electric-engine-unit", amount = 1},
    },
    results = {
        {type = "item", name = "vawt-turbine-mk03", amount = 1}
    }
}:add_unlock("wind-mk03")

ITEM{
    type = 'item',
    name = 'vawt-turbine-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk03.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk03',
    order = 'd',
    place_result = 'vawt-turbine-mk03',
    stack_size = 10
}

ENTITY{
    type = 'electric-energy-interface',
    name = 'vawt-turbine-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk03.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    collision_mask = {layers = {wind_layer, object = true, 'player-layer', water_tile = true}},
    minable = {mining_time = 0.5, result = "vawt-turbine-mk03"},
    fast_replaceable_group = 'vawt-turbine',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    continuous_animation = true,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        
        buffer_capacity = "50MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk02.ogg', volume = 0.75},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk02.ogg', volume = 0.55},
        apparent_volume = 2.5
    },
    -- This should be the same as any animation on the assembler style buildings so if it doesnt work right just copy the animation section from one of them.
    animation =
        {
            layers =
            {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/ground.png',
                    width = 256,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    shift = util.by_pixel(0, 20),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/r1.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(-64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/r2.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/l1.png',
                    width = 256,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    shift = util.by_pixel(0, -156),
                    animation_speed = 0.3,
                    draw_as_glow = true,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/a1.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(-64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/a2.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/sh.png',
                    width = 64,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    shift = util.by_pixel(160, 20),
                    animation_speed = 0.3,
                },
            }
        }
}

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'vawt-turbine-mk03-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk03.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-17.4, -17.4}, {17.4, 17.4}},
        collision_mask = {layers = { wind_layer }},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        selectable_in_game = false,
        picture = {
            filename = '__pyalternativeenergygraphics__/graphics/icons/filler.png',
            width = 4,
            height = 4,
        },
        created_effect = {
            type = 'area',
            radius = 17.4,
            collision_mask = {layers = {wind_layer}},
            action_delivery = {
                type = 'instant',
                target_effects = {{
                    type = 'script',
                    effect_id = 'turbine-area'
                }}
            }
        }
    }
})
