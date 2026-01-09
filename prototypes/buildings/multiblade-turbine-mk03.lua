RECIPE {
    type = "recipe",
    name = "multiblade-turbine-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "multiblade-turbine-mk01", amount = 1},
        {type = "item", name = "rotor-mk03",              amount = 3},
        {type = "item", name = "anemometer-mk03",         amount = 1},
        {type = "item", name = "vane-mk03",               amount = 1},
        {type = "item", name = "tower-mk03",              amount = 1},
        {type = "item", name = "fish-mk03",               amount = 5}
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
    type = "solar-panel",
    name = "multiblade-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    collision_mask = {layers = {wind_layer = true, object = true, water_tile = true}},
    minable = {mining_time = 0.5, result = "multiblade-turbine-mk03"},
    placeable_by = {item = "multiblade-turbine-mk03", count = 1},
    fast_replaceable_group = "multiblade-turbine-mk03",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    energy_source = {
        type = "electric",
        usage_priority = "solar",
        buffer_capacity = "34MJ",
        render_no_power_icon = false
    },
    production = "7MW",
    solar_coefficient_property = "py-wind-speed",
    performance_at_day = 1,
    performance_at_night = 1,
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    picture = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
                width = 288,
                height = 288,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r4.png",
                width = 288,
                height = 352,
                shift = util.by_pixel(0, -32),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s4.png",
                width = 320,
                height = 224,
                shift = util.by_pixel(44, 16),
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l4.png",
                width = 288,
                height = 352,
                shift = util.by_pixel(0, -32),
                draw_as_glow = true,
            },
        }
    },
    localised_name = {"entity-name.multiblade-turbine-mk03"},
    localised_description = {"entity-description.multiblade-turbine-mk03"}
}

-- Make a copy with only the base animation
local new_proto = table.deepcopy(proto)
new_proto.name = proto.name .. "-blank"
new_proto.picture = table.deepcopy(proto.picture.layers[1])
data:extend {new_proto}

data:extend {{
    type = "simple-entity-with-force",
    name = "multiblade-turbine-mk03-collision",
    render_layer = "ground-layer-1",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "not-on-map"},
    collision_box = {{-12.4, -12.4}, {12.4, 12.4}},
    collision_mask = {layers = {wind_layer = true}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    selectable_in_game = false,
    picture = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png",
        width = 288,
        height = 288,
    },
    created_effect = {
        type = "area",
        radius = 12.4,
        collision_mask = {layers = {wind_layer = true}},
        action_delivery = {
            type = "instant",
            target_effects = {{
                type = "script",
                effect_id = "turbine-area"
            }}
        }
    }
}}
