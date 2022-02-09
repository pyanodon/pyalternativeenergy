RECIPE {
    type = "recipe",
    name = "oil-molten-salt-01",
    category = "oil-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 200},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, temperature = 1000},

    },
}:add_unlock("oilplant-mk01")
