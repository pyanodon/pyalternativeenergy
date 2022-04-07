RECIPE{
    type = 'recipe',
    name = 'solar-panel-mk02',
    energy_required = 15,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients = {
        {'aluminium-plate', 5},
        {'monocrystalline-cell', 10},
        {'anti-reflex-glass', 1},
        {'advanced-circuit', 3},
        {'tinned-cable', 10},
        {'small-parts-02', 12},
        {'eva', 10},
        {'self-assembly-monolayer', 10},
        {'electric-engine-unit', 1},
        {type = "fluid", name = "etching", amount = 50},
    },
    results = {
        {'solar-panel-mk02', 1}
    }
}:add_unlock("solar-mk02")

ITEM{
    type = 'item',
    name = 'solar-panel-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk02.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk02',
    order = 'd',
    place_result = 'solar-panel-mk02',
    stack_size = 10
}



ENTITY{
    type = 'solar-panel',
    name = 'solar-panel-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk02.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'solar-panel-mk02'},
    fast_replaceable_group = 'solar-panel-mk02',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'solar',
    },
    --[[
    animation =
    {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/raw.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/l.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                draw_as_glow = true,
                shift = util.by_pixel(16, -80),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/sh.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80),
                draw_as_shadow = true,
                --animation_speed = 0.4
            },
        }
    },
    ]]--
    picture = {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/raw.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/l.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                draw_as_glow = true,
                shift = util.by_pixel(16, -80),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/sh.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80),
                draw_as_shadow = true,
                --animation_speed = 0.4
            },
        }
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    production = '4MW',
}

data:extend({
    {
        type = 'animation',
        name = 'solar-panel-mk02',
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/raw.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/l.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                draw_as_glow = true,
                shift = util.by_pixel(16, -80),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/sh.png',
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80),
                draw_as_shadow = true,
                --animation_speed = 0.4
            },
        }
    }
})
