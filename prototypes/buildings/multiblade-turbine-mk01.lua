local collision_data = require 'prototypes.functions.collision-mask'
local wind_layer = collision_data and collision_data.wind_layer or 'layer-50' -- make YAFC happy

RECIPE {
    type = 'recipe',
    name = 'multiblade-turbine-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'small-electric-pole', 6},
        {'small-parts-01', 4},
        {'stone-brick', 20},
        {'inductor1', 18},
        {'steel-plate', 10},
        {'fish', 5},
    },
    results = {
        {'multiblade-turbine-mk01', 1}
    }
}:add_unlock('steel-processing')

ITEM {
    type = 'item',
    name = 'multiblade-turbine-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'z',
    place_result = 'multiblade-turbine-mk01',
    stack_size = 10
}

local proto = ENTITY{
    type = 'electric-energy-interface',
    name = 'multiblade-turbine-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png',
	icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    collision_mask = {wind_layer, 'object-layer', 'water-tile'},
    minable = {mining_time = 0.5, result = 'multiblade-turbine-mk01'},
    placeable_by = {item = 'multiblade-turbine-mk01', count = 1},
    fast_replaceable_group = 'multiblade-turbine-mk01',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '550KW',
        input_flow_limit = '0W',
        render_no_power_icon = false
    },
    energy_production = '550kW',
    energy_usage = '0kW',
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    continuous_animation = true,
    animations = {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/base-fishturbine.png',
                width = 224,
                height = 224,
                line_length = 1,
                frame_count = 1,
                repeat_count = 30,
                --shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r4.png',
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/s4.png',
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
                draw_as_shadow = true
            },
        }
    },
    localised_name = {'entity-name.multiblade-turbine-mk01'},
    localised_description = {'entity-description.multiblade-turbine-mk01'}
}

-- Make a copy with only the base animation
local new_proto = table.deepcopy(proto)
new_proto.name = proto.name .. '-blank'
new_proto.picture = proto.animations.layers[1]
new_proto.animations = nil
new_proto.render_layer = 'floor-mechanics'
data:extend{new_proto}

data:extend{{
    type = 'simple-entity-with-force',
    name = 'multiblade-turbine-mk01-collision',
    render_layer = 'ground-tile',
    icon = '__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
    collision_box = {{-13.4, -13.4}, {13.4, 13.4}},
    collision_mask = { wind_layer },
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selectable_in_game = false,
    picture = util.empty_sprite()
}}