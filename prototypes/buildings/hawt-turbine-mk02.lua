local collision_data = require 'prototypes.functions.collision-mask'
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE {
    type = "recipe",
    name = "hawt-turbine-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"rotor-mk02", 1},
        {"nacelle-mk02", 1},
        {"anemometer-mk02", 1},
        {"vane-mk02", 1},
        {"tower-mk02", 1},
        {"electronics-mk02", 3},
    },
    results = {
        {"hawt-turbine-mk02", 1}
    }
}:add_unlock("wind-mk02")

ITEM {
    type = "item",
    name = "hawt-turbine-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "d",
    place_result = "hawt-turbine-mk02",
    stack_size = 10
}

local proto = ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "hidden"},
    collision_mask = {wind_layer, 'object-layer', 'player-layer', 'water-tile'},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk02"},
    placeable_by = {item = 'hawt-turbine-mk02', count = 1},
    fast_replaceable_group = "hawt-turbine",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",

        buffer_capacity = "25MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '25MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk02.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk02.ogg", volume = 0.8},
        apparent_volume = 2.5
    },
    continuous_animation = true,
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/r4.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/a4.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/s4.png",
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/l4.png",
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
                draw_as_glow = true,
            },
        }
    },
    localised_name = {'entity-name.hawt-turbine-mk02'},
    localised_description = {'entity-description.hawt-turbine-mk02'}
}

-- Make a copy with only the base animation
local new_proto = table.deepcopy(proto)
new_proto.name = proto.name .. '-blank'
new_proto.picture = table.deepcopy(proto.animations.layers[1])
new_proto.picture.filename = new_proto.picture.filename:gsub('r4', 'base-mk02')
new_proto.animations = nil
new_proto.render_layer = 'lower-object-above-shadow'
data:extend{new_proto}

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'hawt-turbine-mk02-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk02.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-13.4, -13.4}, {13.4, 13.4}},
        collision_mask = { wind_layer },
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        selectable_in_game = false,
        picture = {
            filename = '__pyalternativeenergygraphics__/graphics/icons/filler.png',
            width = 4,
            height = 4,
        },
        created_effect = {
            type = 'area',
            radius = 13.4,
            collision_mask = {wind_layer},
            action_delivery = {
                type = 'instant',
                target_effects = {{
                    type = 'script',
                    effect_id = 'turbine-area'
                }}
            }
        }
    }
})