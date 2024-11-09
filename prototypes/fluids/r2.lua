RECIPE {
    type = "recipe",
    name = "r2",
    category = "carbonfilter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "filtration-media", amount = 1},
        {type = "fluid", name = "r1",               amount = 50},
    },
    results = {
        {type = "fluid", name = "r2",                amount = 50},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "r2",
}:add_unlock("lithium-processing")

FLUID {
    type = "fluid",
    name = "r2",
    icon = "__pyalternativeenergygraphics__/graphics/icons/r2.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.278, g = 0.643, b = 0.243},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
