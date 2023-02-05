local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------EGG MAKER------------------

FUN.autorecipes {
    name = 'numal-egg',
	category = 'rc',
	allowed_module_categories = {'numal'},
	module_limitations = 'numal',
	subgroup = 'py-alienlife-numal',
	order = 'c',
	main_product = "numal-egg",
    mats =
	{
		--py3
		{
			ingredients =
				{
					{name = 'numal', amount = 2},
                    {name = 'trits', amount =1},
					{name = 'cdna', amount =1},
					{name = 'barrel-milk', amount = 2},
				},
			results =
				{
					{name = 'numal-egg', amount = 4},
					{name='empty-barrel-milk', amount = 2},
				},
			crafting_speed = 30,
			tech = 'numal-mk01'
		},
		--prod
		{
			ingredients =
				{
					{name = 'numal', amount = 2},
                    {name = 'trits', amount =1},
					{name = 'cdna', amount =1},
					{name = 'numal-food-01', amount =1},
					{name = 'barrel-milk', amount = 2},
				},
			results =
				{
					{name = 'numal-egg', amount = 5},
					{name='empty-barrel-milk', amount = 2},
				},
			crafting_speed = 25,
			tech = 'numal-mk02'
		},
		--py4
		{
			ingredients =
				{
					{name = 'numal', add_amount = 2},
					{name = 'bedding', amount = 3},
					--{name = 'water-barrel', add_amount = 5, return_barrel = true},
				},
			results =
				{
					{name = 'numal-egg', add_amount = 5},
				},
			crafting_speed = 20,
			tech = 'numal-mk03'
		},
		{
			ingredients =
				{
					{name = 'numal', add_amount = 2},
					{name = 'numal-food-01',remove_item = true},
					{name = 'numal-food-02', amount =1},
					{name = 'barrel-milk', amount = 2},
				},
			results =
				{
					{name = 'numal-egg', amount = 14},
					{name='empty-barrel-milk', amount = 2},
				},
			crafting_speed = 18,
			tech = 'numal-mk03'
		},
		--utility
		{
			ingredients =
				{
					{name = 'numal', add_amount = 3},
					{name = 'dhilmos', amount = 5},
					{name = 'vrauks', amount =2},
				},
			results =
				{
					{name = 'numal-egg', add_amount = 9},
				},
			crafting_speed = 15,
			tech = 'numal-mk04'
		},
		--beyond
		{
			ingredients =
				{
					{name = 'numal', add_amount = 3},
					{name = 'dhilmos', add_amount = 3},
					{name = 'vrauks', add_amount = 2},
					{name = 'numal-food-02', add_amount = 2},
				},
			results =
				{
					{name = 'numal-egg', add_amount = 15},
				},
			crafting_speed = 15,
			tech = 'numal-mk04'
		},
	}
}

--[[
		-----------------------PHEROMONES-----------------------------
		{
			ingredients =
				{
					{name = 'arthurian-egg',remove_item = true},
					{name = 'bedding',remove_item = true},
					{name = 'navens',remove_item = true},
					{name = 'meat',remove_item = true},
					{name = 'pheromones', amount =1},
                    --{name = 'caged-auog', amount =4},
					--{name = 'caged-auog', amount = 1},
				},
			results =
				{
					{name = 'numal-egg',remove_item = true},
					{name = 'numal-egg', amount =10},
				},
			crafting_speed = 140,
			tech = 'pheromones'
		},
		--yotoi leaves
		{
			ingredients =
				{
                    --{name = 'wood-seeds',remove_item = true},
                    --{name = 'caged-mukmoux', amount =15},
					{name = 'meat', amount =10},
				},
			results =
				{

				},
			crafting_speed = 120,
			tech = 'pheromones'
		},
		--bedding
		{
			ingredients =
				{
					{name = 'bedding', amount = 3},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'pheromones'
		},
		--fiber
		{
			ingredients =
				{
					{name = 'arthurian-egg', amount = 5},
				},
			results =
				{

				},
			crafting_speed = 100,
			tech = 'pheromones'
		},
		--navens
		{
			ingredients =
				{
					{name = 'navens', amount =5},

				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'pheromones'
		},
	}
}
]]--

--hatching
--[[
RECIPE {
    type = 'recipe',
    name = 'numal-grow-01',
    category = 'incubator',
    enabled = false,
    energy_required = 24,
    ingredients = {
        {type = 'item', name = 'numal-egg', amount = 3},
        {type = 'item', name = 'meat', amount = 15},
		{type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'fluid', name = 'hot-air', amount = 200},
    },
    results = {
        {type = 'item', name = 'caged-numal', amount_min = 1, amount_max = 3},
    },
    --main_product = "numal",
    subgroup = 'py-alienlife-numal',
    order = 'a',
}:add_unlock("numal")
]]--
--Raising

	FUN.autorecipes {
    name = 'numal-raising',
	category = 'numal',
	module_limitations = 'numal',
	subgroup = 'py-alienlife-numal',
	order = 'b',
	main_product = "numal",
    mats =
	{
		--py
		{
			ingredients =
				{
					{name = 'numal-egg', amount = 4},
                    {name = 'caged-auog', amount = 1},
					{name = 'meat', amount = 10},
					{name = 'guts', amount = 10},
					{name = 'arqad-honey-barrel', amount = 1, return_barrel = true},
				},
			results =
				{
					{name = 'numal', amount_min = 1, amount_max = 4},
				},
			crafting_speed = 250,
			tech = 'numal-mk01'
		},
		{
			ingredients =
				{
					{name = 'numal-food-01', amount =1},
				},
			results =
				{
					{name = 'numal', amount_min = 1, amount_max = 6},
				},
			crafting_speed = 200,
			tech = 'numal-mk02'
		},
		--prod
		{
			ingredients =
				{
					{name = 'numal-egg', add_amount = 4},
					{name = 'bedding', amount = 3},
					{name = 'caged-auog',remove_item = true},
					{name = 'caged-mukmoux', amount = 1},
				},
			results =
				{
					{name = 'numal', amount_min = 3, amount_max = 6},
				},
			crafting_speed = 250,
			tech = 'numal-mk03'
		},
		{
			ingredients =
				{
					{name = 'numal-egg', add_amount = 4},
					{name = 'numal-food-01',remove_item = true},
					{name = 'bedding', amount = 3},
					--{name = 'caged-auog', amount = 1},
					{name = 'numal-food-02', amount =1},
				},
			results =
				{
					{name = 'numal', amount_min = 3, amount_max = 10},
				},
			crafting_speed = 200,
			tech = 'numal-mk03'
		},
		--utility
		{
			ingredients =
				{
					{name = 'numal-egg', add_amount = 4},
					{name = 'numal-food-02',remove_item = true},
					{name = 'numal-food-01', amount =2},
					{name = 'arthurian-egg', amount = 5},
					{name = 'navens', amount =5},
				},
			results =
				{
					{name = 'numal', amount_min = 6, amount_max = 12},
				},
			crafting_speed = 150,
			tech = 'numal-mk04'
		},
		--beyond
		{
			ingredients =
				{
					{name = 'numal-egg', add_amount = 5},
					{name = 'numal-food-01',remove_item = true},
					{name = 'arthurian-egg', add_amount = 4},
					{name = 'navens', add_amount =3},
					{name = 'numal-food-02', amount =2},
				},
			results =
				{
					{name = 'numal-egg', amount_min = 12, amount_max = 20},
				},
			crafting_speed = 80,
			tech = 'numal-mk04'
		},
	}
}
