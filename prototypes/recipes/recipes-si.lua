--MK01 green level

RECIPE {
    type = "recipe",
    name = "eg-si",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "pure-trichlorosilane", amount = 50},
        {type = "fluid", name = "hydrogen", amount = 100},
    },
    results = {
        {type = "item", name = "eg-si", amount = 2},
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
}:add_unlock("energy-2")

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

--MONO

RECIPE {
    type = "recipe",
    name = "quartz-crucible",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "mold", amount = 2},
        {type = "fluid", name = "high-grade-quartz-pulp", amount = 50},
    },
    results = {
        {type = "item", name = "quartz-crucible", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk03")

RECIPE {
    type = "recipe",
    name = "monocrystalline-slab",
    category = "eaf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "eg-si", amount = 3},
        {type = "item", name = "quartz-crucible", amount = 1},
    },
    results = {
        {type = "item", name = "monocrystalline-slab", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk03")

RECIPE {
    type = "recipe",
    name = "monocrystalline-plate",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "monocrystalline-slab", amount = 1},
        {type = "fluid", name = "wax", amount = 30},
        {type = "item", name = "diamond-wire", amount = 1},
    },
    results = {
        {type = "item", name = "monocrystalline-plate", amount = 5},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk03")

RECIPE {
    type = "recipe",
    name = "silicon-wafer-3",
    category = "electronic",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "monocrystalline-plate", amount = 1},
        {type = "item", name = "aramid", amount = 1},
    },
    results = {
        {type = "item", name = "silicon-wafer", amount = 5},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk03")

RECIPE {
    type = "recipe",
    name = "silicon-wafer-2",
    category = "electronic",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "polycrystalline-plate", amount = 1},
        {type = "item", name = "aramid", amount = 1},
    },
    results = {
        {type = "item", name = "silicon-wafer", amount = 3},
    },
    --main_product = "eg-si",
}:add_unlock("silicon-mk02")
