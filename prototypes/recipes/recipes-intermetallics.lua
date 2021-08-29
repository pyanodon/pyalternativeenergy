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

--MK02

RECIPE {
    type = "recipe",
    name = "self-assembly-monolayer",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "ptcda", amount = 1},
        {type = "item", name = "nbalti", amount = 1},
        {type = "item", name = "crmoni", amount = 1},
        {type = "item", name = "gold-plate", amount = 1},
        {type = "fluid", name = "trichlorosilane", amount = 100},
    },
    results = {
        {type = "item", name = "self-assembly-monolayer", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")

RECIPE {
    type = "recipe",
    name = "ptcda",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "plastic-bar", amount = 1},
        {type = "item", name = "filtration-media", amount = 1},
        {type = "fluid", name = "organic-acid-anhydride", amount = 100},
        {type = "fluid", name = "perylene", amount = 100},
    },
    results = {
        {type = "item", name = "ptcda", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")

RECIPE {
    type = "recipe",
    name = "nbalti",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 1},
        {type = "item", name = "aluminium-plate", amount = 5},
        {type = "item", name = "titanium-plate", amount = 10},
    },
    results = {
        {type = "item", name = "nbalti", amount = 2},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")

RECIPE {
    type = "recipe",
    name = "crmoni",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "chromium", amount = 8},
        {type = "item", name = "molybdenum-plate", amount = 5},
        {type = "item", name = "nickel-plate", amount = 10},
    },
    results = {
        {type = "item", name = "crmoni", amount = 2},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")