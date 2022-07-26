local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-numal',
	--module_limitations = 'numal',
	subgroup = 'py-alienlife-numal',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='numal', amount=1},
				},
			results =
				{
					{name='meat', amount = 6},
					{name='chitin', amount = 4},
					{name='mukmoux-fat', amount = 5},
					{name='guts', amount = 6},
					{name='arthropod-blood', amount =80},
					{name='venon-gland', amount = 1},
					{name='brain', amount = 1},
					{name='numal-ink', amount = 10},
					{name='cage', amount = 1}
				},
			crafting_speed = 30,
			tech = 'numal-mk01',
			name = 'full-render-num',
			icon = "__pyalternativeenergygraphics__/graphics/icons/rendering-numal.png",
			icon_size = 64,
		},
		--guts numal rendering
		{
			ingredients =
				{
					{name='numal',remove_item = true},
					{name='guts-numal', amount=1},
				},
			results =
				{
					{name = 'aeroorgan', amount = 1},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-num',
			icon = "__pyalternativeenergygraphics__/graphics/icons/guts-numal.png",
			icon_size = 64,
		},
		--blood numal rendering
		{
			ingredients =
				{
					{name='guts-numal',remove_item = true},
					{name='blood-numal', amount=1},
				},
			results =
				{
					{name='guts', amount = 6},
					{name='arthropod-blood', amount =230},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-num',
			icon = "__pyalternativeenergygraphics__/graphics/icons/blood-numal.png",
			icon_size = 64,
		},
		--skin numal rendering
		{
			ingredients =
				{
					{name='blood-numal',remove_item = true},
					{name='chitin-numal', amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount = 80},
					{name='chitin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-num',
			icon = "__pyalternativeenergygraphics__/graphics/icons/chitin-numal.png",
			icon_size = 64,
		},
		--meat numal rendering
		{
			ingredients =
				{
					{name='chitin-numal',remove_item = true},
					{name='meat-numal', amount=1},
				},
			results =
				{
					{name='chitin', amount = 5},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-num',
			icon = "__pyalternativeenergygraphics__/graphics/icons/meat-numal.png",
			icon_size = 64,
		},
	}
}
