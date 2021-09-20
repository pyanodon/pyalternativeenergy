FLUID {
    type = "fluid",
    name = "hot-molten-salt",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hot-molten-salt.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.843, g = 0.521, b = 0.521},
    flow_color = {r = 0.843, g = 0.521, b = 0.521},
    max_temperature = 5000,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
