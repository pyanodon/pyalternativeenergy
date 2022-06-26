RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk04',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"shaft-mk04", 1},
        {"anemometer-mk04", 1},
        {"gearbox-mk04", 1},
        {"intelligent-unit", 5},
        {"small-parts-03", 400},
        {"metastable-quasicrystal", 5},
        {"low-density-structure", 50},
        {"nxzngd", 4},
        {"hyperelastic-material", 4},
        {"biopolymer", 40},
        {"cf", 200},
        {"fes", 1},
        {"electronics-mk04", 2},
        {"controler-mk04", 1},
    },
    results = {
        {"vawt-turbine-mk04", 1}
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
        buffer_capacity = '500MJ',
        output_flow_limit = "50MW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '25MW',
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
