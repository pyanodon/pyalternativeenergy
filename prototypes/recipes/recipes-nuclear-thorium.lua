
RECIPE {
    type = "recipe",
    name = "molten-thorium",
    category = "mixer",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "fluorine-gas", amount = 100},
        {type = "item", name = "lithium", amount = 10},
        {type = "item", name = "th-oxide", amount = 10}
    },
    results = {
        {type = "fluid", name = "molten-fluoride-thorium", amount = 100}
    },
    subgroup = "py-nuclear",
    order = "g"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "nuclear-molten-thorium-reactor",
    category = "nuclear-fission",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/nuclear-molten-thorium-reactor.png",
    icon_size = 64,
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "molten-fluoride-thorium", amount = 1000},
        {type = "fluid", name = "molten-salt", amount = 10000}
    },
    results = {
        {type = "fluid", name = "molten-fluoride-thorium-pa233", amount = 1000},
        {type = "fluid", name = "neutron", amount = 250, temperature = 100},
    },
    main_product = "molten-fluoride-thorium-pa233",
    subgroup = "py-nuclear",
    order = "g"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "pa-233-seperation",
    category = "centrifuging",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "molten-fluoride-thorium-pa233", amount = 1000},
        {type = "fluid", name = "molten-aluminium", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-fluoride-thorium", amount = 900},
        {type = "fluid", name = "hot-molten-salt", amount = 10000, temperature = 5000},
        {type = "item", name = "pa-233", amount = 10}
    },
    main_product = "pa-233",
    subgroup = "py-nuclear",
    order = "g"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "pa233-u233",
    category = "neutron-absorber",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "pa-233", amount = 10},
    },
    results = {
        {type = "item", name = "u-233", amount = 10}
    },
    main_product = "u-233",
    subgroup = "py-nuclear",
    order = "g"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "u233-uf6",
    category = "centrifuging",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "u-233", amount = 10},
    },
    results = {
        {type = "fluid", name = "uf6", amount = 10, temperature = 9999}
    },
    main_product = "uf6",
    subgroup = "py-nuclear",
    order = "g"
}:add_unlock("nuclear-power-mk03")
