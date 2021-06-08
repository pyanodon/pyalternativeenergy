FLUID {
    type = "fluid",
    name = "sb-pulp-03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/sb-pulp-03.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 1, g = 0.360, b = 0.384},
    flow_color = {r = 1, g = 0.360, b = 0.384},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-antimony",
    order = "c"
}
