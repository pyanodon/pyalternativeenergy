RECIPE({
    type = "recipe",
    name = "pure-trichlorosilane",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "fluid", name = "trichlorosilane", amount = 50 },
    },
    results = {
        { type = "fluid", name = "pure-trichlorosilane", amount = 50 },
        { type = "item",  name = "iron-ore",             amount = 1, probability = 0.3 },
        { type = "item",  name = "ore-aluminium",        amount = 1, probability = 0.3 },
        { type = "item",  name = "copper-ore",           amount = 1, probability = 0.3 },
    },
    main_product = "pure-trichlorosilane",
}):add_unlock("silicon-mk01")

FLUID({
    type = "fluid",
    name = "pure-trichlorosilane",
    icon = "__pyalternativeenergygraphics__/graphics/icons/pure-trichlorosilane.png",
    icon_size = 64,
    default_temperature = 15,
    --heat_capacity = "1kJ",
    base_color = { r = 0.507, g = 0.594, b = 0.594 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "b",
})
