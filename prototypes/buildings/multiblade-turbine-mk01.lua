RECIPE {
    type = "recipe",
    name = "multiblade-turbine-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "small-electric-pole", amount = 6},
        {type = "item", name = "small-parts-01",      amount = 4},
        {type = "item", name = "stone-brick",         amount = 20},
        {type = "item", name = "inductor1",           amount = 18},
        {type = "item", name = "steel-plate",         amount = 10},
        {type = "item", name = "fish",                amount = 5},
    },
    results = {
        {type = "item", name = "multiblade-turbine-mk01", amount = 1}
    }
}:add_unlock("steel-processing")

ITEM {
    type = "item",
    name = "multiblade-turbine-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "z",
    place_result = "multiblade-turbine-mk01",
    stack_size = 10
}

local proto = ENTITY {
    type = "electric-energy-interface",
    name = "multiblade-turbine-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    collision_mask = {layers = {wind_layer = true, object = true, water_tile = true}},
    minable = {mining_time = 0.5, result = "multiblade-turbine-mk01"},
    placeable_by = {item = "multiblade-turbine-mk01", count = 1},
    fast_replaceable_group = "multiblade-turbine-mk01",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "550kW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = "550kW",
    energy_usage = "0kW",
    impact_category = "metal-large",
    continuous_animation = true,
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/base-fishturbine.png",
                width = 224,
                height = 224,
                line_length = 1,
                frame_count = 1,
                repeat_count = 30,
                --shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/r4.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/s4.png",
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
    localised_name = {"entity-name.multiblade-turbine-mk01"},
    localised_description = {"entity-description.multiblade-turbine-mk01"}
}

-- Make a copy with only the base animation but no energy
local new_proto = table.deepcopy(proto)
new_proto.type = "simple-entity-with-owner"
new_proto.name = proto.name .. "-blank"
new_proto.energy_source = nil
new_proto.energy_production = nil
new_proto.picture = proto.animations.layers[1]
new_proto.animations = nil
new_proto.render_layer = "floor-mechanics"
data:extend {new_proto}

data:extend {{
    type = "electric-energy-interface",
    name = "multiblade-turbine-mk01-interface",
    localised_name = {"entity-name.multiblade-turbine-mk01"},
    localised_description = {"entity-description.multiblade-turbine-mk01"},
    icon = data.raw["item-with-tags"]["multiblade-turbine-mk01"].icon,
    icon_size = 64,
    hidden = true,
    flags = {"not-on-map", "placeable-off-grid", "not-flammable", "hide-alt-info"},
    minable = nil,
    max_health = 1,
    selectable_in_game = false,
    energy_source = {
        type = "electric",
        buffer_capacity = "550kW",
        usage_priority = "primary-output",
        input_flow_limit = "0kW",
        render_no_network_icon = false,
        render_no_power_icon = false
    },
    energy_production = "550kW",
    energy_usage = "0kW",
    collision_mask = {layers = {}},
    charge_cooldown = 0,
    discharge_cooldown = 0
}}

data:extend {{
    type = "simple-entity-with-force",
    name = "multiblade-turbine-mk01-collision",
    render_layer = "ground-layer-1",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "not-on-map"},
    collision_box = {{-13.4, -13.4}, {13.4, 13.4}},
    collision_mask = {layers = {wind_layer = true}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selectable_in_game = false,
    picture = util.empty_sprite(),
    created_effect = {
        type = "area",
        radius = 13.4,
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
