RECIPE({
    type = "recipe",
    name = "coal-molten-salt-01",
    category = "coal-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        { type = "fluid", name = "molten-salt", amount = 500 },
    },
    results = {
        { type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 1000 },
    },
}):add_unlock("coalplant-mk01")

RECIPE({
    type = "recipe",
    name = "coal-molten-salt-02",
    category = "coal-powerplant-mk02",
    enabled = false,
    energy_required = 40,
    ingredients = {
        { type = "fluid", name = "molten-salt", amount = 500 },
    },
    results = {
        { type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 2000 },
    },
}):add_unlock("coalplant-mk02")

RECIPE({
    type = "recipe",
    name = "coal-molten-salt-03",
    category = "coal-powerplant-mk03",
    enabled = false,
    energy_required = 60,
    ingredients = {
        { type = "fluid", name = "molten-salt", amount = 500 },
    },
    results = {
        { type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 3000 },
    },
}):add_unlock("coalplant-mk03")

RECIPE({
    type = "recipe",
    name = "coal-molten-salt-04",
    category = "coal-powerplant-mk04",
    enabled = false,
    energy_required = 80,
    ingredients = {
        { type = "fluid", name = "molten-salt", amount = 500 },
    },
    results = {
        { type = "fluid", name = "hot-molten-salt", amount = 500, temperature = 4000 },
    },
}):add_unlock("coalplant-mk04")
