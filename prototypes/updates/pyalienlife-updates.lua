
--TECHNOLOGY--

--BUILDINDS--

-----RECIPES-----
RECIPE('sb-pulp-01'):replace_ingredient("naphtha", "fish-oil")
RECIPE('sb-pulp-05'):add_ingredient({type = "item", name = "yellow-dextrine", amount = 1})
RECIPE('sodium-cyanate'):add_ingredient({type = "item", name = "urea", amount = 5})

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