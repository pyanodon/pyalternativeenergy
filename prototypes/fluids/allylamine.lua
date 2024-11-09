RECIPE {
    type = "recipe",
    name = "allylamine",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
        {type = "fluid", name = "chlorine", amount = 50},
        {type = "fluid", name = "ammonia",  amount = 50},
        {type = "fluid", name = "propene",  amount = 50},
    },
    results =
    {
        {type = "fluid", name = "allylamine", amount = 50}
    },
    --main_product = "butanol",
}:add_unlock("biofet")

FLUID {
    type = "fluid",
    name = "allylamine",
    icon = "__pyalternativeenergygraphics__/graphics/icons/allylamine.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
