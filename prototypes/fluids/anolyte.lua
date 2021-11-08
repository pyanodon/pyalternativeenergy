FLUID {
    type = "fluid",
    name = "anolyte",
    icon = "__pyalternativeenergygraphics__/graphics/icons/anolyte.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.435, g = 0.827, b = 0.019},
    flow_color = {r = 0.435, g = 0.827, b = 0.019},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
