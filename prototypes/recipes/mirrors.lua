--MK01

RECIPE {
    type = "recipe",
    name = "mirror-mk01",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "zinc-plate",      amount = 1},
        {type = "item", name = "nexelit-plate",   amount = 1},
        {type = "item", name = "copper-plate",    amount = 3},
        {type = "item", name = "crucible",        amount = 1},
        {type = "item", name = "aluminium-plate", amount = 5},
    },
    results = {
        {type = "item", name = "mirror-mk01", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk01")

--MK02

RECIPE {
    type = "recipe",
    name = "cerium-oxide",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "reo",               amount = 5},
        {type = "fluid", name = "vacuum",            amount = 50},
        {type = "item",  name = "oxalic-acid",       amount = 1},
        {type = "item",  name = "plastic-bar",       amount = 1},
        {type = "item",  name = "ammonium-chloride", amount = 1},
    },
    results = {
        {type = "item", name = "cerium-oxide", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "polishing-wheel",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "micro-fiber", amount = 2},
        {type = "item", name = "bolts",       amount = 5},
        {type = "item", name = "iron-plate",  amount = 1},
    },
    results = {
        {type = "item", name = "polishing-wheel", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "polished-glass-surface",
    category = "crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "glass",           amount = 5},
        {type = "item", name = "polishing-wheel", amount = 5},
        {type = "item", name = "cerium-oxide",    amount = 1},
    },
    results = {
        {type = "item", name = "polished-glass-surface", amount = 5},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "clean-glass-sheet",
    category = "washer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "polished-glass-surface", amount = 1},
        {type = "item",  name = "filtration-media",       amount = 1},
        {type = "fluid", name = "water",                  amount = 100},
    },
    results = {
        {type = "item",  name = "clean-glass-sheet", amount = 1},
        {type = "fluid", name = "dirty-water-light", amount = 100},
    },
    main_product = "clean-glass-sheet",
    icon = "__pyalternativeenergygraphics__/graphics/icons/polished-glass-washer.png",
    icon_size = 64,
    subgroup = "py-washer",
    order = "d"
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "stannous-chloride",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",       amount = 1},
        {type = "fluid", name = "hydrogen-chloride", amount = 50},
        {type = "item",  name = "tin-plate",         amount = 5},
    },
    results = {
        {type = "item", name = "stannous-chloride", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "silver-nitrate",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water",        amount = 100},
        {type = "fluid", name = "tholins",      amount = 50},
        {type = "item",  name = "silver-plate", amount = 3},
        {type = "item",  name = "plastic-bar",  amount = 1},
    },
    results = {
        {type = "item", name = "silver-nitrate", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "prepared-glass",
    category = "glassworks",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "stannous-chloride", amount = 1},
        {type = "item", name = "clean-glass-sheet", amount = 5},
    },
    results = {
        {type = "item", name = "prepared-glass", amount = 5},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "crude-mirror",
    category = "glassworks",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "silver-nitrate",   amount = 1},
        {type = "item",  name = "prepared-glass",   amount = 5},
        {type = "item",  name = "sugar",            amount = 5},
        {type = "item",  name = "sodium-hydroxide", amount = 3},
        {type = "fluid", name = "ammonia",          amount = 100},
    },
    results = {
        {type = "item", name = "crude-mirror", amount = 5},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "crude-mirror-2",
    category = "glassworks",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "silver-nitrate",   amount = 1},
        {type = "item",  name = "prepared-glass",   amount = 8},
        {type = "fluid", name = "methanal",         amount = 50},
        {type = "item",  name = "sodium-hydroxide", amount = 3},
        {type = "fluid", name = "ammonia",          amount = 100},
    },
    results = {
        {type = "item", name = "crude-mirror", amount = 8},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "axis-tracker",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "small-parts-01",      amount = 50},
        {type = "item", name = "duralumin",           amount = 10},
        {type = "item", name = "copper-cable",        amount = 30},
        {type = "item", name = "steel-plate",         amount = 25},
        {type = "item", name = "titanium-plate",      amount = 10},
        {type = "item", name = "rubber",              amount = 5},
        {type = "item", name = "plastic-bar",         amount = 3},
        {type = "item", name = "fenxsb-alloy",        amount = 20},
        {type = "item", name = "mechanical-parts-02", amount = 1},
    },
    results = {
        {type = "item", name = "axis-tracker", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("thermal-mk01")

RECIPE {
    type = "recipe",
    name = "mirror-mk02",
    category = "glassworks",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "crude-mirror",  amount = 1},
        {type = "item",  name = "lead-plate",    amount = 1},
        {type = "item",  name = "copper-plate",  amount = 3},
        {type = "fluid", name = "sulfuric-acid", amount = 50, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "mirror-mk02", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk02")

--MK03

RECIPE {
    type = "recipe",
    name = "acrylic",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "acrylonitrile",   amount = 2},
        {type = "item",  name = "methyl-acrylate", amount = 2},
        {type = "fluid", name = "ammonia",         amount = 160},
        {type = "fluid", name = "sulfuric-acid",   amount = 100},
        {type = "fluid", name = "natural-gas",     amount = 300},
        {type = "fluid", name = "acetone",         amount = 100},
    },
    results = {
        {type = "item", name = "acrylic", amount = 2},
    },
    --main_product = "libr",
}:add_unlock("acrylic")

RECIPE {
    type = "recipe",
    name = "mirror-mk03",
    category = "gas-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "acrylic",           amount = 1},
        {type = "item", name = "anti-reflex-glass", amount = 1},
        {type = "item", name = "polishing-wheel",   amount = 1},
        {type = "item", name = "cerium-oxide",      amount = 1},
        {type = "item", name = "silver-plate",      amount = 2},
        {type = "item", name = "epoxy",             amount = 2},
    },
    results = {
        {type = "item", name = "mirror-mk03", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk03")

--MK04

RECIPE {
    type = "recipe",
    name = "ometad",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "perovskite-nickelate", amount = 1},
        {type = "item", name = "rhodamine-b",          amount = 1},
        {type = "item", name = "1d-photonic-crystal",  amount = 1},
        {type = "item", name = "nxzngd",               amount = 1},
    },
    results = {
        {type = "item", name = "ometad", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk04")

RECIPE {
    type = "recipe",
    name = "mirror-mk04",
    category = "nano",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "ometad",            amount = 1},
        {type = "item", name = "phosphate-glass",   amount = 1},
        {type = "item", name = "nano-mesh",         amount = 1},
        {type = "item", name = "transparent-anode", amount = 1},
        {type = "item", name = "animal-reflectors", amount = 1},
        {type = "item", name = "tio2",              amount = 3},
        {type = "item", name = "silver-nitrate",    amount = 2},
        {type = "item", name = "polishing-wheel",   amount = 2},
        {type = "item", name = "cerium-oxide",      amount = 1},
    },
    results = {
        {type = "item", name = "mirror-mk04", amount = 1},
    },
    --main_product = "libr",
}:add_unlock("thermal-mk04")
