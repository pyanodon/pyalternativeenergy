RECIPE {
    type = "recipe",
    name = "lrf-steam-1",
    categories = {"lrf"},
    enabled = false,
    energy_required = 4,
    main_product = "pressured-steam",
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 1000},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 2000},
    },
    hidden = true
}:add_unlock("thermal-mk01")

RECIPE {
    type = "recipe",
    name = "lrf-steam-2",
    categories = {"lrf2"},
    enabled = false,
    energy_required = 4,
    main_product = "pressured-steam",
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 1000},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 3000},
    },
    hidden = true
}:add_unlock("thermal-mk02")
