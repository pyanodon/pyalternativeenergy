FLUID {
    type = "fluid",
    name = "uf6",
    icon = "__pyalternativeenergygraphics__/graphics/icons/uf6.png",
    icon_size = 64,
    heat_capacity = "0.02kJ",
    default_temperature = 0.01, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 10000,
    --gas_temperature = 15,
    subgroup = "py-nuclear",
    order = "c",
    auto_barrel = false
}
