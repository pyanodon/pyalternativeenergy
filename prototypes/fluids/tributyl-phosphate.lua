RECIPE{
	type = "recipe",
	name = "tributyl-phosphate",
	ingredients =
		{
			{type = "fluid", name = "phosphoryl-chloride", amount = 10},
			{type = "fluid", name = "butanol", amount = 30}
		},
	results =
		{
			{type = "fluid", name = "tributyl-phosphate", amount = 10},
			{type = "fluid", name = "hydrogen-chloride", amount = 30},
		},
	main_product = "tributyl-phosphate",
	category = "electrolyzer"
	}:add_unlock('nuclear-power')

FLUID {
    type = "fluid",
    name = "tributyl-phosphate",
    icon = "__pyalternativeenergygraphics__/graphics/icons/tributyl-phosphate.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.15, g = 0.15, b = 0.15},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	subgroup = "py-alternativeenergy-fluids",
    order = "c"
    }
