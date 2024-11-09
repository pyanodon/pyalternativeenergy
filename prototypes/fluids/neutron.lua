FLUID {
    type = "fluid",
    name = "neutron",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/neutron.png",
    icon_size = 64,
    default_temperature = 0, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 5000,
    --gas_temperature = 15,
    heat_capacity = "100kJ",
    subgroup = "py-nuclear",
    order = "c",
    auto_barrel = false
}
