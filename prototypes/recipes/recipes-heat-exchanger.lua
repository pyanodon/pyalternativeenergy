RECIPE {
    type = "recipe",
    name = "he-01",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, minimum_temperature = 950},
        {type = "fluid", name = "pressured-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 200},
        {type = "fluid", name = "pressured-steam", amount = 300, temperature = 1000},
    },
    main_product = "pressured-steam",
}:add_unlock("coalplant-mk01"):add_unlock("oilplant-mk01")

RECIPE {
    type = "recipe",
    name = "he-02",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 1950},
        {type = "fluid", name = "pressured-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 300, temperature = 2000},
    },
    main_product = "pressured-steam",
}:add_unlock("nonrenewable-mk02")

RECIPE {
    type = "recipe",
    name = "he-03",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 2950},
        {type = "fluid", name = "pressured-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 300, temperature = 3000},
    },
    main_product = "pressured-steam",
}:add_unlock("nonrenewable-mk03")

RECIPE {
    type = "recipe",
    name = "he-04",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 3950},
        {type = "fluid", name = "pressured-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 300, temperature = 4000},
    },
    main_product = "pressured-steam",
}:add_unlock("nonrenewable-mk04")

RECIPE {
    type = "recipe",
    name = "he-05",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 4950},
        {type = "fluid", name = "pressured-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 300, temperature = 5000},
    },
    main_product = "pressured-steam",
}:add_unlock("nonrenewable-mk04")
