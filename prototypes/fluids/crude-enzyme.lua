RECIPE {
    type = "recipe",
    name = "crude-enzyme",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "pre-enzyme",       amount = 100},
        {type = "fluid", name = "manure-bacteria",  amount = 50},
        {type = "item",  name = "ammonium-sulfate", amount = 1},
        {type = "item",  name = "bio-sample",       amount = 2},
    },
    results = {
        {type = "fluid", name = "crude-enzyme", amount = 50},
    },
    --main_product = "dcm",
}:add_unlock("nanozymes")

FLUID {
    type = "fluid",
    name = "crude-enzyme",
    icon = "__pyalternativeenergygraphics__/graphics/icons/crude-enzyme.png",
    icon_size = 64,
    default_temperature = 10,
    --heat_capacity = "1kJ",
    base_color = {r = 0.160, g = 0.329, b = 0.203},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    crudessure_to_speed_ratio = 0.4,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
