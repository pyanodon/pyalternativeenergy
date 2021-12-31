RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk03',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"shaft-mk03", 1},
        {"anemometer-mk03", 1},
        {"gearbox-mk03", 1},
        {"processing-unit", 10},
        {"small-parts-03", 400},
        {"ns-material", 20},
        {"utility-box-mk03", 2},
        {"controler-mk03", 2},
        {"electronics-mk03", 1},
        {"super-steel", 60},
        {"nxsb-alloy", 30},
        {"plastic-bar", 40},
        {"cf", 200},
        {"electric-engine-unit", 1},
    },
    results = {
        {"vawt-turbine-mk03", 1}
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
    minable = {mining_time = 0.5, result = "vawt-turbine-mk03"},
    fast_replaceable_group = 'vawt-turbine-mk03',
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
        render_no_power_icon = false
    },
    energy_production = '120MW',
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
