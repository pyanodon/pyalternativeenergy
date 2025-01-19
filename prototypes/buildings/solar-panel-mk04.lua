RECIPE {
    type = "recipe",
    name = "solar-panel-mk04",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {type = "item", name = "super-alloy",             amount = 50},
        {type = "item", name = "mqdc",                    amount = 10},
        {type = "item", name = "anti-reflex-glass",       amount = 20},
        {type = "item", name = "intelligent-unit",        amount = 5},
        {type = "item", name = "metastable-quasicrystal", amount = 1},
        {type = "item", name = "small-parts-03",          amount = 100},
        {type = "item", name = "biopolymer",              amount = 30},
        {type = "item", name = "molybdenum-plate",        amount = 10},
        {type = "item", name = "carbon-nanotube",         amount = 10},
        {type = "item", name = "milfe",                   amount = 5},
        {type = "item", name = "mechanical-parts-04",     amount = 1},
    },
    results = {{type = "item", name = "solar-panel-mk04", amount = 1}}

}:add_unlock("solar-mk04")

ITEM {
    type = "item",
    name = "solar-panel-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "d",
    place_result = "solar-panel-mk04",
    stack_size = 10
}

ENTITY {
    type = "solar-panel",
    name = "solar-panel-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "solar-panel-mk04"},
    max_health = 200,
    fast_replaceable_group = "solar-panel",
    corpse = "solar-panel-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    energy_source =
    {
        type = "electric",
        usage_priority = "solar"
    },
    picture = {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1
    },
    integration_patch =
    {
        layers =
        {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk04/raw.png",
                width = 384,
                height = 448,
                shift = util.by_pixel(-0, -32),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk04/l.png",
                width = 384,
                height = 448,
                shift = util.by_pixel(-0, -32),
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk04/sh.png",
                width = 416,
                height = 384,
                shift = util.by_pixel(16, -0),
                draw_as_shadow = true,
            }
        }
    },
    integration_patch_render_layer = "object",
    impact_category = "metal-large",
    production = "35MW"
}
