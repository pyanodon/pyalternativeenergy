RECIPE {
    type = "recipe",
    name = "bca",
    category = "chemistry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "benzene",       amount = 150},
        {type = "fluid", name = "acetic-acid",   amount = 50},
        {type = "item",  name = "saps",          amount = 10},
        {type = "item",  name = "cyanoacrylate", amount = 1},
    },
    results = {
        {type = "fluid", name = "bca", amount = 50},
    },
    --main_product = "dcm",
}:add_unlock("solar-mk03")

FLUID {
    type = "fluid",
    name = "bca",
    icon = "__pyalternativeenergygraphics__/graphics/icons/bca.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    --heat_capacity = "1kJ",
    base_color = {r = 0.6, g = 0.6, b = 0.65},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
