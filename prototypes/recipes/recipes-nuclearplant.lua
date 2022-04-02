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
