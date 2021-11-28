RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"shaft-mk01", 1},
        {"belt", 15},
        {"bolts", 50},
        {"anemometer-mk01", 1},
        {"gearbox-mk01", 1},
        {"electronic-circuit", 20},
        {"small-parts-01", 100},
        {"intermetallics", 10},
        {"utility-box-mk01", 5},
        {"duralumin", 80},
        {"plastic-bar", 10},
        {"copper-cable", 50},
    },
    results = {
        {"vawt-turbine-mk01", 1}
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
    minable = {mining_time = 0.5, result = "vawt-turbine-mk01"},
    fast_replaceable_group = 'vawt-turbine-mk01',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    continuous_animation = true,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '500MJ',
        output_flow_limit = "50MW",
        render_no_power_icon = false
    },
    energy_production = '30MW',
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
