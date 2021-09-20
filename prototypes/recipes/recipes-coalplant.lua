RECIPE {
    type = "recipe",
    name = "coal-molten-salt-01",
    category = "coal-powerplant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 200},
        {type = "item", name = "raw-coal", amount = 25},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt", amount = 200, temperature = 1000},

    },
}:add_unlock("coalplant-mk01")
