FLUID {
    type = "fluid",
    name = "fluorine-gas",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/fluorine-gas.png",
    icon_size = 64,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.431, g = 0.556, b = 0.627},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
