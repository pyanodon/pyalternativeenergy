FLUID {
    type = "fluid",
    name = "puo2",
    icon = "__pyalternativeenergygraphics__/graphics/icons/puo2.png",
    icon_size = 64,
    heat_capacity = "0.08kJ",
    default_temperature = 0.01, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 10000,
    --gas_temperature = 15,
    subgroup = "py-nuclear",
    order = "c",
    auto_barrel = false
}
