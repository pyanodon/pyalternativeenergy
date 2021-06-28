FLUID {
    type = "fluid",
    name = "re-pulp-01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/re-pulp-01.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.415, g = 0.380, b = 0.031},
    flow_color = {r = 0.415, g = 0.380, b = 0.031},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-hightech-fluids",
    order = "c"
}
