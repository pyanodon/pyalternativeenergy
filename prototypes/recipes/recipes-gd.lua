--COMMON

RECIPE {
    type = "recipe",
    name = "re-pulp-01",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "rare-earth-dust", amount = 5},
        {type = "item", name = "coke", amount = 5},
        {type = "item", name = "sodium-hydroxide", amount = 10},
    },
    results = {
        {type = "fluid", name = "re-pulp-01", amount = 50},
    },
    --main_product = "sb-grade-02",
}:add_unlock("rare-earth-tech-mk02")

RECIPE {
    type = "recipe",
    name = "re-precipitate-01",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "re-pulp-01", amount = 50},
        {type = "item", name = "filtration-media", amount = 1},
    },
    results = {
        {type = "item", name = "re-precipitate-01", amount = 1},
        {type = "fluid", name = "dirty-water-light", amount = 50},
    },
    main_product = "re-precipitate-01",
}:add_unlock("rare-earth-tech-mk02")

RECIPE {
    type = "recipe",
    name = "re-pulp-02",
    category = "leaching",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "re-precipitate-01", amount = 1},
        {type = "item", name = "sodium-carbonate", amount = 1},
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "sodium-hydroxide", amount = 10},
    },
    results = {
        {type = "fluid", name = "re-pulp-02", amount = 50},
    },
    --main_product = "sb-grade-02",
}:add_unlock("rare-earth-tech-mk02")

RECIPE {
    type = "recipe",
    name = "re-precipitate-02",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "re-pulp-02", amount = 100},
        {type = "item", name = "filtration-media", amount = 1},
    },
    results = {
        {type = "item", name = "re-precipitate-02", amount = 1},
        {type = "item", name = "uranium-ore", amount = 1, probability = 0.5},
    },
    main_product = "re-precipitate-02",
}:add_unlock("rare-earth-tech-mk02")

RECIPE {
    type = "recipe",
    name = "re-pulp-03",
    category = "pan",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "re-precipitate-02", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "re-pulp-03", amount = 50},
    },
    --main_product = "sb-grade-02",
}:add_unlock("rare-earth-tech-mk02")

--THORIUM

RECIPE {
    type = "recipe",
    name = "re-pulp-04",
    category = "rectisol",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "re-pulp-03", amount = 50},
        {type = "fluid", name = "organic-solvent", amount = 100},
    },
    results = {
        {type = "fluid", name = "re-pulp-04", amount = 50},
    },
    --main_product = "sb-grade-02",
}:add_unlock("rare-earth-tech-mk02")

RECIPE {
    type = "recipe",
    name = "stripped-th",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "re-pulp-04", amount = 50},
        {type = "fluid", name = "hydrogen-chloride", amount = 50},
    },
    results = {
        {type = "fluid", name = "stripped-th", amount = 100},
    },
    --main_product = "sb-grade-02",
}:add_unlock("thorium")

RECIPE {
    type = "recipe",
    name = "th-dust",
    category = "centrifuging-low", -- temporary
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "stripped-th", amount = 100},
        {type = "fluid", name = "ammonia", amount = 100},
    },
    results = {
        {type = "item", name = "th-dust", amount = 1},
    },
    --main_product = "sb-grade-02",
}:add_unlock("thorium")

RECIPE {
    type = "recipe",
    name = "th-oxalate",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "ammonium-oxalate", amount = 1},
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "th-dust", amount = 1},
    },
    results = {
        {type = "fluid", name = "th-oxalate", amount = 50},
    },
    --main_product = "sb-grade-02",
}:add_unlock("thorium")

RECIPE {
    type = "recipe",
    name = "th-oxide",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "th-oxalate", amount = 50},
        {type = "fluid", name = "ammonia", amount = 100},
        {type = "item", name = "filtration-media", amount = 1},
        {type = "item", name = "flask", amount = 1},
    },
    results = {
        {type = "item", name = "th-oxide", amount = 2},
        {type = "fluid", name = "dirty-water-light", amount = 50},
    },
    main_product = "th-oxide",
}:add_unlock("thorium")

--GADOLINIUM

RECIPE {
    type = "recipe",
    name = "gd-mixture",
    category = "rectisol",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "re-pulp-03", amount = 100},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "gd-mixture", amount = 1},
    },
    --main_product = "sb-grade-02",
}:add_unlock("gadolinium")

RECIPE {
    type = "recipe",
    name = "gd-oxalate",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gd-mixture", amount = 1},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "ammonium-oxalate", amount = 1}
    },
    results = {
        {type = "item", name = "gd-oxalate", amount = 1},
        {type = "fluid", name = "dirty-water-light", amount = 100},
    },
    main_product = "gd-oxalate",
}:add_unlock("gadolinium")

RECIPE {
    type = "recipe",
    name = "gd-crystal",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "gd-oxalate", amount = 1},
        {type = "item", name = "coke", amount = 3}
    },
    results = {
        {type = "item", name = "gd-crystal", amount = 1},
    },
    --main_product = "gd-oxalate",
}:add_unlock("gadolinium")

RECIPE {
    type = "recipe",
    name = "gd-stripped-solution",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "acid-strip-solution", amount = 100},
        {type = "item", name = "gd-crystal", amount = 2}
    },
    results = {
        {type = "fluid", name = "gd-stripped-solution", amount = 50},
    },
    --main_product = "gd-oxalate",
}:add_unlock("gadolinium")

RECIPE {
    type = "recipe",
    name = "crystalized-gd",
    category = "centrifuging-low", -- temporary
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "gd-stripped-solution", amount = 50},
        {type = "item", name = "ammonium-chloride", amount = 2},
    },
    results = {
        {type = "item", name = "crystalized-gd", amount = 1},
    },
    --main_product = "sb-grade-02",
}:add_unlock("gadolinium")

RECIPE {
    type = "recipe",
    name = "impure-gd",
    category = "upgrader",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crystalized-gd", amount = 1},
    },
    results = {
        {type = "item", name = "impure-gd", amount = 1},
    },
    --main_product = "sb-grade-02",
}:add_unlock("gadolinium")

RECIPE {
    type = "recipe",
    name = "gd-oxide",
    category = "washer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "impure-gd", amount = 1},
        {type = "fluid", name = "aromatics", amount = 150},
        {type = "item", name = "flask", amount = 1},

    },
    results = {
        {type = "item", name = "gd-oxide", amount = 1},
    },
    --main_product = "sb-grade-02",
}:add_unlock("gadolinium")

RECIPE {
    type = "recipe",
    name = "gd-metal",
    category = "bof",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "gd-oxide", amount = 1},
    },
    results = {
        {type = "item", name = "gd-metal", amount = 1},
    },
    --main_product = "sb-grade-02",
}:add_unlock("gadolinium")
