
FLUID {
    type = "fluid",
    name = "reactor-waste-1",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-1.png",
    icon_size = 64,

    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 1000,
    --gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-nuclear",
    order = "c"
}


FLUID {
    type = "fluid",
    name = "reactor-waste-2",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-2.png",
    icon_size = 64,

    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 1000,
    --gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-nuclear",
    order = "c"
}
