RECIPE {
    type = "recipe",
    name = "dodecanoic-acid",
    category = "fluid-separator",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "plastic-bar", amount = 3},
        {type = "fluid", name = "clean-organic-pulp", amount = 100},
    },
    results = {
        {type = "item", name = "dodecanoic-acid", amount = 1},
        {type = "fluid", name = "waste-water", amount = 20},
    },
    main_product = "dodecanoic-acid",
}:add_unlock("mof")

RECIPE {
    type = "recipe",
    name = "dodecylamine",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "dodecanoic-acid", amount = 1},
        {type = "item", name = "barrel", amount = 1},
        {type = "item", name = "molybdenum-plate", amount = 5},
        {type = "fluid", name = "ammonia", amount = 200},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "dodecylamine", amount = 1},
    },
    --main_product = "dodecanoic-acid",
}:add_unlock("mof")

RECIPE {
    type = "recipe",
    name = "iron-nanoparticles",
    category = "drp",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "dodecylamine", amount = 1},
        {type = "item", name = "plastic-bar", amount = 5},
        {type = "item", name = "iron-plate", amount = 10},
        {type = "item", name = "copper-plate", amount = 5},
        {type = "item", name = "small-parts-03", amount = 1},
        {type = "item", name = "lead-container", amount = 1},
    },
    results = {
        {type = "item", name = "iron-nanoparticles", amount = 2},
    },
    --main_product = "dodecanoic-acid",
}:add_unlock("mof")

RECIPE {
    type = "recipe",
    name = "milfe",
    category = "nano",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-nanoparticles", amount = 1},
        {type = "fluid", name = "ethanol", amount = 100},
        {type = "item", name = "advanced-circuit", amount = 1},
        {type = "item", name = "aramid", amount = 5},
    },
    results = {
        {type = "item", name = "milfe", amount = 1},
    },
    --main_product = "dodecanoic-acid",
}:add_unlock("mof")

RECIPE {
    type = "recipe",
    name = "nanocarrier",
    category = "biofactory",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "milfe", amount = 1},
        {type = "fluid", name = "ethanol", amount = 100},
        {type = "item", name = "chitosan", amount = 2},
        {type = "item", name = "niobium-plate", amount = 2},
    },
    results = {
        {type = "item", name = "nanocarrier", amount = 1},
    },
    --main_product = "dodecanoic-acid",
}:add_unlock("bio-implants")