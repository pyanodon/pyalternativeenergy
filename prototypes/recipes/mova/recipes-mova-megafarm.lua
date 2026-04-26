local tile_count = 529

RECIPE {
    type = "recipe",
    name = "mova-super-1",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",          amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 1000},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 1},
    },
    order = "mova-a"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-2",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",          amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 1000},
        {type = "fluid", name = "water",          amount = 3000},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 2},
    },
    order = "mova-b"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-3",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",          amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 1000},
        {type = "fluid", name = "water",          amount = 3000},
        {type = "item",  name = "soil",           amount = 150},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 3},
    },
    order = "mova-c"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-4",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",          amount = 100},
        {type = "fluid", name = "water",          amount = 3000},
        {type = "fluid", name = "carbon-dioxide", amount = 1000},
        {type = "item",  name = "soil",           amount = 150},
        {type = "item",  name = "manure",         amount = 150},

    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 4},
    },
    order = "mova-d"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-5",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",          amount = 100},
        {type = "fluid", name = "water",          amount = 3000},
        {type = "fluid", name = "carbon-dioxide", amount = 1000},
        {type = "item",  name = "soil",           amount = 150},
        {type = "item",  name = "manure",         amount = 150},
        {type = "item",  name = "ash",            amount = 200},

    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 5},
    },
    order = "mova-e"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-6",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",          amount = 100},
        {type = "fluid", name = "water",          amount = 3000},
        {type = "fluid", name = "carbon-dioxide", amount = 1000},
        {type = "item",  name = "soil",           amount = 150},
        {type = "item",  name = "manure",         amount = 150},
        {type = "item",  name = "ash",            amount = 200},
        {type = "item",  name = "lignin",         amount = 200},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 6},
    },
    order = "mova-f"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-7",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",          amount = 100},
        {type = "fluid", name = "water",          amount = 3000},
        {type = "fluid", name = "carbon-dioxide", amount = 1000},
        {type = "item",  name = "soil",           amount = 150},
        {type = "item",  name = "fertilizer",     amount = 100},
        {type = "item",  name = "ash",            amount = 200},
        {type = "item",  name = "lignin",         amount = 200},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 7},
    },
    order = "mova-g"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-8",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone",            amount = 100},
        {type = "fluid", name = "natural-gas",      amount = 1000},
        {type = "fluid", name = "carbon-dioxide",   amount = 1000},
        {type = "item",  name = "soil",             amount = 150},
        {type = "item",  name = "coarse",           amount = 100},
        {type = "item",  name = "ammonium-sulfate", amount = 100},
        {type = "item",  name = "fertilizer",       amount = 100},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 8},
    },
    order = "mova-h"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-9",
    category = "mova-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "lignin",           amount = 200},
        {type = "fluid", name = "natural-gas",      amount = 1000},
        {type = "fluid", name = "carbon-dioxide",   amount = 1000},
        {type = "item",  name = "soil",             amount = 150},
        {type = "item",  name = "coarse",           amount = 100},
        {type = "item",  name = "ammonium-sulfate", amount = 100},
        {type = "item",  name = "blood-meal",       amount = 100},
        {type = "item",  name = "fertilizer",       amount = 100},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 9},
    },
    order = "mova-i"
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "mova-super-10",
    category = "mova-farm",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item",  name = "lignin",           amount = 200},
        {type = "fluid", name = "natural-gas",      amount = 1000},
        {type = "fluid", name = "carbon-dioxide",   amount = 1000},
        {type = "item",  name = "soil",             amount = 150},
        {type = "item",  name = "ammonium-sulfate", amount = 100},
        {type = "item",  name = "blood-meal",       amount = 100},
        {type = "item",  name = "fertilizer",       amount = 100},
        {type = "item",  name = "gh",               amount = 3},
    },
    results = {
        {type = "item", name = "mova", amount = tile_count * 10},
    },
    order = "mova-j"
}:add_unlock("mega-farm-mova")
