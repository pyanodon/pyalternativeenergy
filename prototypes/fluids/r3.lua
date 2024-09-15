RECIPE {
    type = "recipe",
    name = "r3",
    category = "evaporator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "r2", amount = 100},
    },
    results = {
        {type = "fluid", name = "r3", amount = 100},
    },
    --main_product = "r2",
}:add_unlock("lithium-processing")

FLUID {
    type = "fluid",
    name = "r3",
    icon = "__pyalternativeenergygraphics__/graphics/icons/r3.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.278, g = 0.643, b = 0.243},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
