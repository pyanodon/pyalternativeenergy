data:extend(
{
	{
		type = "tips-and-tricks-item",
		name = "pyalternativeenergy",
		category = "wiki-py",
		indent = 1,
		order = "h",
		is_title = true,
	},
	{
		type = "tips-and-tricks-item",
		name = "blimp",
		category = "wiki-py",
		indent = 2,
		order = "ha",
        tag = '[item=aerial-blimp-mk01]',
        trigger =
        {
            type = "unlock-recipe",
            recipe = "aerial-blimp-mk01"
        },
	},
	{
		type = "tips-and-tricks-item",
		name = "lfr-stirling",
		category = "wiki-py",
		indent = 2,
		order = "hb",
        tag = '[item=solar-concentrator]',
        trigger =
        {
            type = "unlock-recipe",
            recipe = "lrf-building-mk01"
        },
	},
})
