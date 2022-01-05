RECIPE {
    type = "recipe",
    name = "er-oxalate",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "re-pulp-04", amount = 50},
        {type = "item", name = "ammonium-oxalate", amount = 1},
    },
    results = {
        {type = "item", name = "er-oxalate", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "impure-er-oxide",
    category = "upgrader",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 5},
        {type = "item", name = "er-oxalate", amount = 1},
        {type = "item", name = "cyanoacetate", amount = 1},
    },
    results = {
        {type = "item", name = "impure-er-oxide", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "er-oxide",
    category = "washer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "impure-er-oxide", amount = 1},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "er-oxide", amount = 1},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},

    },
    main_product = "er-oxide",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "erbium",
    category = "hpf",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "er-oxide", amount = 1},
        {type = "item", name = "lime", amount = 10},
        {type = "fluid", name = "helium", amount = 50},
    },
    results = {
        {type = "item", name = "erbium", amount = 1},

    },
    --main_product = "eg-si",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "ernico",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "erbium", amount = 1},
        {type = "item", name = "nickel-plate", amount = 10},
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item", name = "cobalt-sulfate-02", amount = 2},
    },
    results = {
        {type = "item", name = "ernico", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "ernico-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "erbium", amount = 1},
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "fluid", name = "molten-nickel", amount = 20},
        {type = "item", name = "cobalt-sulfate-02", amount = 2},
    },
    results = {
        {type = "item", name = "ernico", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "ybco-monocrystal",
    category = "sinter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "shell", amount = 5},
        {type = "fluid", name = "oxygen", amount = 100},
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "reo", amount = 10},
    },
    results = {
        {type = "item", name = "ybco-monocrystal", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "fan",
    category = "crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "electric-engine-unit", amount = 1},
        {type = "item", name = "small-parts-01", amount = 20},
        {type = "item", name = "iron-plate", amount = 10},
        {type = "item", name = "electronic-circuit", amount = 2},
    },
    results = {
        {type = "item", name = "fan", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("erbium")