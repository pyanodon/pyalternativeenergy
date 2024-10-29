------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 2
local BASE_SKIN = 4
local BASE_GUTS = 4
local BASE_BLOOD = 50
local BASE_BRAIN = 1
local BASE_SPECIAL = 10 -- ink

local IMP_MEAT = 4
local IMP_SKIN = 8
local IMP_GUTS = 10
local IMP_BLOOD = 80
local IMP_SPECIAL = 20


py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	--module_limitations = 'numal',
	subgroup = "py-alienlife-numal",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "numal", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            amount = BASE_MEAT},
				{name = "chitin",          amount = BASE_SKIN},
				{name = "guts",            amount = BASE_GUTS},
				{name = "arthropod-blood", amount = BASE_BLOOD},
				{name = "brain",           amount = BASE_BRAIN},
				{name = "numal-ink",       amount = BASE_SPECIAL},
			},
			crafting_speed = 30,
			tech = "numal-mk01",
			name = "full-render-num",
			icon = "__pyalternativeenergygraphics__/graphics/icons/rendering-numal.png",
			icon_size = 64,
		},
		--guts numal rendering
		{
			ingredients =
			{
				{name = "numal",      remove_item = true},
				{name = "guts-numal", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            remove_item = true},
				{name = "chitin",          remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "brain",           remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "guts",            amount = IMP_GUTS},
				{name = "numal-ink",       amount = IMP_SPECIAL},
			},
			tech = "antitumor",
			name = "ex-gut-num",
			icons = {
				{icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png",  scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood numal rendering
		{
			ingredients =
			{
				{name = "guts-numal",  remove_item = true},
				{name = "blood-numal", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "numal-ink",       remove_item = true},
				{name = "arthropod-blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-num",
			icons = {
				{icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin numal rendering
		{
			ingredients =
			{
				{name = "blood-numal",  remove_item = true},
				{name = "chitin-numal", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "arthropod-blood", remove_item = true},
				{name = "chitin",          amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-num",
			icon = "__pyalternativeenergygraphics__/graphics/icons/chitin-numal.png",
			icon_size = 64,
		},
		--meat numal rendering
		{
			ingredients =
			{
				{name = "chitin-numal", remove_item = true},
				{name = "meat-numal",   amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "chitin", remove_item = true},
				{name = "meat",   amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-num",
			icon = "__pyalternativeenergygraphics__/graphics/icons/meat-numal.png",
			icon_size = 64,
		},
	}
}
