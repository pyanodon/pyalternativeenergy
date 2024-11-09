RECIPE {
    type = "recipe",
    name = "trichlorosilane",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "silicon",           amount = 5},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
    },
    results = {
        {type = "fluid", name = "trichlorosilane", amount = 50},
        {type = "fluid", name = "hydrogen",        amount = 100},
    },
    main_product = "trichlorosilane",
}:add_unlock("silicon-mk01")

FLUID {
    type = "fluid",
    name = "trichlorosilane",
    icon = "__pyalternativeenergygraphics__/graphics/icons/trichlorosilane.png",
    icon_size = 64,
    default_temperature = 15,
    base_flow_rate = 100,
    --heat_capacity = "1kJ",
    base_color = {r = 0.407, g = 0.494, b = 0.494},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
