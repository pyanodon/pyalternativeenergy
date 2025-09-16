RECIPE {
    type = "recipe",
    name = "gas-molten-salt-01",
    category = "gas-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 1000},
    },
    order = "z-[molten-salt]-[plant-gas-mk01]",
    icons = py.composite_icon("hot-molten-salt", "natural-gas"),
}:add_unlock("gasplant-mk01")

RECIPE {
    type = "recipe",
    name = "gas-molten-salt-02",
    category = "gas-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 2000},
    },
    order = "z-[molten-salt]-[plant-gas-mk02]",
    icons = py.composite_icon("hot-molten-salt", "refined-natural-gas"),
}:add_unlock("gasplant-mk02")

RECIPE {
    type = "recipe",
    name = "gas-molten-salt-03",
    category = "gas-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 3000},
    },
    order = "z-[molten-salt]-[plant-gas-mk03]",
    icons = py.composite_icon("hot-molten-salt", "purified-natural-gas"),
}:add_unlock("gasplant-mk03")

RECIPE {
    type = "recipe",
    name = "gas-molten-salt-04",
    category = "gas-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 500},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 4000},
    },
    order = "z-[molten-salt]-[plant-gas-mk04]",
    icons = py.composite_icon("hot-molten-salt", "pure-natural-gas"),
}:add_unlock("gasplant-mk04")
