local collision_data = require 'prototypes.functions.collision-mask'
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE {
    type = "recipe",
    name = "multiblade-turbine-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "multiblade-turbine-mk01", amount = 1},
        {type = "item", name = "rotor-mk03", amount = 3},
        {type = "item", name = "anemometer-mk03", amount = 1},
        {type = "item", name = "vane-mk03", amount = 1},
        {type = "item", name = "tower-mk03", amount = 1},
        {type = "item", name = "fish-mk03", amount = 5}
    },
    results = {
        {type = "item", name = "multiblade-turbine-mk03", amount = 1}
    }
}:add_unlock("wind-mk03")

ITEM {
    type = "item",
    name = "multiblade-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "z",
    place_result = "multiblade-turbine-mk03",
    stack_size = 10
}

local proto = ENTITY {
    type = "electric-energy-interface",
    name = "multiblade-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    collision_mask = {layers = {[wind_layer] = true, ["object-layer"] = true, ["water-tile"] = true}},
    minable = {mining_time = 0.5, result = "multiblade-turbine-mk03"},
    placeable_by = {item = 'multiblade-turbine-mk03', count = 1},
    fast_replaceable_group = "multiblade-turbine-mk03",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "34MW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '34MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    continuous_animation = true,
    graphics_set = {
        animations = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png',
                    width = 288,
                    height = 288,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 30,
                    animation_speed = 0.5,
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r4.png",
                    width = 288,
                    height = 352,
                    line_length = 6,
                    frame_count = 30,
                    shift = util.by_pixel(0, -32),
                    animation_speed = 0.25,
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s4.png",
                    width = 320,
                    height = 224,
                    line_length = 6,
                    frame_count = 30,
                    shift = util.by_pixel(44, 16),
                    animation_speed = 0.25,
                    draw_as_shadow = true,
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l4.png",
                    width = 288,
                    height = 352,
                    line_length = 6,
                    frame_count = 30,
                    shift = util.by_pixel(0, -32),
                    animation_speed = 0.25,
                    draw_as_glow = true,
                },
            }
        },
    },
    localised_name = {'entity-name.multiblade-turbine-mk03'},
    localised_description = {'entity-description.multiblade-turbine-mk03'}
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
    name = 'multiblade-turbine-mk03-collision',
    render_layer = "ground-tile",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "not-on-map"},
    collision_box = {{-12.4, -12.4}, {12.4, 12.4}},
    collision_mask = {layers = { wind_layer }},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    selectable_in_game = false,
    picture = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png',
        width = 288,
        height = 288,
    },
    created_effect = {
        type = 'area',
        radius = 12.4,
        collision_mask = {layers = {[wind_layer] = true}},
        action_delivery = {
            type = 'instant',
            target_effects = {{
                type = 'script',
                effect_id = 'turbine-area'
            }}
        }
    }
}}