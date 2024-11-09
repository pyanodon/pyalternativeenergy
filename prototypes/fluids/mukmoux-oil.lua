FLUID {
    type = "fluid",
    name = "mukmoux-oil",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mukmoux-oil.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.725, g = 0.482, b = 0.023},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "d"
}
