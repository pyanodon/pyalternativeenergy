RECIPE {
    type = "recipe",
    name = "test",
    category = "solar-tower",
    enabled = true,
    energy_required = 400,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 1}
    },
    results = {
        {type = "item", name = "iron-plate", amount = 1},
    },
--    main_product = "molybdenite-dust",
}

RECIPE {
    type = "recipe",
    name = "lead-acetate",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "lead-plate", amount = 3},
        {type = "fluid", name = "acetic-acid", amount = 50},
        {type = "fluid", name = "hydrogen-peroxide", amount = 50},
    },
    results = {
        {type = "item", name = "lead-acetate", amount = 1},
    },
--    main_product = "molybdenite-dust",
}:add_unlock("antimony-mk02")

RECIPE {
    type = "recipe",
    name = "dowfroth-250",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "methanol", amount = 50},
        {type = "item", name = "chromium", amount = 2},
        {type = "fluid", name = "ethylene-glycol", amount = 100},
    },
    results = {
        {type = "fluid", name = "dowfroth-250", amount = 100},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk02")

RECIPE {
    type = "recipe",
    name = "sodium-cyanate",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sodium-carbonate", amount = 2},
        {type = "fluid", name = "cyanic-acid", amount = 100},
    },
    results = {
        {type = "item", name = "sodium-cyanate", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk04")