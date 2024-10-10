FLUID {
    type = "fluid",
    name = "void",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/photon.png",
    icon_size = 64,
    default_temperature = 0, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 10000,
    heat_capacity = "32kJ",
    gas_temperature = -1,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-nuclear",
    order = "c"
}
