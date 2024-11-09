RECIPE {
	type = "recipe",
	name = "phosphoryl-chloride",
	ingredients =
	{
		{type = "fluid", name = "phosphorus-tricloride", amount = 20},
		{type = "fluid", name = "oxygen",                amount = 10}
	},
	results =
	{
		{type = "fluid", name = "phosphoryl-chloride", amount = 40}
	},
	main_product = "phosphoryl-chloride",
	category = "electrolyzer"
}:add_unlock("nuclear-power")

FLUID {
	type = "fluid",
	name = "phosphoryl-chloride",
	icon = "__pyalternativeenergygraphics__/graphics/icons/phosphoryl-chloride.png",
	icon_size = 64,
	default_temperature = 15,
	base_flow_rate = 100,
	heat_capacity = "1kJ",
	base_color = {r = 0.1, g = 0.1, b = 0.1},
	flow_color = {r = 1, g = 1, b = 1},
	max_temperature = 100,
	gas_temperature = 15,
	flow_to_energy_ratio = 0.59,
	subgroup = "py-alternativeenergy-fluids",
	order = "c"
}
