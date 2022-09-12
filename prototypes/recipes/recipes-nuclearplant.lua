RECIPE {
    type = "recipe",
    name = "nuclear-molten-salt-01",
    category = "nuclear-fission",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-1", amount = 200, --[[temperature = 1000]]},
        {type = "fluid", name = "neutron", amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-1"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "thermal-neutron",
    category = "neutron-moderator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "neutron", amount = 200},
    },
    results = {
        {type = "fluid", name = "neutron", amount = 200, temperature = 1000},
    },
    main_product = "neutron"
}:add_unlock("nuclear-power")
