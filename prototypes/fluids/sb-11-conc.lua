FLUID {
    type = "fluid",
    name = "sb-11-conc",
    icon = "__pyalternativeenergygraphics__/graphics/icons/sb-11-conc.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 1, g = 0.529, b = 0.572},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-antimony",
    order = "c"
}
