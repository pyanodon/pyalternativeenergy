RECIPE {
    type = "recipe",
    name = "hawt-turbine-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "rotor-mk03",       amount = 1},
        {type = "item", name = "nacelle-mk03",     amount = 1},
        {type = "item", name = "anemometer-mk03",  amount = 1},
        {type = "item", name = "vane-mk03",        amount = 1},
        {type = "item", name = "tower-mk03",       amount = 1},
        {type = "item", name = "electronics-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "hawt-turbine-mk03", amount = 1}
    }
}:add_unlock("wind-mk03")

ITEM {
    type = "item",
    name = "hawt-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "d",
    place_result = "hawt-turbine-mk03",
    stack_size = 10
}

local proto = ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
    icon_size = 64,
    hidden = true,
    flags = {"placeable-neutral", "player-creation",},
    collision_mask = {layers = {wind_layer = true, object = true, player = true, water_tile = true}},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk03"},
    placeable_by = {item = "hawt-turbine-mk03", count = 1},
    fast_replaceable_group = "hawt-turbine",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "50MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = "50MW",
    energy_usage = "0kW",
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    continuous_animation = true,
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r4.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s4.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l4.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
        }
    },
    localised_name = {"entity-name.hawt-turbine-mk03"},
    localised_description = {"entity-description.hawt-turbine-mk03"}
}

-- Make a copy with only the base animation
local new_proto = table.deepcopy(proto)
new_proto.name = proto.name .. "-blank"
new_proto.picture = table.deepcopy(proto.animations.layers[1])
new_proto.picture.filename = new_proto.picture.filename:gsub("r4", "base-mk03")
new_proto.animations = nil
new_proto.render_layer = "lower-object-above-shadow"
data:extend {new_proto}

data:extend
{
    {
        type = "simple-entity-with-force",
        name = "hawt-turbine-mk03-collision",
        render_layer = "wires-above",
        icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation", "not-on-map"},
        collision_box = {{-12.9, -12.9}, {12.9, 12.9}},
        collision_mask = {layers = {wind_layer = true}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        selectable_in_game = false,
        picture = {
            filename = "__pyalternativeenergygraphics__/graphics/icons/filler.png",
            width = 4,
            height = 4,
        },
        created_effect = {
            type = "area",
            radius = 12.9,
            collision_mask = {layers = {wind_layer = true}},
            action_delivery = {
                type = "instant",
                target_effects = {{
                    type = "script",
                    effect_id = "turbine-area"
                }}
            }
        }
    }
}
