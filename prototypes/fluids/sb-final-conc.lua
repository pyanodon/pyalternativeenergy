FLUID({
    type = "fluid",
    name = "sb-final-conc",
    icon = "__pyalternativeenergygraphics__/graphics/icons/sb-final-conc.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = { r = 1, g = 0.529, b = 0.572 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-antimony",
    order = "c"
})
