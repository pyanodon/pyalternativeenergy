RECIPE{
    type = 'recipe',
    name = 'solar-panel-mk03',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'pipe', 20}},
    results = {{'solar-panel-mk03', 1}}
}

ITEM{
    type = 'item',
    name = 'solar-panel-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk03.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk03',
    order = 'd',
    place_result = 'solar-panel-mk03',
    stack_size = 10
}



ENTITY{
    type = 'electric-energy-interface',
    name = 'solar-panel-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk03.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'solar-panel-mk03'},
    fast_replaceable_group = 'solar-panel-mk03',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
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
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk03/raw.png',
                width = 384,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(32, -48),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk03/sh.png',
                width = 384,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(32, -48),
                draw_as_shadow = true,
                --animation_speed = 0.4
            },
        }
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    placeable_by = {item = 'solar-panel-mk03', count = 1}
}