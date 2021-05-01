
FLUID {
    type = "fluid",
    name = "dirty-uranium",
    icon = "__base__/graphics/icons/iron-plate.png",
    icon_size = 64,
    icon_mipmaps = 4,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 1000,
    --gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "c"
}
