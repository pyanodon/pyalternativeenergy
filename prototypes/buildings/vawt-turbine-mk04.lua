local collision_data = require 'prototypes.functions.collision-mask'
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk04',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "shaft-mk04", amount = 1},
        {type = "item", name = "anemometer-mk04", amount = 1},
        {type = "item", name = "gearbox-mk04", amount = 1},
        {type = "item", name = "intelligent-unit", amount = 5},
        {type = "item", name = "small-parts-03", amount = 400},
        {type = "item", name = "metastable-quasicrystal", amount = 5},
        {type = "item", name = "low-density-structure", amount = 50},
        {type = "item", name = "nxzngd", amount = 4},
        {type = "item", name = "hyperelastic-material", amount = 4},
        {type = "item", name = "biopolymer", amount = 40},
        {type = "item", name = "cf", amount = 200},
        {type = "item", name = "fes", amount = 1},
        {type = "item", name = "electronics-mk04", amount = 2},
        {type = "item", name = "controler-mk04", amount = 1},
    },
    results = {
        {type = "item", name = "vawt-turbine-mk04", amount = 1}
    }
}:add_unlock("wind-mk04")

ITEM{
    type = 'item',
    name = 'vawt-turbine-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk04.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk04',
    order = 'd',
    place_result = 'vawt-turbine-mk04',
    stack_size = 10
}

ENTITY{
    type = 'electric-energy-interface',
    name = 'vawt-turbine-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk04.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    collision_mask = {layers = {wind_layer, 'object-layer', 'player-layer', 'water-tile'}},
    minable = {mining_time = 0.5, result = "vawt-turbine-mk04"},
    fast_replaceable_group = 'vawt-turbine',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    continuous_animation = true,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        
        buffer_capacity = "85MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '85MW',
    energy_usage = '0kW',
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk04.ogg', volume = 0.65},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk04.ogg', volume = 0.45},
        apparent_volume = 2.5
    },
    -- This should be the same as any animation on the assembler style buildings so if it doesnt work right just copy the animation section from one of them.
    animation =
        {
            layers =
            {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/r1.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, 16),
                    animation_speed = 0.2,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/r2.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -176),
                    animation_speed = 0.2,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/r3.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -368),
                    animation_speed = 0.2,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/r4.png',
                    width = 224,
                    height = 64,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -496),
                    animation_speed = 0.2,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/a1.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, 16),
                    animation_speed = 0.2,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/a2.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -176),
                    animation_speed = 0.2,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/a3.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -368),
                    animation_speed = 0.2,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/a4.png',
                    width = 224,
                    height = 64,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -496),
                    animation_speed = 0.2,
                    run_mode = "backward",
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/l1.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, 16),
                    animation_speed = 0.2,
                    draw_as_glow = true,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/l2.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -176),
                    animation_speed = 0.2,
                    draw_as_glow = true,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/l3.png',
                    width = 224,
                    height = 192,
                    line_length = 7,
                    frame_count = 70,
                    shift = util.by_pixel(0, -368),
                    animation_speed = 0.2,
                    draw_as_glow = true,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk04/sh.png',
                    width = 320,
                    height = 160,
                    line_length = 6,
                    frame_count = 70,
                    shift = util.by_pixel(48, -0),
                    animation_speed = 0.2,
                    draw_as_shadow = true
                },
            }
        }
}

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'vawt-turbine-mk04-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk04.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-17.4, -17.4}, {17.4, 17.4}},
        collision_mask = {layers = { wind_layer }},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
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
