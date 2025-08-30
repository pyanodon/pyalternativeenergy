RECIPE({
    type = "recipe",
    name = "hawt-turbine-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "nacelle-mk04",     amount = 1 },
        { type = "item", name = "anemometer-mk04",  amount = 1 },
        { type = "item", name = "tower-mk04",       amount = 1 },
        { type = "item", name = "electronics-mk04", amount = 1 },
    },
    results = {
        { type = "item", name = "hawt-turbine-mk04", amount = 1 }
    }
}):add_unlock("wind-mk04")

ITEM({
    type = "item",
    name = "hawt-turbine-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "d",
    place_result = "hawt-turbine-mk04",
    stack_size = 10
})

local proto = ENTITY({
    type = "electric-energy-interface",
    name = "hawt-turbine-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk04.png",
    icon_size = 64,
    hidden = true,
    flags = { "placeable-neutral", "player-creation", },
    collision_mask = { layers = { wind_layer = true, object = true, player = true, water_tile = true } },
    minable = { mining_time = 0.5, result = "hawt-turbine-mk04" },
    placeable_by = { item = "hawt-turbine-mk04", count = 1 },
    fast_replaceable_group = "hawt-turbine",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -4.2, -4.2 }, { 4.2, 4.2 } },
    selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "80MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = "80MW",
    energy_usage = "0kW",
    impact_category = "metal-large",
    working_sound = {
        sound = { filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.6 },
        idle_sound = { filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.4 },
        apparent_volume = 2.5
    },
    continuous_animation = true,
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/r4.png",
                width = 352,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/a4.png",
                width = 352,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/s4.png",
                width = 352,
                height = 256,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/l4.png",
                width = 352,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                draw_as_glow = true,
            },
        }
    },
    localised_name = { "entity-name.hawt-turbine-mk04" },
    localised_description = { "entity-description.hawt-turbine-mk04" }
})

-- Make a copy with only the base animation
local new_proto = table.deepcopy(proto)
new_proto.name = proto.name .. "-blank"
new_proto.picture = table.deepcopy(proto.animations.layers[1])
new_proto.picture.filename = new_proto.picture.filename:gsub("r4", "base-mk04")
new_proto.animations = nil
new_proto.render_layer = "lower-object-above-shadow"
data:extend({ new_proto })

data:extend
({
    {
        type = "simple-entity-with-force",
        name = "hawt-turbine-mk04-collision",
        render_layer = "wires-above",
        icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk04.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation", "not-on-map" },
        collision_box = { { -13.4, -13.4 }, { 13.4, 13.4 } },
        collision_mask = { layers = { wind_layer = true } },
        selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
        selectable_in_game = false,
        picture = {
            filename = "__pyalternativeenergygraphics__/graphics/icons/filler.png",
            width = 4,
            height = 4,
        },
        created_effect = {
            type = "area",
            radius = 13.4,
            collision_mask = { layers = { wind_layer = true } },
            action_delivery = {
                type = "instant",
                target_effects = { {
                    type = "script",
                    effect_id = "turbine-area"
                } }
            }
        }
    }
})
