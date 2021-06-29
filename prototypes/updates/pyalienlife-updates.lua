
--TECHNOLOGY--

--BUILDINDS--

-----RECIPES-----
RECIPE('sb-pulp-01'):replace_ingredient("naphtha", "fish-oil")
RECIPE('sb-pulp-05'):add_ingredient({type = "item", name = "yellow-dextrine", amount = 1})
RECIPE('sodium-cyanate'):add_ingredient({type = "item", name = "urea", amount = 5})
RECIPE('oxalic-acid'):add_ingredient({type = "item", name = "sugar", amount = 5})
RECIPE('gd-metal'):add_ingredient({type = "item", name = "cobalt-extract", amount = 2})

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "yellow-dextrine",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "starch", amount = 5},
        {type = "fluid", name = "hot-air", amount = 150},
        {type = "item", name = "nexelit-plate", amount = 10},
    },
    results = {
        {type = "item", name = "yellow-dextrine", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk04")

RECIPE {
    type = "recipe",
    name = "oxalic-acid-2",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood", amount = 100},
        {type = "item", name = "plastic-bar", amount = 1},
    },
    results = {
        {type = "item", name = "oxalic-acid", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("thorium")