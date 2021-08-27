RECIPE {
    type = "recipe",
    name = "fenxsb-alloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 7},
        {type = "item", name = "nexelit-plate", amount = 6},
        {type = "item", name = "sb-oxide", amount = 1},
    },
    results = {
        {type = "item", name = "fenxsb-alloy", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk01")

RECIPE {
    type = "recipe",
    name = "vitreloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 3},
        {type = "item", name = "copper-plate", amount = 3},
        {type = "item", name = "nickel-plate", amount = 3},
        {type = "item", name = "nexelit-plate", amount = 3},
        {type = "item", name = "sb-oxide", amount = 3},
    },
    results = {
        {type = "item", name = "vitreloy", amount = 2},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk01")

RECIPE {
    type = "recipe",
    name = "intermetallics",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "vitreloy", amount = 1},
        {type = "item", name = "fenxsb-alloy", amount = 1},
    },
    results = {
        {type = "item", name = "intermetallics", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk01")