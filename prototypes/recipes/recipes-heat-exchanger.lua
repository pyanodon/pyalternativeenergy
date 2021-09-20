RECIPE {
    type = "recipe",
    name = "he-01",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 1000},
        {type = "fluid", name = "pressured-water", amount = 200},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100, temperature = 150},
        {type = "fluid", name = "pressured-steam", amount = 200, temperature = 1000},
    },
    main_product = "pressured-steam",
}:add_unlock("coalplant-mk01")
