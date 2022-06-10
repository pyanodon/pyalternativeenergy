
FLUID {
    type = "fluid",
    name = "uf6",
    icon = "__pyalternativeenergygraphics__/graphics/icons/uf6.png",
    icon_size = 64,
    heat_capacity = "0.02KJ",
    default_temperature = 0.01, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 10000,
    --gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-nuclear",
    order = "c",
    auto_barrel = false
}
