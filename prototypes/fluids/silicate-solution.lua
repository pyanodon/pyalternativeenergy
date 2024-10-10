RECIPE {
    type = "recipe",
    name = "silicate-solution",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "sb-oxide",      amount = 1},
        {type = "fluid", name = "teos",          amount = 50},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "ethanol",       amount = 100},
    },
    results = {
        {type = "fluid", name = "silicate-solution", amount = 100},
    },
    --main_product = "dodecanoic-acid",
}:add_unlock("sb-silicate")

FLUID {
    type = "fluid",
    name = "silicate-solution",
    icon = "__pyalternativeenergygraphics__/graphics/icons/silicate-solution.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.411, g = 0.376, b = 0.360},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
