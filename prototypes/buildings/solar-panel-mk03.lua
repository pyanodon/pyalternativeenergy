RECIPE {
    type = "recipe",
    name = "solar-panel-mk03",
    energy_required = 15,
    enabled = false,
    category = "crafting",
    ingredients = {
        {type = "item", name = "super-steel",          amount = 20},
        {type = "item", name = "dsnc-cell",            amount = 10},
        {type = "item", name = "anti-reflex-glass",    amount = 21},
        {type = "item", name = "processing-unit",      amount = 3},
        {type = "item", name = "axis-tracker",         amount = 1},
        {type = "item", name = "ns-material",          amount = 10},
        {type = "item", name = "small-parts-03",       amount = 25},
        {type = "item", name = "graphene-roll",        amount = 5},
        {type = "item", name = "electric-engine-unit", amount = 3},
        {type = "item", name = "aerogel",              amount = 5},
        {type = "item", name = "mechanical-parts-03",  amount = 1},
    },
    results = {{type = "item", name = "solar-panel-mk03", amount = 1}}

}:add_unlock("solar-mk03")

ITEM {
    type = "item",
    name = "solar-panel-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "d",
    place_result = "solar-panel-mk03",
    stack_size = 10
}

ENTITY {
    type = "solar-panel",
    name = "solar-panel-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "solar-panel-mk03"},
    max_health = 400,
    fast_replaceable_group = "solar-panel",
    corpse = "solar-panel-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    energy_source = {
        type = "electric",
        usage_priority = "solar"
    },
    stateless_visualisation = {
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk03/raw.png",
                    width = 384,
                    height = 416,
                    line_length = 5,
                    frame_count = 10,
                    animation_speed = 1 / 67500,
                    shift = util.by_pixel(32, -48)
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk03/sh.png",
                    width = 384,
                    height = 416,
                    line_length = 5,
                    frame_count = 10,
                    animation_speed = 1 / 67500,
                    shift = util.by_pixel(32, -48),
                    draw_as_shadow = true
                },
            }
        }
    },
    impact_category = "metal-large",
    production = "70MW"
}
