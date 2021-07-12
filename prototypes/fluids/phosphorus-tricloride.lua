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
	}:add_unlock('uranium-mk01')

FLUID {
    type = "fluid",
    name = "phosphorus-tricloride",
    icon = "__pyalternativeenergygraphics__/graphics/icons/phosphorus-trichloride.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 1, g = 1, b = 0},
    flow_color = {r = 0.8, g = 0.8, b = 0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
	}
