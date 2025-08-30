RECIPE({
    type = "recipe",
    name = "solar-panel-mk02",
    energy_required = 15,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients = {
        { type = "item",  name = "aluminium-plate",         amount = 5 },
        { type = "item",  name = "monocrystalline-cell",    amount = 10 },
        { type = "item",  name = "anti-reflex-glass",       amount = 1 },
        { type = "item",  name = "advanced-circuit",        amount = 3 },
        { type = "item",  name = "tinned-cable",            amount = 10 },
        { type = "item",  name = "small-parts-02",          amount = 12 },
        { type = "item",  name = "axis-tracker",            amount = 1 },
        { type = "item",  name = "eva",                     amount = 10 },
        { type = "item",  name = "self-assembly-monolayer", amount = 10 },
        { type = "item",  name = "electric-engine-unit",    amount = 1 },
        { type = "fluid", name = "etching",                 amount = 50 },
        { type = "item",  name = "mechanical-parts-02",     amount = 1 },
    },
    results = {
        { type = "item", name = "solar-panel-mk02", amount = 1 }
    }
}):add_unlock("solar-mk02")

ITEM({
    type = "item",
    name = "solar-panel-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "d",
    place_result = "solar-panel-mk02",
    stack_size = 10
})



ENTITY({
    type = "electric-energy-interface",
    name = "solar-panel-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk02.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.5, result = "solar-panel-mk02" },
    fast_replaceable_group = "solar-panel-mk02",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -3.8, -3.8 }, { 3.8, 3.8 } },
    selection_box = { { -4.0, -4.0 }, { 4.0, 4.0 } },
    continuous_animation = true,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "7MJ",
        render_no_power_icon = false,
        input_flow_limit = "0W"
    },
    energy_production = "21MW",
    animation =
    {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/raw.png",
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/l.png",
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                draw_as_glow = true,
                shift = util.by_pixel(16, -80)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk02/sh.png",
                width = 352,
                height = 416,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(16, -80),
                draw_as_shadow = true
            },
        }
    },
    impact_category = "metal-large",
})

local entity = data.raw[ "electric-energy-interface" ][ "solar-panel-mk02" ]
local day_length = 12500 + 5000 + 5000
local frame_count = entity.animation.layers[ 1 ].frame_count
local animation_speed = 1 / day_length * frame_count
entity.animation.layers[ 1 ].animation_speed = animation_speed
entity.animation.layers[ 2 ].animation_speed = animation_speed
