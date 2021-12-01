RECIPE {
    type = "recipe",
    name = "fenxsb-alloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 7},
        {type = "item", name = "nexelit-plate", amount = 6},
        {type = "item", name = "sb-oxide", amount = 1},
    },
    results = {
        {type = "item", name = "fenxsb-alloy", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk01")

RECIPE {
    type = "recipe",
    name = "vitreloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 3},
        {type = "item", name = "copper-plate", amount = 3},
        {type = "item", name = "nickel-plate", amount = 3},
        {type = "item", name = "nexelit-plate", amount = 3},
        {type = "item", name = "sb-oxide", amount = 3},
    },
    results = {
        {type = "item", name = "vitreloy", amount = 2},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk01")

RECIPE {
    type = "recipe",
    name = "intermetallics",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "vitreloy", amount = 1},
        {type = "item", name = "fenxsb-alloy", amount = 1},
    },
    results = {
        {type = "item", name = "intermetallics", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk01")

--MK02

RECIPE {
    type = "recipe",
    name = "self-assembly-monolayer",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "ptcda", amount = 1},
        {type = "item", name = "nbalti", amount = 1},
        {type = "item", name = "crmoni", amount = 1},
        {type = "item", name = "rayon", amount = 3},
        {type = "item", name = "gold-plate", amount = 1},
        {type = "fluid", name = "trichlorosilane", amount = 100},
    },
    results = {
        {type = "item", name = "self-assembly-monolayer", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")

RECIPE {
    type = "recipe",
    name = "ptcda",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "plastic-bar", amount = 1},
        {type = "item", name = "filtration-media", amount = 1},
        {type = "fluid", name = "organic-acid-anhydride", amount = 100},
        {type = "fluid", name = "perylene", amount = 100},
    },
    results = {
        {type = "item", name = "ptcda", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")

RECIPE {
    type = "recipe",
    name = "nbalti",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 1},
        {type = "item", name = "aluminium-plate", amount = 5},
        {type = "item", name = "titanium-plate", amount = 10},
    },
    results = {
        {type = "item", name = "nbalti", amount = 2},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")

RECIPE {
    type = "recipe",
    name = "crmoni",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "chromium", amount = 8},
        {type = "item", name = "molybdenum-plate", amount = 5},
        {type = "item", name = "nickel-plate", amount = 10},
    },
    results = {
        {type = "item", name = "crmoni", amount = 2},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk02")

--MK03

RECIPE {
    type = "recipe",
    name = "citric-acid-01",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yotoi-fruit", amount = 10},
        {type = "fluid", name = "sulfuric-acid", amount = 50},
        {type = "fluid", name = "slacked-lime", amount = 100},
    },
    results = {
        {type = "item", name = "citric-acid", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "citric-acid-02",
    category = "bio-reactor",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "sugar", amount = 5},
        {type = "item", name = "fawogae", amount = 10},
    },
    results = {
        {type = "item", name = "citric-acid", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "sodium-citrate",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "citric-acid", amount = 1},
        {type = "item", name = "sodium-hydroxide", amount = 3},
    },
    results = {
        {type = "item", name = "sodium-citrate", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "metallic-core",
    category = "nmf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sodium-citrate", amount = 5},
        {type = "item", name = "steel-chest", amount = 1},
        {type = "fluid", name = "ethanol", amount = 100},
        {type = "fluid", name = "chloroauric-acid", amount = 100},
    },
    results = {
        {type = "item", name = "metallic-core", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "silica-shell",
    category = "nmf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "teos", amount = 100},
        {type = "fluid", name = "ammonia", amount = 100},
    },
    results = {
        {type = "item", name = "silica-shell", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "plasmonic-core",
    category = "nano",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "metallic-core", amount = 1},
        {type = "item", name = "silica-shell", amount = 1},
        {type = "item", name = "gold-plate", amount = 1},
        {type = "item", name = "polycrystalline-slab", amount = 1},
        {type = "item", name = "aluminium-plate", amount = 3},
    },
    results = {
        {type = "item", name = "plasmonic-core", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "diethylaniline",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "aniline", amount = 50},
        {type = "fluid", name = "ethanol", amount = 50},
        {type = "item", name = "flask", amount = 1},
    },
    results = {
        {type = "item", name = "diethylaniline", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "3-diethylaminophenol",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "acidgas", amount = 100},
        {type = "item", name = "diethylaniline", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 50},
        {type = "item", name = "flask", amount = 1},
        {type = "item", name = "lab-instrument", amount = 1},
    },
    results = {
        {type = "item", name = "3-diethylaminophenol", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "phthalic-anhydride",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "perylene", amount = 100},
        {type = "item", name = "vanadium-oxide", amount = 2},
        {type = "fluid", name = "oxygen", amount = 100},
        {type = "item", name = "plastic-bar", amount = 3},
        {type = "item", name = "lab-instrument", amount = 1},
    },
    results = {
        {type = "item", name = "phthalic-anhydride", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "rhodamine-b",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "3-diethylaminophenol", amount = 1},
        {type = "item", name = "flask", amount = 2},
        {type = "item", name = "phthalic-anhydride", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "item", name = "rhodamine-b", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "fluorophore",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "rhodamine-b", amount = 1},
        {type = "item", name = "ceramic", amount = 5},
        {type = "item", name = "photophore", amount = 1},
    },
    results = {
        {type = "item", name = "fluorophore", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "lithium-niobate-nano",
    category = "nmf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "lithium-niobate", amount = 1},
        {type = "item", name = "diamond", amount = 3},
        {type = "fluid", name = "nitrogen", amount = 100},
    },
    results = {
        {type = "item", name = "lithium-niobate-nano", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "dieletric-layer",
    category = "nmf",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "lithium-niobate-nano", amount = 1},
        {type = "item", name = "lignin", amount = 5},
    },
    results = {
        {type = "item", name = "dieletric-layer", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "core-shell",
    category = "nano",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "dieletric-layer", amount = 1},
        {type = "item", name = "fluorophore", amount = 1},
        {type = "item", name = "plasmonic-core", amount = 1},
        {type = "item", name = "milfe", amount = 1},
    },
    results = {
        {type = "item", name = "core-shell", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "mositial-nx",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "molybdenum-plate", amount = 4},
        {type = "item", name = "silicon", amount = 5},
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "aluminium-plate", amount = 5},
        {type = "item", name = "nexelit-plate", amount = 2},
    },
    results = {
        {type = "item", name = "mositial-nx", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

RECIPE {
    type = "recipe",
    name = "ns-material",
    category = "nano",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "core-shell", amount = 1},
        {type = "item", name = "kevlar", amount = 2},
        {type = "item", name = "cf", amount = 10},
        {type = "item", name = "solidified-sarcorus", amount = 1},
        {type = "item", name = "mositial-nx", amount = 10},
        {type = "item", name = "stainless-steel", amount = 5},
        {type = "item", name = "aramid", amount = 2},
        {type = "item", name = "cobalt-oxide", amount = 1},
        {type = "item", name = "fiberglass", amount = 4},
    },
    results = {
        {type = "item", name = "ns-material", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk03")

--MK04

RECIPE {
    type = "recipe",
    name = "metastable-quasicrystal",
    category = "vat",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "time-crystal", amount = 1},
        {type = "item", name = "quasicrystal", amount = 1},
        {type = "item", name = "denatured-seismite", amount = 1},
        {type = "item", name = "photon-deposited-quartz", amount = 1},
        {type = "item", name = "mositial-nx", amount = 1},
        {type = "item", name = "gd-metal", amount = 1},
        {type = "item", name = "pbsb-alloy", amount = 5},
    },
    results = {
        {type = "item", name = "metastable-quasicrystal", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk04")

RECIPE {
    type = "recipe",
    name = "time-crystal",
    category = "fusion-01",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "diamond", amount = 5},
        {type = "item", name = "nv-center", amount = 1},
        {type = "item", name = "yag-laser-module", amount = 1},
    },
    results = {
        {type = "item", name = "time-crystal", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk04")

RECIPE {
    type = "recipe",
    name = "quasicrystal",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "helium", amount = 100},
        {type = "item", name = "nxzngd", amount = 1},
        {type = "item", name = "metallic-glass", amount = 2},
    },
    results = {
        {type = "item", name = "quasicrystal", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk04")


RECIPE {
    type = "recipe",
    name = "nxzngd",
    category = "casting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "molten-nxzngd", amount = 50},
        {type = "fluid", name = "helium", amount = 100},
        {type = "item", name = "copper-plate", amount = 2},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "nxzngd", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk04")

RECIPE {
    type = "recipe",
    name = "molten-nxzngd",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "molten-nexelit", amount = 50},
        {type = "fluid", name = "molten-zinc", amount = 50},
        {type = "fluid", name = "helium", amount = 100},
        {type = "item", name = "gd-oxide", amount = 2},
        {type = "item", name = "crucible", amount = 1},
        {type = "item", name = "graphite", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-nxzngd", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk04")

RECIPE {
    type = "recipe",
    name = "photon-deposited-quartz",
    category = "nano",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "perylene", amount = 100},
        {type = "item", name = "high-grade-quartz", amount = 2},
        {type = "item", name = "silver-plate", amount = 2},
    },
    results = {
        {type = "item", name = "photon-deposited-quartz", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("intermetallics-mk04")