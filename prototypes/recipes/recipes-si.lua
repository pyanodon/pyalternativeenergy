--MK01 green level

RECIPE {
    type = "recipe",
    name = "eg-si",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "pure-trichlorosilane", amount = 50},
        {type = "fluid", name = "hydrogen", amount = 100},
    },
    results = {
        {type = "item", name = "eg-si", amount = 1},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
    },
    main_product = "eg-si",
}:add_unlock("silicon-mk01")

RECIPE {
    type = "recipe",
    name = "crucible",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "nisi", amount = 2},
        {type = "item", name = "silica-powder", amount = 5},
        {type = "item", name = "clay", amount = 5},
    },
    results = {
        {type = "item", name = "crucible", amount = 2},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk02")

RECIPE {
    type = "recipe",
    name = "polycrystalline-slab",
    category = "eaf",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "eg-si", amount = 3},
        {type = "item", name = "graphite", amount = 3},
        {type = "item", name = "crucible", amount = 1},
    },
    results = {
        {type = "item", name = "polycrystalline-slab", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk02")

RECIPE {
    type = "recipe",
    name = "polycrystalline-plate",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "polycrystalline-slab", amount = 1},
        {type = "fluid", name = "wax", amount = 30},
        {type = "item", name = "diamond-wire", amount = 1},
    },
    results = {
        {type = "item", name = "polycrystalline-plate", amount = 5},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk02")
