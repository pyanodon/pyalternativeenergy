RECIPE{
    type = 'recipe',
    name = 'hawt-turbine-mk01',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'pipe', 20}},
    results = {{'hawt-turbine-mk01', 1}}
}

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
    flags = {'placeable-neutral', 'player-creation'},
    -- minable = {mining_time = 0.5, result = "hawt-turbine-mk01"},
    fast_replaceable_group = 'hawt-turbine-mk01',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '500MJ',
        output_flow_limit = '50MW'
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    --[[
    picture = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r1.png',
        width = 224,
        height = 288,
        shift = util.by_pixel(0, -20),
    }
    ]]--
    -- This should be the same as any animation on the assembler style buildings so if it doesnt work right just copy the animation section from one of them.
    animation =
        {
            layers =
            {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/r5.png',
                    width = 224,
                    height = 288,
                    line_length = 6,
                    frame_count = 30,
                    shift = util.by_pixel(0, -20),
                    animation_speed = 0.4
                },
            }
        }
}
