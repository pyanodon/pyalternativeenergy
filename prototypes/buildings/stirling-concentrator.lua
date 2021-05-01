RECIPE{
    type = 'recipe',
    name = 'stirling-concentrator',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'pipe', 20}},
    results = {{'stirling-concentrator', 1}}
}

ITEM{
    type = 'item',
    name = 'stirling-concentrator',
    icon = '__pyalternativeenergygraphics__/graphics/icons/stirling-concentrator.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk03',
    order = 'd',
    place_result = 'stirling-concentrator',
    stack_size = 10
}



ENTITY{
    type = 'electric-energy-interface',
    name = 'stirling-concentrator',
    icon = '__pyalternativeenergygraphics__/graphics/icons/stirling-concentrator.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'stirling-concentrator'},
    fast_replaceable_group = 'stirling-concentrator',
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
        output_flow_limit = "50MW",
        render_no_power_icon = false
    },
    animation =
    {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/raw-stirling.png',
                width = 256,
                height = 384,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(-16, -80),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/sh-stirling.png',
                width = 288,
                height = 224,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(32, -0),
                draw_as_shadow = true,
                --animation_speed = 0.4
            },
        }
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    placeable_by = {item = 'stirling-concentrator', count = 1}
}