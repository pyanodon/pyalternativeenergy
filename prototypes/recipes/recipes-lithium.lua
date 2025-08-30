-- RECIPE {
--     type = "recipe",
--     name = "pocl3",
--     category = "hpf",
--     enabled = false,
--     energy_required = 10,
--     ingredients = {
--         {type = "item", name = "bones", amount = 5},
--         {type = "item", name = "active-carbon", amount = 3},
--         {type = "fluid", name = "chlorine", amount = 50},
--         {type = "item", name = "flask", amount = 2},
--     },
--     results = {
--         {type = "item", name = "pocl3", amount = 1},
--         {type = "fluid", name = "carbon-dioxide", amount = 20},
--     },
--     main_product = "pocl3",
-- }:add_unlock("lithium-processing")

RECIPE({
    type = "recipe",
    name = "acetaldehyde-1",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item",  name = "silver-plate", amount = 1 },
        { type = "fluid", name = "hot-air",      amount = 50 },
        { type = "fluid", name = "water",        amount = 100 },
        { type = "fluid", name = "acetylene",    amount = 100 },
        { type = "item",  name = "plastic-bar",  amount = 2 },
    },
    results = {
        { type = "item", name = "acetaldehyde", amount = 1 },
    },
    --main_product = "dodecanoic-acid",
}):add_unlock("tbp")

RECIPE({
    type = "recipe",
    name = "acetaldehyde-2",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "item",  name = "tio2",        amount = 1 },
        { type = "fluid", name = "ethanol",     amount = 100 },
        { type = "item",  name = "plastic-bar", amount = 2 },
    },
    results = {
        { type = "item", name = "acetaldehyde", amount = 1 },
    },
    --main_product = "dodecanoic-acid",
}):add_unlock("tbp")

RECIPE({
    type = "recipe",
    name = "pyridine",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item",  name = "cobalt-extract", amount = 1 },
        { type = "fluid", name = "hot-air",        amount = 50 },
        { type = "fluid", name = "acrolein",       amount = 100 },
        { type = "fluid", name = "ammonia",        amount = 100 },
        { type = "item",  name = "acetaldehyde",   amount = 1 },

    },
    results = {
        { type = "item", name = "pyridine", amount = 1 },
    },
    --main_product = "dodecanoic-acid",
}):add_unlock("tbp")

RECIPE({
    type = "recipe",
    name = "tbp",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item",  name = "pyridine",        amount = 1 },
        { type = "fluid", name = "benzene",         amount = 150 },
        { type = "fluid", name = "phosphoric-acid", amount = 50 },
        { type = "fluid", name = "butanol",         amount = 100 },
        { type = "item",  name = "barrel",          amount = 3 },

    },
    results = {
        { type = "item", name = "tbp", amount = 3 },
    },
    --main_product = "dodecanoic-acid",
}):add_unlock("tbp")

RECIPE({
    type = "recipe",
    name = "sb-silicate",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "fluid", name = "filtered-silicate-solution", amount = 100 },
    },
    results = {
        { type = "item", name = "sb-silicate", amount = 1 },
    },
    --main_product = "dodecanoic-acid",
}):add_unlock("sb-silicate")

RECIPE({
    type = "recipe",
    name = "lithium-hydroxide",
    category = "chemistry",
    enabled = false,
    energy_required = 200,
    ingredients = {
        { type = "fluid", name = "slacked-lime",      amount = 2000 },
        { type = "item",  name = "lithium-carbonate", amount = 20 },
        { type = "item",  name = "coated-container",  amount = 1 },
    },
    results = {
        { type = "item", name = "lithium-hydroxide", amount = 40 },
        { type = "item", name = "limestone",         amount = 80 },
    },
    main_product = "lithium-hydroxide",
}):add_unlock("lithium-processing")

RECIPE({
    type = "recipe",
    name = "lithium",
    category = "electrolyzer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "fluid", name = "water",             amount = 100 },
        { type = "item",  name = "lithium-hydroxide", amount = 1 },
    },
    results = {
        { type = "item", name = "lithium", amount = 2 },
    },
    --main_product = "lithium-hydroxide",
}):add_unlock("lithium-processing")
