RECIPE {
    type = "recipe",
    name = "biomass-molten-salt-01",
    category = "biomass-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 400},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 400, temperature = 1000},

    },
}:add_unlock("biomassplant-mk01")

RECIPE {
    type = "recipe",
    name = "biomass-molten-salt-02",
    category = "biomass-powerplant-mk02",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 400},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 400, temperature = 2000},
    },
}:add_unlock("biomassplant-mk02")

RECIPE {
    type = "recipe",
    name = "biomass-molten-salt-03",
    category = "biomass-powerplant-mk03",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 400},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 400, temperature = 3000},
    },
}:add_unlock("biomassplant-mk03")

RECIPE {
    type = "recipe",
    name = "biomass-molten-salt-04",
    category = "biomass-powerplant-mk04",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 400},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 400, temperature = 4000},
    },
}:add_unlock("biomassplant-mk04")
