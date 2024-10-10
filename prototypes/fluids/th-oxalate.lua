FLUID {
    type = "fluid",
    name = "th-oxalate",
    icon = "__pyalternativeenergygraphics__/graphics/icons/th-oxalate.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.023, g = 0.502, b = 0.264},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-thorium",
    order = "c"
}
