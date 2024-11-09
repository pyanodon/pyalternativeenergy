FLUID {
    type = "fluid",
    name = "void",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/photon.png",
    icon_size = 64,
    default_temperature = 0, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 10000,
    heat_capacity = "32kJ",
    gas_temperature = -1,
    subgroup = "py-nuclear",
    order = "c",
    hidden = true
}
