RECIPE {
    type = "recipe",
    name = "buffer-solution",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "hydrogen-peroxide", amount = 100},
        {type = "fluid", name = "water", amount = 200},
        {type = "item", name = "guaiacol", amount = 1},
        {type = "item", name = "phosphate-rock", amount = 5},
    },
    results = {
        {type = "fluid", name = "buffer-solution", amount = 50},
    },
    --main_product = "buffer-solution",
}:add_unlock("nanozymes")

FLUID {
    type = "fluid",
    name = "buffer-solution",
    icon = "__pyalternativeenergygraphics__/graphics/icons/buffer-solution.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    --heat_capacity = "1KJ",
    base_color = {r = 0.415, g = 0.258, b = 0.513},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
	}
