RECIPE {
    type = "recipe",
    name = "oil-molten-salt-01",
    category = "oil-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 1000},
    },
    icons = py.composite_icon("hot-molten-salt", "kerosene"),
}:add_unlock("oilplant-mk01")

RECIPE {
    type = "recipe",
    name = "oil-molten-salt-02",
    category = "oil-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 2000},
    },
    icons = py.composite_icon("hot-molten-salt", "fuel-oil"),
}:add_unlock("oilplant-mk02")

RECIPE {
    type = "recipe",
    name = "oil-molten-salt-03",
    category = "oil-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 3000},
    },
    icons = py.composite_icon("hot-molten-salt", "diesel"),
}:add_unlock("oilplant-mk03")

RECIPE {
    type = "recipe",
    name = "oil-molten-salt-04",
    category = "oil-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 4000},
    },
    icons = py.composite_icon("hot-molten-salt", "gasoline"),
}:add_unlock("oilplant-mk04")
