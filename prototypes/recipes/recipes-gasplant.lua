RECIPE {
    type = "recipe",
    name = "gas-molten-salt-01",
    category = "gas-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 200},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, temperature = 500},

    },
}:add_unlock("gasplant-mk01")
