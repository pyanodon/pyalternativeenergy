local fun = require("prototypes/functions/functions")

	fun.autorecipes {
    name = 'numal-improved',
	category = 'creature-chamber',
	--module_limitations = 'numal',
	subgroup = 'py-alienlife-numal',
	order = 'b',
	--main_product = "numal",
    mats =
	{
		--rna anabolic
		{
			ingredients =
				{
					{name = 'numal', amount = 1},
					{name = 'anabolic-rna', amount =1},
				},
			results =
				{
					{name = 'meat-numal', amount = 2},
				},
			crafting_speed = 180,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'anabolic-rna',remove_item = true},
					{name = 'antitumor', amount =2},
				},
			results =
				{
					{name = 'meat-numal', remove_item = true},
					{name = 'guts-numal', amount = 1},
				},
			crafting_speed = 180,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name = 'nanochondria', amount =1},
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'antitumor',remove_item = true},
					{name = 'recombinant-ery', amount =1},
				},
			results =
				{
					{name = 'guts-numal', remove_item = true},
					{name = 'blood-numal', amount = 2},
				},
			crafting_speed = 180,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name = 'gh',remove_item = true},
					{name = 'recombinant-ery',remove_item = true},
					{name = 'reca', amount =1},
				},
			results =
				{
					{name = 'blood-numal', remove_item = true},
					{name = 'chitin-numal', amount = 2},
				},
			crafting_speed = 180,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name = 'gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 60,
			tech = 'reca'
		},
	}
}
