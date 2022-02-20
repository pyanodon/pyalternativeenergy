RECIPE {
    type = "recipe",
    name = "nuclear-molten-salt-01",
    category = "nuclear-fission",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 200},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, temperature = 1000},
        {type = "fluid", name = "reactor-waste-1", amount = 200, --[[temperature = 1000]]},
    },
    main_product = "hot-molten-salt"
}:add_unlock("nuclear-power")

--[[
RECIPE {
    type = "recipe",
    name = "coal-molten-salt-02",
    category = "coal-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 200},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, temperature = 2000},

    },
}:add_unlock("coalplant-mk02")

RECIPE {
    type = "recipe",
    name = "coal-molten-salt-03",
    category = "coal-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 200},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, temperature = 3000},

    },
}:add_unlock("coalplant-mk03")

RECIPE {
    type = "recipe",
    name = "coal-molten-salt-04",
    category = "coal-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 200},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, temperature = 4000},

    },
}:add_unlock("coalplant-mk04")
]]--
