
FLUID {
    type = "fluid",
    name = "geothermal-water",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-water.png",
    icon_size = 64,
    icon_mipmaps = 4,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.670, g = 0.439, b = 0.062},
    flow_color = {r = 0.670, g = 0.439, b = 0.062},
    max_temperature = 1000,
    --gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a"
}
