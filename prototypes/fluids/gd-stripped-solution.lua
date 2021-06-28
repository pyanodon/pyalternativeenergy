FLUID {
    type = "fluid",
    name = "gd-stripped-solution",
    icon = "__pyalternativeenergygraphics__/graphics/icons/gd-stripped-solution.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.482, g = 0.262, b = 0.070},
    flow_color = {r = 0.482, g = 0.262, b = 0.070},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-gd",
    order = "c"
}
