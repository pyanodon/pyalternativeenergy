FLUID({
    type = "fluid",
    name = "fatty-acids",
    icon = "__pyalternativeenergygraphics__/graphics/icons/fatty-acids.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = { r = 0.705, g = 0.717, b = 0.227 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
})
