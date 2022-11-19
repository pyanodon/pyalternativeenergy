local collision_data = require("prototypes.functions.collision-mask")
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk02',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"shaft-mk02", 1},
        {"anemometer-mk02", 1},
        {"gearbox-mk02", 1},
        {"advanced-circuit", 10},
        {"small-parts-02", 300},
        {"self-assembly-monolayer", 20},
        {"utility-box-mk02", 3},
        {"controler-mk02", 2},
        {"rubber", 30},
        {"stainless-steel", 50},
        {"eva", 40},
        {"green-wire", 50},
        {"electric-engine-unit", 1},
        {"electronics-mk02", 1},
    },
    results = {
        {"vawt-turbine-mk02", 1}
    }
}:add_unlock("wind-mk02")

ITEM{
    type = 'item',
    name = 'vawt-turbine-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk02.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk02',
    order = 'd',
    place_result = 'vawt-turbine-mk02',
    stack_size = 10
}

ENTITY{
    type = 'electric-energy-interface',
    name = 'vawt-turbine-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk02.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    collision_mask = {wind_layer, 'object-layer', 'player-layer', 'water-tile'},
    minable = {mining_time = 0.5, result = "vawt-turbine-mk02"},
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
        buffer_capacity = '500MJ',
        output_flow_limit = "50MW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '20MW',
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
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk02/r.png',
                    width = 224,
                    height = 320,
                    line_length = 9,
                    frame_count = 50,
                    shift = util.by_pixel(0, -48),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk02/sh.png',
                    width = 64,
                    height = 224,
                    line_length = 9,
                    frame_count = 50,
                    shift = util.by_pixel(144, 0),
                    animation_speed = 0.3,
                    --draw_as_shadow = true
                },
            }
        }
}

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'vawt-turbine-mk02-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk02.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-17.4, -17.4}, {17.4, 17.4}},
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
