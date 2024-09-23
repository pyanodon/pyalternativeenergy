RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "shaft-mk01", amount = 1},
        {type = "item", name = "belt", amount = 15},
        {type = "item", name = "bolts", amount = 50},
        {type = "item", name = "anemometer-mk01", amount = 1},
        {type = "item", name = "gearbox-mk01", amount = 5},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "small-parts-01", amount = 100},
        {type = "item", name = "intermetallics", amount = 10},
        {type = "item", name = "utility-box-mk01", amount = 5},
        {type = "item", name = "duralumin", amount = 80},
        {type = "item", name = "plastic-bar", amount = 10},
        {type = "item", name = "copper-cable", amount = 50},
    },
    results = {
        {type = "item", name = "vawt-turbine-mk01", amount = 1}
    }
}:add_unlock("wind-mk01"):add_ingredient({type = "item", name = "skin", amount = 30})

ITEM{
    type = 'item',
    name = 'vawt-turbine-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'd',
    place_result = 'vawt-turbine-mk01',
    stack_size = 10
}

ENTITY{
    type = 'electric-energy-interface',
    name = 'vawt-turbine-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    collision_mask = {layers = {wind_layer = true, object = true, player = true, water_tile = true}},
    minable = {mining_time = 0.5, result = "vawt-turbine-mk01"},
    fast_replaceable_group = 'vawt-turbine',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    continuous_animation = true,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        
        buffer_capacity = "4MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '4MW',
    energy_usage = '0kW',
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk01.ogg', volume = 0.55},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk01.ogg', volume = 0.35},
        apparent_volume = 2.5
    },
    -- This should be the same as any animation on the assembler style buildings so if it doesnt work right just copy the animation section from one of them.
    animation =
        {
            layers =
            {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk01/r.png',
                    width = 192,
                    height = 320,
                    line_length = 10,
                    frame_count = 30,
                    shift = util.by_pixel(0, -64),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk01/a.png',
                    width = 192,
                    height = 320,
                    line_length = 10,
                    frame_count = 30,
                    shift = util.by_pixel(0, -64),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk01/sh.png',
                    width = 192,
                    height = 96,
                    line_length = 10,
                    frame_count = 30,
                    shift = util.by_pixel(32, 16),
                    animation_speed = 0.3,
                    draw_as_shadow = true
                },
            }
        }
}

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'vawt-turbine-mk01-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk01.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-17.9, -17.9}, {17.9, 17.9}},
        collision_mask = {layers = {wind_layer = true}},
        selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
        selectable_in_game = false,
        picture = {
            filename = '__pyalternativeenergygraphics__/graphics/icons/filler.png',
            width = 4,
            height = 4,
        },
        created_effect = {
            type = 'area',
            radius = 17.9,
            collision_mask = {layers = {wind_layer = true}},
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
