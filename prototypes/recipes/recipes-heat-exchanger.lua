RECIPE {
    type = "recipe",
    name = "he-01",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 950},
        {type = "fluid", name = "pressured-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 300, temperature = 1000},
    },
    main_product = "pressured-steam",
}:add_unlock("coalplant-mk01")
