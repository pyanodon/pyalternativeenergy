RECIPE{
	type = "recipe",
	name = "phosphorus-tricloride",
	ingredients =
		{
			{type = "item", name = "powdered-phosphate-rock", amount = 10},
			{type = "fluid", name = "chlorine", amount = 60}
		},
	results =
		{
			{type = "fluid", name = "phosphorus-tricloride", amount = 50}
		},
	main_product = "phosphorus-tricloride",
	category = "electrolyzer"
	}:add_unlock('nuclear-power')

FLUID {
    type = "fluid",
    name = "phosphorus-tricloride",
    icon = "__pyalternativeenergygraphics__/graphics/icons/phosphorus-trichloride.png",
    icon_size = 64,
    default_temperature = 15,
    base_flow_rate = 100,
    heat_capacity = "1KJ",
    base_color = {r = 1, g = 1, b = 0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	subgroup = "py-alternativeenergy-fluids",
    order = "c"
	}
