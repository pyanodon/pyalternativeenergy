RECIPE {
    type = "recipe",
    name = "hot-solution",
    category = "mixer",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "sb-silicate", amount = 1},
        {type = "fluid", name = "salt-solution", amount = 100},
        {type = "fluid", name = "mibc", amount = 50},
        {type = "item", name = "tbp", amount = 1},
        {type = "item", name = "zinc-chloride", amount = 2},
    },
    results = {
        {type = "fluid", name = "hot-solution", amount = 100},
    },
    --main_product = "salt-solution",
}:add_unlock("lithium-processing")

FLUID {
    type = "fluid",
    name = "hot-solution",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hot-solution.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.431, g = 0.556, b = 0.627},
    flow_color = {r = 0.431, g = 0.556, b = 0.627},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
