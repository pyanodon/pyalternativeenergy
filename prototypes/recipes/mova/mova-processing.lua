RECIPE {
    type = "recipe",
    name = "mova-washing",
    category = "washer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "item", name = "mova", amount = 10}
    },
    results = {
        {type = "item", name = "washed-mova", amount = 10},
        {type = "fluid", name = "dirty-water-light", amount = 100}
    },
    main_product = "washed-mova",
    icon = "__pyalternativeenergygraphics__/graphics/icons/wash-mova.png",
    icon_size = 64,
    subgroup = "py-washer",
    order = "d"
}:add_unlock("nanozymes")

RECIPE {
    type = "recipe",
    name = "guaiacol",
    category = "agitator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "ash", amount = 50},
        {type = "item", name = "plastic-bar", amount = 2},
        {type = "fluid", name = "dms", amount = 50},
        {type = "fluid", name = "creosote", amount = 100},
    },
    results = {
        {type = "item", name = "guaiacol", amount = 1},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nanozymes")

RECIPE {
    type = "recipe",
    name = "ammonium-sulfate",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fiberboard", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "ammonia", amount = 100},
    },
    results = {
        {type = "item", name = "ammonium-sulfate", amount = 3},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("mega-farm")

RECIPE {
    type = "recipe",
    name = "mpa",
    category = "genlab",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "propeptides", amount = 1},
        {type = "item", name = "flask", amount = 3},
        {type = "item", name = "lab-instrument", amount = 1},
        {type = "fluid", name = "crude-enzyme", amount = 100},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "mpa", amount = 3},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nanozymes")

RECIPE {
    type = "recipe",
    name = "nanozymes",
    category = "nmf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "mpa", amount = 1},
        {type = "item", name = "glass", amount = 2},
        {type = "item", name = "stainless-steel", amount = 1},
        {type = "item", name = "milfe", amount = 1},
        {type = "item", name = "xeno-egg", amount = 5},
    },
    results = {
        {type = "item", name = "nanozymes", amount = 1}, -- USE IN PY SCIENCE
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nanozymes")