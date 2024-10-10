--------------------------NUMAL-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "numal",
    category = "creature-chamber",
    enabled = false,
    energy_required = 400,
    ingredients = {
        {type = "item",  name = "alien-sample01",         amount = 5},
        {type = "item",  name = "cdna",                   amount = 5},
        {type = "item",  name = "bio-sample",             amount = 30},
        {type = "item",  name = "numal-codex",            amount = 1},
        {type = "item",  name = "earth-generic-sample",   amount = 2},
        {type = "item",  name = "strorix-unknown-sample", amount = 5}, --add alien sample from pyALiens mod here.
        {type = "fluid", name = "fetal-serum",            amount = 100},
        {type = "fluid", name = "artificial-blood",       amount = 200},
    },
    results = {
        {type = "item", name = "numal", amount = 1},
    },
}:add_unlock("numal-mk01")

RECIPE {
    type = "recipe",
    name = "numal-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",            amount = 2},
        {type = "item", name = "small-lamp",       amount = 2},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "tinned-cable",     amount = 10},
    },
    results = {
        {type = "item", name = "numal-codex", amount = 1},
    },
}:add_unlock("numal-mk01")

----food----
RECIPE {
    type = "recipe",
    name = "numal-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 2},
        {type = "item",  name = "xyhiphoe",     amount = 1},
        {type = "item",  name = "fish",         amount = 10},
        {type = "item",  name = "sap-seeds",    amount = 8},
        {type = "item",  name = "albumin",      amount = 3},
        {type = "item",  name = "fawogae",      amount = 3},
        {type = "item",  name = "native-flora", amount = 4},
        {type = "fluid", name = "milk",         amount = 100},
    },
    results = {
        {type = "item", name = "numal-food-01", amount = 5},
    },
}:add_unlock("numal-mk02")

RECIPE {
    type = "recipe",
    name = "numal-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 2},
        {type = "item",  name = "xyhiphoe",     amount = 1},
        {type = "item",  name = "fish",         amount = 10},
        {type = "item",  name = "sap-seeds",    amount = 8},
        {type = "item",  name = "ralesia",      amount = 4},
        {type = "item",  name = "brain",        amount = 3},
        {type = "item",  name = "shell",        amount = 5},
        {type = "item",  name = "grod-seeds",   amount = 7},
        {type = "item",  name = "albumin",      amount = 3},
        {type = "item",  name = "fawogae",      amount = 3},
        {type = "item",  name = "native-flora", amount = 4},
        {type = "fluid", name = "milk",         amount = 100},
        {type = "fluid", name = "blood",        amount = 50},
    },
    results = {
        {type = "item", name = "numal-food-02", amount = 6},
    },
}:add_unlock("numal-mk03")

---breeding---



---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'numal-01',
    category = 'incubator',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'numal-egg', amount = 3},
        {type = 'item', name = 'filtration-media', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'moss-gen', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 20},
    },
    results = {
        {type = 'item', name = 'numal', amount = 3},
    },
    main_product = "numal",
    subgroup = 'py-alienlife-numal',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'art-numal',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'fluid', name = 'artificial-blood', amount = 100},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'item', name = 'tissue-engineered-fat', amount = 1},
        {type = 'item', name = 'scafold-free-bones', amount = 1},
        {type = 'item', name = 'laboratory-grown-brain', amount = 1},
        {type = 'item', name = 'in-vitro-meat', amount = 1},
        {type = 'item', name = 'biomimetic-skin', amount = 1},
        {type = 'item', name = 'bioartificial-guts', amount = 1},
    },
    results = {
        {type = 'item', name = 'numal', amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")
]] --
RECIPE {
    type = "recipe",
    name = "numal-ink-to-antimony",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "numal-ink", amount = 50},
    },
    results = {
        {type = "item", name = "antimonium-ore", amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")
