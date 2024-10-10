RECIPE {
    type = "recipe",
    name = "libr",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "hbr",               amount = 1},
        {type = "item", name = "lithium-hydroxide", amount = 1},
    },
    results = {
        {type = "item", name = "libr", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "hbr",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nexelit-plate", amount = 2},
        {type = "item",  name = "crude-salt",    amount = 5},
        {type = "item",  name = "plastic-bar",   amount = 2},
        {type = "fluid", name = "chlorine",      amount = 50},
        {type = "fluid", name = "hydrogen",      amount = 200},
        {type = "fluid", name = "steam",         amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "item",  name = "hbr",               amount = 1},
        {type = "fluid", name = "hydrogen-chloride", amount = 50},
    },
    main_product = "hbr",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "crude-salt",
    category = "evaporator",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "geothermal-water", amount = 100},
    },
    results = {
        {type = "item", name = "crude-salt", amount = 1},
    },
    --main_product = "hbr",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "guhcl",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "benzene",          amount = 100},
        {type = "item",  name = "plastic-bar",      amount = 2},
        {type = "item",  name = "ammonium-mixture", amount = 1},
    },
    results = {
        {type = "item",  name = "guhcl",             amount = 1},
        {type = "fluid", name = "dirty-water-light", amount = 100},
    },
    main_product = "guhcl",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "ammonium-mixture",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "ammonia",           amount = 100},
        {type = "fluid", name = "hot-air",           amount = 100},
        {type = "item",  name = "urea",              amount = 5},
        {type = "item",  name = "ammonium-chloride", amount = 1},
        {type = "item",  name = "sodium-aluminate",  amount = 1},
    },
    results = {
        {type = "item", name = "ammonium-mixture", amount = 1},
    },
    --main_product = "guhcl",
}:add_unlock("aluminium-mk03")

RECIPE {
    type = "recipe",
    name = "hexafluoroacetone",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "plastic-bar", amount = 2},
        {type = "fluid", name = "chlorine",    amount = 50},
        {type = "fluid", name = "acidgas",     amount = 50},
        {type = "fluid", name = "acetone",     amount = 100},
    },
    results = {
        {type = "item",  name = "hexafluoroacetone", amount = 1},
        {type = "fluid", name = "hydrogen-chloride", amount = 50},
    },
    main_product = "hexafluoroacetone",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "hfip",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "plastic-bar",       amount = 2},
        {type = "item", name = "active-carbon",     amount = 1},
        {type = "item", name = "hexafluoroacetone", amount = 1},
        {type = "item", name = "sncr-alloy",        amount = 1},
    },
    results = {
        {type = "item", name = "hfip", amount = 1},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "pre-fiber-1",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "zungror-cocoon", amount = 2},
        {type = "fluid", name = "formic-acid",    amount = 100},
        {type = "item",  name = "urea",           amount = 5},
    },
    results = {
        {type = "fluid", name = "pre-fiber-1", amount = 100},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "pre-fiber-2",
    category = "pan",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "libr",        amount = 1},
        {type = "fluid", name = "pre-fiber-1", amount = 100},
    },
    results = {
        {type = "fluid", name = "pre-fiber-2", amount = 100},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "pre-fiber-3",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "hfip",        amount = 1},
        {type = "item",  name = "guhcl",       amount = 1},
        {type = "fluid", name = "pre-fiber-2", amount = 100},
    },
    results = {
        {type = "fluid", name = "pre-fiber-3", amount = 100},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "rpc-mesh",
    category = "centrifuging-low", -- temporary
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "ethanol",     amount = 100},
        {type = "fluid", name = "pre-fiber-3", amount = 100},
    },
    results = {
        {type = "item", name = "rpc-mesh", amount = 1},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nano-mesh")

RECIPE {
    type = "recipe",
    name = "nano-mesh",
    category = "nmf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "rpc-mesh",   amount = 1},
        {type = "item", name = "core-shell", amount = 1},
        {type = "item", name = "keratin",    amount = 5},
    },
    results = {
        {type = "item", name = "nano-mesh", amount = 1},
    },
    --main_product = "hexafluoroacetone",
}:add_unlock("nano-mesh")
