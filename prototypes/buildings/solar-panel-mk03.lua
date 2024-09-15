RECIPE{
    type = 'recipe',
    name = 'solar-panel-mk03',
    energy_required = 15,
    enabled = false,
    category = "crafting",
    ingredients = {
        {'super-steel', 20},
        {'dsnc-cell', 10},
        {'anti-reflex-glass', 21},
        {'processing-unit', 3},
        {'axis-tracker', 1},
        {'ns-material', 10},
        {'small-parts-03', 25},
        {'graphene-roll', 5},
        {'electric-engine-unit', 3},
        {'aerogel', 5},
        {"mechanical-parts-03", 1},
    },
    results = {{'solar-panel-mk03', 1}}

}:add_unlock("solar-mk03")

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
    continuous_animation = true,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '14MJ',
        render_no_power_icon = false,
        input_flow_limit = '0W'
    },
    energy_production = '14MW',
    animation =
    {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk03/raw.png',
                width = 384,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(32, -48)
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk03/sh.png',
                width = 384,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(32, -48),
                draw_as_shadow = true
            },
        }
    },

    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
}

local entity = data.raw['electric-energy-interface']['solar-panel-mk03']
local day_length = 12500 + 5000 + 5000
local frame_count = entity.animation.layers[1].frame_count
local animation_speed = 1 / day_length * frame_count
entity.animation.layers[1].animation_speed = animation_speed
entity.animation.layers[2].animation_speed = animation_speed