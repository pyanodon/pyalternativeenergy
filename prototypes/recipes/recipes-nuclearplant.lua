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
        {type = "fluid", name = "reactor-waste-1", amount = 200},
        {type = "fluid", name = "neutron",         amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-1",
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "nuclear-molten-salt-02",
    category = "nuclear-fission-2",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-12", amount = 200},
        {type = "fluid", name = "neutron",          amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-12",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-1.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    }
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "nuclear-molten-salt-03",
    category = "nuclear-fission-3",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-13", amount = 200},
        {type = "fluid", name = "neutron",          amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-13",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-1.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    }
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "nuclear-molten-salt-04",
    category = "nuclear-fission-4",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-14", amount = 200},
        {type = "fluid", name = "neutron",          amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-14",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-1.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    }
}:add_unlock("nuclear-power-mk04")

    main_product = "reactor-waste-14"
}:add_unlock("nuclear-power-mk04")
RECIPE {
    type = "recipe",
    name = "mox-molten-salt-01",
    category = "nuclear-mox-fission",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-2", amount = 200},
        {type = "fluid", name = "neutron",         amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-2",
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "mox-molten-salt-02",
    category = "nuclear-mox-fission-2",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-22", amount = 200},
        {type = "fluid", name = "neutron",          amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-22",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-2.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    }
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "mox-molten-salt-03",
    category = "nuclear-mox-fission-3",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-23", amount = 200},
        {type = "fluid", name = "neutron",          amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-23",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-2.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    }
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "mox-molten-salt-04",
    category = "nuclear-mox-fission-4",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-salt", amount = 20000},
    },
    results = {
        {type = "fluid", name = "reactor-waste-24", amount = 200},
        {type = "fluid", name = "neutron",          amount = 200, temperature = 100},
    },
    main_product = "reactor-waste-24",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/reactor-waste-2.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    }
}:add_unlock("nuclear-power-mk04")

RECIPE {
    type = "recipe",
    name = "thermal-neutron",
    category = "neutron-moderator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "neutron", amount = 200, ignored_by_stats = 200},
    },
    results = {
        {type = "fluid", name = "neutron", amount = 200, temperature = 1000, ignored_by_stats = 200, ignored_by_productivity = 200},
    },
    main_product = "neutron"
}:add_unlock("nuclear-power")
