--MK01

RECIPE {
    type = "recipe",
    name = "sb-grade-01",
    category = "screener",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "antimonium-ore", amount = 10}
    },
    results = {
        {type = "item", name = "sb-grade-01", amount = 5},
        {type = "item", name = "sb-grade-02", amount = 3},
        {type = "item", name = "stone", amount = 2},
        {type = "item", name = "iron-oxide", amount = 1, probability = 0.3},
    },
    main_product = "sb-grade-02",
}:add_unlock("antimony-mk01")

RECIPE {
    type = "recipe",
    name = "sb-grade-02",
    category = "crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sb-grade-01", amount = 5}
    },
    results = {
        {type = "item", name = "sb-grade-02", amount = 10},
        {type = "item", name = "stone", amount = 2, probability = 0.2},
    },
    main_product = "sb-grade-02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/crush-sb.png",
    icon_size = 64,
    subgroup = "py-rawores-antimony",
    order = "aab"
}:add_unlock("antimony-mk01")

RECIPE {
    type = "recipe",
    name = "sb-grade-03",
    category = "screener",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sb-grade-02", amount = 10}
    },
    results = {
        {type = "item", name = "sb-grade-03", amount = 2, probability = 0.4},
        {type = "item", name = "sb-grade-04", amount = 5},
        {type = "item", name = "gravel", amount = 3},
    },
    main_product = "sb-grade-03",
}:add_unlock("antimony-mk01")

RECIPE {
    type = "recipe",
    name = "sb-grade-04",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sb-grade-03", amount = 5}
    },
    results = {
        {type = "item", name = "sb-grade-04", amount = 4},
    },
    --main_product = "sb-grade-03",
}:add_unlock("antimony-mk01")

--MK01 simple recipe

RECIPE {
    type = "recipe",
    name = "sb-oxide-01",
    category = "bof",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sb-grade-04", amount = 10},
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item", name = "plastic-bar", amount = 1},
    },
    results = {
        {type = "item", name = "sb-oxide", amount = 1},
    },
    --main_product = "sb-grade-03",
}:add_unlock("antimony-mk01")

----------------------------------------------------------------------------
--MK02

RECIPE {
    type = "recipe",
    name = "sb-crushed",
    category = "ball-mill",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sb-grade-04", amount = 5},
        {type = "item", name = "lime", amount = 3},
    },
    results = {
        {type = "item", name = "sb-crushed", amount = 1},
    },
    --main_product = "sb-grade-03",
}:add_unlock("antimony-mk02")

RECIPE {
    type = "recipe",
    name = "sb-dust",
    category = "classifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sb-crushed", amount = 2},
    },
    results = {
        {type = "item", name = "sb-dust", amount = 1},
        {type = "item", name = "sb-grade-04", amount = 1, probability = 0.5},
    },
    main_product = "sb-dust",
}:add_unlock("antimony-mk02")

RECIPE {
    type = "recipe",
    name = "sb-pulp-01",
    category = "agitator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sb-dust", amount = 1},
        {type = "item", name = "lead-acetate", amount = 1},
        {type = "fluid", name = "naphtha", amount = 100},
    },
    results = {
        {type = "fluid", name = "sb-pulp-01", amount = 100},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk02")

RECIPE {
    type = "recipe",
    name = "sb-pulp-02",
    category = "flotation",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "sb-pulp-01", amount = 100},
        {type = "fluid", name = "pressured-air", amount = 50},
        {type = "fluid", name = "dowfroth-250", amount = 50},
    },
    results = {
        {type = "fluid", name = "sb-pulp-02", amount = 50},
        {type = "fluid", name = "sb-58-conc", amount = 50, probability = 0.2},
    },
    main_product = "sb-pulp-02",
}:add_unlock("antimony-mk02")

--MK02 simple recipe

--pulp 2 sink
RECIPE {
    type = "recipe",
    name = "sb-oxide-02",
    category = "bof",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sb-pulp-02", amount = 100},
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item", name = "plastic-bar", amount = 3},
    },
    results = {
        {type = "item", name = "sb-oxide", amount = 3},
    },
    --main_product = "sb-grade-03",
}:add_unlock("antimony-mk02")

--real one
RECIPE {
    type = "recipe",
    name = "sb-oxide-02a",
    category = "bof",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sb-58-conc", amount = 50},
        {type = "fluid", name = "oxygen", amount = 100},
        {type = "item", name = "plastic-bar", amount = 10},
    },
    results = {
        {type = "item", name = "sb-oxide", amount = 10},
    },
    --main_product = "sb-grade-03",
}:add_unlock("antimony-mk02")

----------------------------------------------------------------------------
--MK03

RECIPE {
    type = "recipe",
    name = "sb-pulp-03",
    category = "hydrocyclone",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sb-pulp-02", amount = 100},
        {type = "fluid", name = "pressured-water", amount = 100},
    },
    results = {
        {type = "fluid", name = "sb-pulp-03", amount = 100},
        {type = "fluid", name = "sb-low-conc", amount = 25},
    },
    main_product = "sb-pulp-03",
}:add_unlock("antimony-mk03")

RECIPE {
    type = "recipe",
    name = "sb-pulp-04",
    category = "flotation",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sb-pulp-03", amount = 200},
        {type = "fluid", name = "pressured-air", amount = 50},
        {type = "fluid", name = "aerofloat-15", amount = 50},
    },
    results = {
        {type = "fluid", name = "sb-pulp-04", amount = 100},
        {type = "fluid", name = "sb-low-conc", amount = 25},
    },
    main_product = "sb-pulp-04",
}:add_unlock("antimony-mk03")

RECIPE {
    type = "recipe",
    name = "sb-low-conc",
    category = "flotation",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sb-pulp-04", amount = 100},
        {type = "fluid", name = "pressured-air", amount = 50},
        {type = "fluid", name = "kerosene", amount = 50},
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "fluid", name = "sb-low-conc", amount = 50},
    },
    main_product = "sb-low-conc",
}:add_unlock("antimony-mk03")

RECIPE {
    type = "recipe",
    name = "sb-11-conc",
    category = "grease",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "sb-low-conc", amount = 100},
        {type = "fluid", name = "grease", amount = 50},
        {type = "fluid", name = "kerosene", amount = 50},
    },
    results = {
        {type = "item", name = "pyrite", amount = 2},
        {type = "fluid", name = "sb-11-conc", amount = 100},
    },
    main_product = "sb-11-conc",
}:add_unlock("antimony-mk03")

RECIPE {
    type = "recipe",
    name = "sb-58-conc",
    category = "pan",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "sb-11-conc", amount = 100},
        {type = "fluid", name = "dowfroth-250", amount = 100},
    },
    results = {
        {type = "fluid", name = "sb-58-conc", amount = 100},
    },
    main_product = "sb-58-conc",
}:add_unlock("antimony-mk03")

----------------------------------------------------------------------------
--MK04

RECIPE {
    type = "recipe",
    name = "sb-pulp-05",
    category = "flotation",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "sb-58-conc", amount = 100},
        {type = "fluid", name = "pressured-air", amount = 50},
        {type = "item", name = "sodium-cyanate", amount = 5},
    },
    results = {
        {type = "fluid", name = "sb-pulp-05", amount = 100},
    },
    --main_product = "sb-58-conc",
}:add_unlock("antimony-mk04")

RECIPE {
    type = "recipe",
    name = "sb-final-conc",
    category = "jig",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "sb-pulp-05", amount = 100},
        {type = "fluid", name = "scrude", amount = 100},
    },
    results = {
        {type = "fluid", name = "sb-final-conc", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "sb-final-conc",
}:add_unlock("antimony-mk04")

RECIPE {
    type = "recipe",
    name = "sb-conc",
    category = "thickener",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sb-final-conc", amount = 100},
        {type = "fluid", name = "pressured-water", amount = 100},
    },
    results = {
        {type = "fluid", name = "sb-conc", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "sb-conc",
}:add_unlock("antimony-mk04")

RECIPE {
    type = "recipe",
    name = "high-purified-sb",
    category = "carbonfilter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "sb-conc", amount = 100},
        {type = "item", name = "filtration-media", amount = 2},
    },
    results = {
        {type = "item", name = "high-purified-sb", amount = 1},
    },
    --main_product = "sb-conc",
}:add_unlock("antimony-mk04")

--real one
RECIPE {
    type = "recipe",
    name = "sb-oxide-04",
    category = "bof",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "high-purified-sb", amount = 1},
        {type = "fluid", name = "oxygen", amount = 100},
        {type = "item", name = "plastic-bar", amount = 25},
    },
    results = {
        {type = "item", name = "sb-oxide", amount = 25},
    },
    --main_product = "sb-grade-03",
}:add_unlock("antimony-mk04")