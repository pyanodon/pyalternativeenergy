RECIPE {
    type = "recipe",
    name = "acrylonitrile",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "propene",          amount = 50},
        {type = "fluid", name = "ammonia",          amount = 50},
        {type = "fluid", name = "oxygen",           amount = 100},
        {type = "item",  name = "molybdenum-plate", amount = 1},
        {type = "item",  name = "iron-plate",       amount = 1},
    },
    results = {
        {type = "item",  name = "acrylonitrile", amount = 1},
        {type = "fluid", name = "cyanic-acid",   amount = 20},
    },
    main_product = "acrylonitrile",
}:add_unlock("acrylic")

RECIPE {
    type = "recipe",
    name = "acrylonitrile-2",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "lignin",           amount = 10},
        {type = "fluid", name = "ammonia",          amount = 50},
        {type = "fluid", name = "oxygen",           amount = 100},
        {type = "item",  name = "molybdenum-plate", amount = 1},
        {type = "item",  name = "iron-plate",       amount = 1},
    },
    results = {
        {type = "item",  name = "acrylonitrile", amount = 1},
        {type = "fluid", name = "cyanic-acid",   amount = 20},
    },
    main_product = "acrylonitrile",
}:add_unlock("acrylic")

RECIPE {
    type = "recipe",
    name = "acrylonitrile-3",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "acrolein",         amount = 50},
        {type = "fluid", name = "ammonia",          amount = 50},
        {type = "fluid", name = "oxygen",           amount = 100},
        {type = "item",  name = "molybdenum-plate", amount = 1},
        {type = "item",  name = "iron-plate",       amount = 1},
    },
    results = {
        {type = "item",  name = "acrylonitrile", amount = 1},
        {type = "fluid", name = "cyanic-acid",   amount = 20},
    },
    main_product = "acrylonitrile",
}:add_unlock("acrylic")

RECIPE {
    type = "recipe",
    name = "methyl-acrylate-2",
    category = "methanol",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "cobalt-oxide",   amount = 2},
        {type = "fluid", name = "acetylene",      amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 100},
        {type = "fluid", name = "methanol",       amount = 100}
    },
    results = {
        {type = "item", name = "methyl-acrylate", amount = 1}
    },
}:add_unlock("acrylic")


RECIPE {
    type = "recipe",
    name = "pan",
    category = "centrifuging-low", -- temporary
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "acrylonitrile",   amount = 1},
        {type = "item", name = "methyl-acrylate", amount = 1},
    },
    results = {
        {type = "item", name = "pan", amount = 1},
    },
    --main_product = "acrylonitrile",
}:add_unlock("carbon-fiber")

RECIPE {
    type = "recipe",
    name = "oxidized-pan-fiber",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "pan",    amount = 1},
        {type = "fluid", name = "oxygen", amount = 50},
    },
    results = {
        {type = "item", name = "oxidized-pan-fiber", amount = 1},
    },
    --main_product = "acrylonitrile",
}:add_unlock("carbon-fiber")

RECIPE {
    type = "recipe",
    name = "pre-carbon-fiber",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "oxidized-pan-fiber", amount = 1},
        {type = "fluid", name = "nitrogen",           amount = 100},
        {type = "item",  name = "graphite",           amount = 2},
    },
    results = {
        {type = "item", name = "pre-carbon-fiber", amount = 1},
    },
    --main_product = "acrylonitrile",
}:add_unlock("carbon-fiber")

RECIPE {
    type = "recipe",
    name = "cf1",
    category = "electrolyzer",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "pre-carbon-fiber", amount = 1},
        {type = "item",  name = "ammonium-oxalate", amount = 1},
        {type = "fluid", name = "water",            amount = 100},
        {type = "item",  name = "graphite",         amount = 3},
    },
    results = {
        {type = "item", name = "cf1", amount = 1},
    },
    --main_product = "acrylonitrile",
}:add_unlock("carbon-fiber")

RECIPE {
    type = "recipe",
    name = "cf2",
    category = "washer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "cf1",   amount = 1},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item",  name = "cf2",               amount = 1},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "cf2",
}:add_unlock("carbon-fiber")

RECIPE {
    type = "recipe",
    name = "dry-cf",
    category = "evaporator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "cf2",     amount = 1},
        {type = "fluid", name = "hot-air", amount = 100},
    },
    results = {
        {type = "item", name = "dry-cf", amount = 1},
    },
    --main_product = "cf2",
}:add_unlock("carbon-fiber")

RECIPE {
    type = "recipe",
    name = "cf",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "dry-cf", amount = 1},
        {type = "fluid", name = "water",  amount = 200},
        {type = "item",  name = "epoxy",  amount = 1},
    },
    results = {
        {type = "item", name = "cf", amount = 1},
    },
    --main_product = "cf2",
}:add_unlock("carbon-fiber")
