RECIPE {
    type = "recipe",
    name = "he-01",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, minimum_temperature = 950},
        {type = "fluid", name = "pressured-water", amount = 75},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 200},
        {type = "fluid", name = "pressured-steam", amount = 75, temperature = 1000},
    },
    main_product = "pressured-steam",
}:add_unlock("coalplant-mk01"):add_unlock("oilplant-mk01"):add_unlock("biomassplant-mk01")

RECIPE {
    type = "recipe",
    name = "he-02",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 1950},
        {type = "fluid", name = "pressured-water", amount = 75},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 75, temperature = 2000},
    },
    main_product = "pressured-steam",
}:add_unlock("coalplant-mk02"):add_unlock("oilplant-mk02"):add_unlock("biomassplant-mk02")

RECIPE {
    type = "recipe",
    name = "he-03",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 2950},
        {type = "fluid", name = "pressured-water", amount = 75},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 75, temperature = 3000},
    },
    main_product = "pressured-steam",
}:add_unlock("coalplant-mk03"):add_unlock("oilplant-mk03"):add_unlock("biomassplant-mk03")

RECIPE {
    type = "recipe",
    name = "he-04",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 3950},
        {type = "fluid", name = "pressured-water", amount = 75},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 75, temperature = 4000},
    },
    main_product = "pressured-steam",
}:add_unlock("coalplant-mk04"):add_unlock("oilplant-mk04"):add_unlock("biomassplant-mk04")

RECIPE {
    type = "recipe",
    name = "he-05",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "hot-molten-salt", amount = 100, minimum_temperature = 4950},
        {type = "fluid", name = "pressured-water", amount = 75},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100},
        {type = "fluid", name = "pressured-steam", amount = 75, temperature = 5000},
    },
    main_product = "pressured-steam",
}:add_unlock("nonrenewable-mk04")

--Geothermal
RECIPE {
    type = "recipe",
    name = "geo-he-00",
    category = "rhe",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "geothermal-water", amount = 600, minimum_temperature = 950},
    },
    results = {
        {type = "fluid", name = "steam", amount = 300, temperature = 500},
    },
    main_product = "steam",
    subgroup = "py-alternativeenergy-fluids",
    order = "s"
}:add_unlock("geothermal-power-mk01")

RECIPE {
    type = "recipe",
    name = "geo-he-01",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "geothermal-water", amount = 600, minimum_temperature = 950},
        {type = "fluid", name = "pressured-water", amount = 75},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 75, temperature = 1000},
    },
    main_product = "pressured-steam",
    subgroup = "py-alternativeenergy-fluids",
    order = "s"
}:add_unlock("geothermal-power-mk02")

RECIPE {
    type = "recipe",
    name = "geo-he-02",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "geothermal-water", amount = 600, minimum_temperature = 1950},
        {type = "fluid", name = "pressured-water", amount = 100},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 100, temperature = 2000},
    },
    main_product = "pressured-steam",
    subgroup = "py-alternativeenergy-fluids",
    order = "s"
}:add_unlock("geothermal-power-mk03")

RECIPE {
    type = "recipe",
    name = "geo-he-03",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "geothermal-water", amount = 600, minimum_temperature = 2950},
        {type = "fluid", name = "pressured-water", amount = 125},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 125, temperature = 5000},
    },
    main_product = "pressured-steam",
    subgroup = "py-alternativeenergy-fluids",
    order = "s"
}:add_unlock("geothermal-power-mk04")