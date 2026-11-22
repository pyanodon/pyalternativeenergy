RECIPE {
    type = "recipe",
    name = "clean-organic-pulp",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "organic-pulp",     amount = 50},
        {type = "item",  name = "filtration-media", amount = 2},
    },
    results = {
        {type = "fluid", name = "clean-organic-pulp", amount = 50},
        {type = "item",  name = "biomass",            amount = 3},
    },
    main_product = "clean-organic-pulp",
}:add_unlock("mof")

FLUID {
    type = "fluid",
    name = "clean-organic-pulp",
    icon = "__pyalternativeenergygraphics__/graphics/icons/clean-organic-pulp.png",
    icon_size = 64,
    default_temperature = 10,
    --heat_capacity = "1kJ",
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
