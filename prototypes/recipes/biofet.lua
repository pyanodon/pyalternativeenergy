RECIPE {
    type = "recipe",
    name = "nickel-nitrate",
    categories = {"carbonfilter"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "filtration-media", amount = 1},
        {type = "fluid", name = "tholins",          amount = 50},
        {type = "fluid", name = "nickel-carbonyl",  amount = 50},
    },
    results = {
        {type = "item", name = "nickel-nitrate", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "triethoxysilane",
    categories = {"fbreactor"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "steel-plate",        amount = 1},
        {type = "item",  name = "copper-plate",       amount = 4},
        {type = "item",  name = "sb-silicate",        amount = 1},
        {type = "fluid", name = "pressured-hydrogen", amount = 100},
        {type = "fluid", name = "methanol",           amount = 50},
    },
    results = {
        {type = "item", name = "triethoxysilane", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "pre-phenothiazine",
    categories = {"mixer"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "aniline",           amount = 50},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
    },
    results = {
        {type = "fluid", name = "pre-phenothiazine", amount = 50},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "phenothiazine",
    categories = {"sinter"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "fiberboard",        amount = 1},
        {type = "item",  name = "iron-plate",        amount = 2},
        {type = "fluid", name = "pre-phenothiazine", amount = 50},
        {type = "item",  name = "sulfur",            amount = 5},
        {type = "item",  name = "aluminium-plate",   amount = 5},
        {type = "fluid", name = "butanol",           amount = 50},
    },
    results = {
        {type = "item", name = "phenothiazine", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "neodymium-nitrate",
    categories = {"agitator"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "reo",              amount = 5},
        {type = "fluid", name = "nitrogen-mustard", amount = 50},
    },
    results = {
        {type = "item", name = "neodymium-nitrate", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "pvp",
    categories = {"chemistry"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar", amount = 1},
        {type = "item",  name = "gbl",         amount = 1},
        {type = "fluid", name = "ammonia",     amount = 100},
        {type = "fluid", name = "acetylene",   amount = 100},
    },
    results = {
        {type = "item", name = "pvp", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "gbl",
    categories = {"chemistry"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 1},
        {type = "item",  name = "copper-plate", amount = 2},
        {type = "item",  name = "butynediol",   amount = 1},
        {type = "fluid", name = "hot-air",      amount = 100},

    },
    results = {
        {type = "item", name = "gbl", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "butynediol",
    categories = {"chemistry"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",   amount = 1},
        {type = "item",  name = "nexelit-plate", amount = 1},
        {type = "fluid", name = "acetylene",     amount = 50},
        {type = "fluid", name = "methanal",      amount = 80},

    },
    results = {
        {type = "item", name = "butynediol", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "perovskite-nickelate",
    categories = {"nmf"},
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "nickel-nitrate",    amount = 1},
        {type = "item",  name = "neodymium-nitrate", amount = 1},
        {type = "fluid", name = "water",             amount = 100},
        {type = "fluid", name = "ethanol",           amount = 100},
        {type = "item",  name = "super-steel",       amount = 1},
    },
    results = {
        {type = "item", name = "perovskite-nickelate", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "bioreceptor",
    categories = {"research"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "perovskite-nickelate", amount = 1},
        {type = "item",  name = "gold-plate",           amount = 2},
        {type = "item",  name = "molybdenum-plate",     amount = 3},
        {type = "item",  name = "enzyme-pks",           amount = 1},
        {type = "item",  name = "agar",                 amount = 5},
        {type = "fluid", name = "numal-ink",            amount = 50},
        {type = "item",  name = "stainless-steel",      amount = 1},
    },
    results = {
        {type = "item", name = "bioreceptor", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "aptes",
    categories = {"chemistry"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "allylamine",      amount = 100},
        {type = "item",  name = "phenothiazine",   amount = 1},
        {type = "item",  name = "triethoxysilane", amount = 1},
        {type = "item",  name = "plastic-bar",     amount = 1},
    },
    results = {
        {type = "item", name = "aptes", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("biofet")

RECIPE {
    type = "recipe",
    name = "biofet",
    categories = {"bio-printer"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen",      amount = 100},
        {type = "item",  name = "tin-plate",   amount = 3},
        {type = "item",  name = "aptes",       amount = 1},
        {type = "item",  name = "bioreceptor", amount = 1},
        {type = "item",  name = "pdms",        amount = 1},
        {type = "item",  name = "dynemicin",   amount = 1},
        {type = "item",  name = "p-dope",      amount = 2},
        {type = "item",  name = "heavy-n",     amount = 2},
        {type = "item",  name = "pvp",         amount = 1},
    },
    results = {
        {type = "item", name = "biofet", amount = 5},
    },
    --main_product = "libr",
}:add_unlock("biofet")
