RECIPE {
    type = "recipe",
    name = "anolyte",
    category = "electrolyzer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "iron-plate",      amount = 2},
        {type = "fluid", name = "mother-liquor",   amount = 100},
        {type = "fluid", name = "hot-solution",    amount = 100},
        {type = "fluid", name = "phosphoric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "anolyte", amount = 100},
    },
    --main_product = "dodecanoic-acid",
}:add_unlock("lithium-processing")

FLUID {
    type = "fluid",
    name = "anolyte",
    icon = "__pyalternativeenergygraphics__/graphics/icons/anolyte.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.435, g = 0.827, b = 0.019},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
