FLUID {
    type = "fluid",
    name = "hot-molten-salt",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hot-molten-salt.png",
    icon_size = 64,
    default_temperature = 1000, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.843, g = 0.521, b = 0.521},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 5000,
    heat_capacity = "1kJ",
    gas_temperature = 5000,
    subgroup = "py-alternativeenergy-fluids",
    order = "c",
    auto_barrel = false
}
