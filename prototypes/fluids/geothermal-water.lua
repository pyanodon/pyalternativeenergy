FLUID {
    type = "fluid",
    name = "geothermal-water",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-water.png",
    icon_size = 64,

    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.670, g = 0.439, b = 0.062},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 3000,
    --gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "a"
}
