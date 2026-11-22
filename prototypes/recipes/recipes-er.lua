RECIPE {
    type = "recipe",
    name = "er-oxalate",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "re-pulp-04",       amount = 50},
        {type = "item",  name = "ammonium-oxalate", amount = 1},
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
        {type = "item", name = "er-oxalate",   amount = 1},
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
        {type = "item",  name = "impure-er-oxide", amount = 1},
        {type = "fluid", name = "water",           amount = 100},
    },
    results = {
        {type = "item",  name = "er-oxide",          amount = 1},
        {type = "fluid", name = "tailings", amount = 100},

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
        {type = "item",  name = "er-oxide", amount = 1},
        {type = "item",  name = "lime",     amount = 10},
        {type = "fluid", name = "helium",   amount = 50},
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
        {type = "item",  name = "erbium",            amount = 1},
        {type = "item",  name = "nickel-plate",      amount = 10},
        {type = "fluid", name = "hot-air",           amount = 100},
        {type = "item",  name = "cobalt-sulfate-02", amount = 2},
    },
    results = {
        {type = "item", name = "ernico", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("alloys-mk04")

RECIPE {
    type = "recipe",
    name = "ernico-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "erbium",            amount = 1},
        {type = "fluid", name = "hot-air",           amount = 100},
        {type = "fluid", name = "molten-nickel",     amount = 20},
        {type = "item",  name = "cobalt-sulfate-02", amount = 2},
    },
    results = {
        {type = "item", name = "ernico", amount = 5},
    },
    --main_product = "eg-si",
}:add_unlock("alloys-mk05")

RECIPE {
    type = "recipe",
    name = "ybco-monocrystal",
    category = "sinter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "shell",        amount = 5},
        {type = "fluid", name = "oxygen",       amount = 100},
        {type = "item",  name = "copper-plate", amount = 10},
        {type = "item",  name = "reo",          amount = 10},
    },
    results = {
        {type = "item", name = "ybco-monocrystal", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "fan",
    category = "crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "electric-engine-unit", amount = 1},
        {type = "item", name = "small-parts-01",       amount = 20},
        {type = "item", name = "iron-plate",           amount = 10},
        {type = "item", name = "electronic-circuit",   amount = 2},
    },
    results = {
        {type = "item", name = "fan", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "air-duct",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "niobium-pipe",    amount = 2},
        {type = "item", name = "small-parts-02",  amount = 10},
        {type = "item", name = "science-coating", amount = 1},
        {type = "item", name = "cf",              amount = 4},
    },
    results = {
        {type = "item", name = "air-duct", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "cryostat",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "cooling-system",      amount = 1},
        {type = "item",  name = "vacuum-pump-mk01",    amount = 1},
        {type = "item",  name = "czts-plate",          amount = 3},
        {type = "item",  name = "stainless-steel",     amount = 5},
        {type = "item",  name = "mechanical-parts-03", amount = 1},
        {type = "fluid", name = "liquid-nitrogen",     amount = 100},

    },
    results = {
        {type = "item", name = "cryostat", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "cryocooler",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "cooling-system", amount = 1},
        {type = "item",  name = "pump",           amount = 1},
        {type = "item",  name = "ernico",         amount = 2},
        {type = "fluid", name = "liquid-helium",  amount = 50},
    },
    results = {
        {type = "item", name = "cryocooler", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "sc-engine",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "cryostat",       amount = 1},
        {type = "item",  name = "cryocooler",     amount = 1},
        {type = "item",  name = "rotor-m",        amount = 1},
        {type = "item",  name = "fan",            amount = 2},
        {type = "item",  name = "sc-stator",      amount = 1},
        {type = "item",  name = "magnetic-ring",  amount = 1},
        {type = "item",  name = "superconductor", amount = 1},
        {type = "item",  name = "optical-fiber",  amount = 2},
        {type = "item",  name = "super-steel",    amount = 5},
        {type = "item",  name = "small-parts-03", amount = 20},
        {type = "item",  name = "air-duct",       amount = 2},
        {type = "fluid", name = "vacuum",         amount = 100},
    },
    results = {
        {type = "item", name = "sc-engine", amount = 3},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "rotor-m",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "shaft-mk03",           amount = 1},
        {type = "item",  name = "small-parts-02",       amount = 5},
        {type = "item",  name = "ybco-monocrystal",     amount = 1},
        {type = "item",  name = "diamagnetic-material", amount = 1},
        {type = "item",  name = "mositial-nx",          amount = 1},
        {type = "fluid", name = "grease",               amount = 50},
    },
    results = {
        {type = "item", name = "rotor-m", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "magnetic-ring",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "nano-wires",            amount = 1},
        {type = "item", name = "low-density-structure", amount = 2},
        {type = "item", name = "science-coating",       amount = 1},
    },
    results = {
        {type = "item", name = "magnetic-ring", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "sc-stator",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "hts-coil",    amount = 2},
        {type = "item", name = "nxsb-alloy",  amount = 1},
        {type = "item", name = "cf",          amount = 4},
        {type = "item", name = "super-alloy", amount = 4},
    },
    results = {
        {type = "item", name = "sc-stator", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "hts-coil",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "nbti-alloy", amount = 3},
        {type = "item", name = "sc-wire",    amount = 1},
    },
    results = {
        {type = "item", name = "hts-coil", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-unit")
