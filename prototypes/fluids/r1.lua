RECIPE {
    type = "recipe",
    name = "r1",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nano-cellulose", amount = 1},
        {type = "fluid", name = "anolyte",        amount = 100},
        {type = "fluid", name = "vacuum",         amount = 100},
    },
    results = {
        {type = "fluid", name = "r1",                amount = 100},
        {type = "fluid", name = "tailings", amount = 50},
    },
    main_product = "r1",
}:add_unlock("lithium-processing")


FLUID {
    type = "fluid",
    name = "r1",
    icon = "__pyalternativeenergygraphics__/graphics/icons/r1.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.278, g = 0.643, b = 0.243},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
