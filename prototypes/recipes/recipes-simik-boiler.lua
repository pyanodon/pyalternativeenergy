RECIPE {
    type = "recipe",
    name = "steam-250",
    category = "simik-boiler",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
    },
    results = {
        {type = "fluid", name = "steam", amount = 500, temperature = 250},
    },
    subgroup = "py-fluid-handling",
    order = "o2"
}:add_unlock("domesitication-mk03")

RECIPE {
    type = "recipe",
    name = "steam-500",
    category = "simik-boiler",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
    },
    results = {
        {type = "fluid", name = "steam", amount = 500, temperature = 500},
    },
    subgroup = "py-fluid-handling",
    order = "o2"
}:add_unlock("domesitication-mk03")

RECIPE {
    type = "recipe",
    name = "pressured-steam-1",
    category = "simik-boiler",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 500, temperature = 1000},
    },
    --main_product = "eg-si",
}:add_unlock("domesitication-mk03")

RECIPE {
    type = "recipe",
    name = "pressured-steam-2",
    category = "simik-boiler",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 500, temperature = 2000},
    },
    --main_product = "eg-si",
}:add_unlock("domesitication-mk03")

RECIPE {
    type = "recipe",
    name = "pressured-steam-3",
    category = "simik-boiler",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 500, temperature = 3000},
    },
    --main_product = "eg-si",
}:add_unlock("domesitication-mk03")

RECIPE {
    type = "recipe",
    name = "pressured-steam-4",
    category = "simik-boiler",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 500, temperature = 4000},
    },
    --main_product = "eg-si",
}:add_unlock("simik-mk04")

RECIPE {
    type = "recipe",
    name = "simik-hot-air-boiler",
    category = "simik-boiler",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "pressured-air", amount = 200},
    },
    results = {
        {type = "fluid", name = "hot-air", amount = 200},
    },
    --main_product = "eg-si",
}:add_unlock("domesitication-mk03")