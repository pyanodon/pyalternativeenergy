RECIPE {
    type = "recipe",
    name = "pre-enzyme",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "mova-pulp3",      amount = 50},
        {type = "fluid", name = "buffer-solution", amount = 50},
        {type = "item",  name = "nexelit-plate",   amount = 3},
    },
    results = {
        {type = "fluid", name = "pre-enzyme", amount = 50},
    },
    --main_product = "dcm",
}:add_unlock("nanozymes")

FLUID {
    type = "fluid",
    name = "pre-enzyme",
    icon = "__pyalternativeenergygraphics__/graphics/icons/pre-enzyme.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    --heat_capacity = "1kJ",
    base_color = {r = 0.160, g = 0.329, b = 0.203},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
