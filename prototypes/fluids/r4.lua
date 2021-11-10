RECIPE {
    type = "recipe",
    name = "r4",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "r3", amount = 100},
        {type = "item", name = "sodium-hydroxide", amount = 5},
    },
    results = {
        {type = "fluid", name = "r4", amount = 100},
    },
    --main_product = "r2",
}:add_unlock("lithium-processing")

FLUID {
    type = "fluid",
    name = "r4",
    icon = "__pyalternativeenergygraphics__/graphics/icons/r4.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.278, g = 0.643, b = 0.243},
    flow_color = {r = 0.278, g = 0.643, b = 0.243},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
