
FLUID {
    type = "fluid",
    name = "void",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon_64.png",
    icon_size = 64,
    default_temperature = 0, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 5000,
    heat_capacity = "32KJ",
    gas_temperature = -1,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "c"
}
