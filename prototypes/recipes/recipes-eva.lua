RECIPE {
    type = "recipe",
    name = "middle-processed-lard",
    category = "cracker",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "mukmoux-fat", amount = 5}, --Py its called mukmoux fat
        {type = "item",  name = "coke",        amount = 5},
        {type = "fluid", name = "water",       amount = 500},
    },
    results = {
        {type = "fluid", name = "middle-processed-lard", amount = 20},
        {type = "fluid", name = "steam",                 amount = 500, temperature = 150, ignored_by_productivity = 500, ignored_by_stats = 500},
        {type = "fluid", name = "tar",                   amount = 50},
    },
    main_product = "middle-processed-lard",
}:add_unlock("eva")

RECIPE {
    type = "recipe",
    name = "fatty-acids",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "industrial-solvent",    amount = 50},
        {type = "item",  name = "chromium",              amount = 1},
        {type = "fluid", name = "middle-processed-lard", amount = 50},
    },
    results = {
        {type = "fluid", name = "fatty-acids", amount = 70},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("eva")

RECIPE {
    type = "recipe",
    name = "fatty-acids-2",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "organic-solvent", amount = 70},
        {type = "fluid", name = "hot-air",         amount = 100},
        {type = "item",  name = "seaweed",         amount = 100},
    },
    results = {
        {type = "fluid", name = "fatty-acids", amount = 50},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("eva")

RECIPE {
    type = "recipe",
    name = "processed-fatty-acids",
    category = "scrubber",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "acetic-acid", amount = 100},
        {type = "fluid", name = "fatty-acids", amount = 50},
    },
    results = {
        {type = "fluid", name = "processed-fatty-acids", amount = 50},
    },
    --main_product = "eg-si",
}:add_unlock("eva")

RECIPE {
    type = "recipe",
    name = "vinyl-acetate",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "processed-fatty-acids", amount = 100},
        {type = "item",  name = "chromium",              amount = 2},
    },
    results = {
        {type = "fluid", name = "vinyl-acetate",     amount = 50},
        {type = "fluid", name = "tailings", amount = 100},
        {type = "fluid", name = "carbon-dioxide",    amount = 50},
    },
    main_product = "vinyl-acetate",
}:add_unlock("eva")

RECIPE {
    type = "recipe",
    name = "eva",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "vinyl-acetate", amount = 50},
        {type = "fluid", name = "ethylene",      amount = 50},
    },
    results = {
        {type = "item", name = "eva", amount = 5},

    },
    --main_product = "vinyl-acetate",
}:add_unlock("eva")
