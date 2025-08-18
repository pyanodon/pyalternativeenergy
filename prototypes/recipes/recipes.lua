RECIPE {
    type = "recipe",
    name = "lead-acetate",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "lead-plate",        amount = 3},
        {type = "fluid", name = "acetic-acid",       amount = 50},
        {type = "fluid", name = "hydrogen-peroxide", amount = 50},
    },
    results = {
        {type = "item", name = "lead-acetate", amount = 1},
    },
    --    main_product = "molybdenite-dust",
}:add_unlock("antimony-mk02")

RECIPE {
    type = "recipe",
    name = "dowfroth-250",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "methanol",        amount = 50},
        {type = "item",  name = "chromium",        amount = 2},
        {type = "fluid", name = "ethylene-glycol", amount = 100},
    },
    results = {
        {type = "fluid", name = "dowfroth-250", amount = 100},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk02")

RECIPE {
    type = "recipe",
    name = "sodium-cyanate",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "sodium-carbonate", amount = 2},
        {type = "fluid", name = "cyanic-acid",      amount = 100},
    },
    results = {
        {type = "item", name = "sodium-cyanate", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk04")

RECIPE {
    type = "recipe",
    name = "ammonium-oxalate",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "ammonia",     amount = 100},
        {type = "item",  name = "flask",       amount = 1},
        {type = "item",  name = "oxalic-acid", amount = 1},
    },
    results = {
        {type = "item", name = "ammonium-oxalate", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("ammonium-oxalate")

RECIPE {
    type = "recipe",
    name = "oxalic-acid",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",  amount = 100},
        {type = "item",  name = "vanadium-oxide", amount = 1},
        {type = "item",  name = "plastic-bar",    amount = 1},
    },
    results = {
        {type = "item", name = "oxalic-acid", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("ammonium-oxalate")

RECIPE {
    type = "recipe",
    name = "diamond-wire",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "stainless-steel", amount = 5},
        {type = "item",  name = "diamond",         amount = 5},
        {type = "item",  name = "copper-plate",    amount = 2},
        {type = "item",  name = "zinc-plate",      amount = 3},
        {type = "item",  name = "sic",             amount = 4},
        {type = "fluid", name = "vacuum",          amount = 50},
    },
    results = {
        {type = "item", name = "diamond-wire", amount = 3},
    },
    --main_product = "eg-si",
}:add_unlock("diamond-mining")

RECIPE {
    type = "recipe",
    name = "anti-reflex-glass",
    category = "glassworks",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "sb-oxide",     amount = 1},
        {type = "fluid", name = "molten-glass", amount = 50, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "anti-reflex-glass", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk01")

RECIPE {
    type = "recipe",
    name = "agal-alloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "silver-plate",    amount = 5},
        {type = "item", name = "aluminium-plate", amount = 5},
    },
    results = {
        {type = "item", name = "alag-alloy", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk01")

RECIPE {
    type = "recipe",
    name = "agal-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "molten-silver",    amount = 50},
        {type = "fluid", name = "molten-aluminium", amount = 50},
    },
    results = {
        {type = "item", name = "alag-alloy", amount = 10},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk03")

RECIPE {
    type = "recipe",
    name = "passivation-layer",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "alag-alloy", amount = 1},
    },
    results = {
        {type = "item", name = "passivation-layer", amount = 4},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk01")

RECIPE {
    type = "recipe",
    name = "polycrystalline-cell",
    category = "electronic",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "polycrystalline-plate", amount = 2},
        {type = "item",  name = "passivation-layer",     amount = 1},
        {type = "item",  name = "silver-plate",          amount = 1},
        {type = "item",  name = "nickel-plate",          amount = 1},
        {type = "item",  name = "copper-plate",          amount = 1},
        {type = "item",  name = "ore-quartz",            amount = 3},
        {type = "item",  name = "boron-trioxide",        amount = 2},
        {type = "fluid", name = "phosphine-gas",         amount = 30},
    },
    results = {
        {type = "item", name = "polycrystalline-cell", amount = 2},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk01")

RECIPE {
    type = "recipe",
    name = "monocrystalline-cell",
    category = "electronic",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "monocrystalline-plate", amount = 2},
        {type = "item",  name = "passivation-layer",     amount = 1},
        {type = "item",  name = "silver-plate",          amount = 1},
        {type = "item",  name = "nickel-plate",          amount = 1},
        {type = "item",  name = "copper-plate",          amount = 1},
        {type = "item",  name = "nexelit-plate",         amount = 3},
        {type = "item",  name = "boron",                 amount = 1},
        {type = "fluid", name = "phosphine-gas",         amount = 30},
        {type = "item",  name = "sic",                   amount = 3},
    },
    results = {
        {type = "item", name = "monocrystalline-cell", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk02")

RECIPE {
    type = "recipe",
    name = "battery-mk00",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "copper-plate", amount = 10},
        {type = "item",  name = "zinc-plate",   amount = 10},
        {type = "item",  name = "cellulose",    amount = 5},
        {type = "fluid", name = "water-saline", amount = 250},
    },
    results = {
        {type = "item", name = "battery-mk00", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("electronics")

RECIPE {
    type = "recipe",
    name = "flo",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "flask",        amount = 1},
        {type = "item",  name = "chromium",     amount = 2},
        {type = "item",  name = "copper-plate", amount = 4},
        {type = "fluid", name = "perylene",     amount = 100},
        {type = "fluid", name = "cumene",       amount = 100},
    },
    results = {
        {type = "item", name = "flo", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("battery-mk04")

RECIPE {
    type = "recipe",
    name = "chemistry",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "flo", amount = 1},
        {type = "fluid", name = "dcm", amount = 100},
    },
    results = {
        {type = "item", name = "lfo", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("battery-mk04")

RECIPE {
    type = "recipe",
    name = "dbr",
    category = "nmf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "silica-powder",       amount = 5},
        {type = "item",  name = "1d-photonic-crystal", amount = 6},
        {type = "fluid", name = "niobium-complex",     amount = 100},
        {type = "fluid", name = "vacuum",              amount = 200},
    },
    results = {
        {type = "item", name = "dbr", amount = 2},
    },
    --main_product = "eg-si",
}:add_unlock("battery-mk04")

RECIPE {
    type = "recipe",
    name = "1d-photonic-crystal",
    category = "nano",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item",  name = "photophore",       amount = 25},
        {type = "item",  name = "yag-laser-module", amount = 1},
        {type = "item",  name = "graphene-roll",    amount = 20},
        {type = "item",  name = "silver-plate",     amount = 25},
        {type = "fluid", name = "vacuum",           amount = 1000},
    },
    results = {
        {type = "item", name = "1d-photonic-crystal", amount = 5},
        {type = "item", name = "yag-laser-module",    amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, probability = 0.9},
    },
    main_product = "1d-photonic-crystal",
}:add_unlock("battery-mk04")

RECIPE {
    type = "recipe",
    name = "micro-cavity-core",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "super-alloy",     amount = 6},
        {type = "item",  name = "biopolymer",      amount = 4},
        {type = "item",  name = "lfo",             amount = 3},
        {type = "item",  name = "nexelit-matrix",  amount = 5},
        {type = "item",  name = "nxsb-alloy",      amount = 3},
        {type = "item",  name = "small-parts-03",  amount = 10},
        {type = "fluid", name = "deuterium",       amount = 30},
        {type = "item",  name = "sc-wire",         amount = 5},
        {type = "item",  name = "carbon-nanotube", amount = 3},
    },
    results = {
        {type = "item", name = "micro-cavity-core", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("battery-mk04")

RECIPE {
    type = "recipe",
    name = "nxsb-alloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "sb-oxide",      amount = 10},
        {type = "item", name = "nexelit-plate", amount = 10},
    },
    results = {
        {type = "item", name = "nxsb-alloy", amount = 3},
    },
    --main_product = "sb-dust",
}:add_unlock("alloys-mk02")

RECIPE {
    type = "recipe",
    name = "quantum-battery",
    category = "nano",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "super-alloy",          amount = 5},
        {type = "item", name = "biopolymer",           amount = 5},
        {type = "item", name = "cooling-system",       amount = 1},
        {type = "item", name = "supercapacitor",       amount = 1},
        {type = "item", name = "science-coating",      amount = 4},
        {type = "item", name = "diamagnetic-material", amount = 1},
        {type = "item", name = "nano-wires",           amount = 4},
        {type = "item", name = "dbr",                  amount = 10},
        {type = "item", name = "nano-mesh",            amount = 2},
        {type = "item", name = "micro-cavity-core",    amount = 1},
    },
    results = {
        {type = "item", name = "quantum-battery", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("battery-mk04")

RECIPE {
    type = "recipe",
    name = "organi-solvent-pyae",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "dcm", amount = 100},
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 100},
    },
    --main_product = "eg-si",
}:add_unlock("battery-mk04")


--SOLAR panel/cell MK03--

RECIPE {
    type = "recipe",
    name = "dsnc-cell",
    category = "electronic",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "transparent-anode",  amount = 4},
        {type = "item", name = "photosensitive-dye", amount = 5},
        {type = "item", name = "conductive-sheet",   amount = 1},
        {type = "item", name = "czts-plate",         amount = 5},
        {type = "item", name = "eva",                amount = 5},
        {type = "item", name = "graphene-roll",      amount = 1},
    },
    results = {
        {type = "item", name = "dsnc-cell", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk03")

RECIPE {
    type = "recipe",
    name = "transparent-anode",
    category = "sinter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "zno-nanoparticles", amount = 1},
        {type = "item", name = "tio2",              amount = 3},
        {type = "item", name = "acrylic",           amount = 5},
        {type = "item", name = "th-oxide",          amount = 1},
        {type = "item", name = "crude-top-layer",   amount = 2},
    },
    results = {
        {type = "item", name = "transparent-anode", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("zno-nanoparticles")

RECIPE {
    type = "recipe",
    name = "tio2",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "ticl4",       amount = 5},
        {type = "fluid", name = "oxygen",      amount = 150},
        {type = "item",  name = "plastic-bar", amount = 1},
    },
    results = {
        {type = "item",  name = "tio2",     amount = 2},
        {type = "fluid", name = "chlorine", amount = 50},
    },
    main_product = "tio2",
}:add_unlock("tbp")

RECIPE {
    type = "recipe",
    name = "crude-top-layer",
    category = "gas-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "tin-plate", amount = 3},
        {type = "item",  name = "sb-oxide",  amount = 2},
        {type = "item",  name = "glass",     amount = 5},
        {type = "fluid", name = "oxygen",    amount = 100},
    },
    results = {
        {type = "item", name = "crude-top-layer", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("zno-nanoparticles")

RECIPE {
    type = "recipe",
    name = "photosensitive-dye",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "triphenylanime", amount = 1},
        {type = "item",  name = "bt",             amount = 3},
        {type = "fluid", name = "mova-pulp3",     amount = 30},
        {type = "item",  name = "flask",          amount = 1},
        {type = "fluid", name = "bca",            amount = 100},
    },
    results = {
        {type = "item", name = "photosensitive-dye", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk03")

RECIPE {
    type = "recipe",
    name = "triphenylanime",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "nickel-plate", amount = 1},
        {type = "item",  name = "plastic-bar",  amount = 1},
        {type = "fluid", name = "aniline",      amount = 100},
    },
    results = {
        {type = "item", name = "triphenylanime", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk03")

RECIPE {
    type = "recipe",
    name = "bt",
    category = "hpf",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "barrel",         amount = 1},
        {type = "item", name = "cadaveric-arum", amount = 5},
        {type = "item", name = "chromium",       amount = 1},

    },
    results = {
        {type = "item", name = "bt", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk03")

RECIPE {
    type = "recipe",
    name = "cyanoacrylate",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "cyanoacetate", amount = 1},
        {type = "fluid", name = "methanal",     amount = 100},
        {type = "item",  name = "plastic-bar",  amount = 1},

    },
    results = {
        {type = "item", name = "cyanoacrylate", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("machine-components-mk03")

RECIPE {
    type = "recipe",
    name = "cyanoacetate",
    category = "chemistry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "cyanic-acid",   amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "ethanol",       amount = 100},
        {type = "item",  name = "plastic-bar",   amount = 1},

    },
    results = {
        {type = "item", name = "cyanoacetate", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("erbium")

RECIPE {
    type = "recipe",
    name = "conductive-sheet",
    category = "gas-separator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 10},
        {type = "item", name = "silver-plate",  amount = 2},
    },
    results = {
        {type = "item", name = "conductive-sheet", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk02")

RECIPE {
    type = "recipe",
    name = "czts-slab",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 8},
        {type = "item", name = "zinc-plate",   amount = 10},
        {type = "item", name = "sulfur",       amount = 3},
        {type = "item", name = "tin-plate",    amount = 5},
    },
    results = {
        {type = "item", name = "czts-slab", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

RECIPE {
    type = "recipe",
    name = "czts-plate",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "czts-slab",    amount = 8},
        {type = "fluid", name = "wax",          amount = 30},
        {type = "item",  name = "diamond-wire", amount = 1},
    },
    results = {
        {type = "item", name = "czts-plate", amount = 3},
    },
    --main_product = "eg-si",
}:add_unlock("sc-engine")

--SOLAR panel/cell MK04--

RECIPE {
    type = "recipe",
    name = "mqdc",
    category = "nano",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "alag-grid",            amount = 2},
        {type = "item",  name = "quantum-dots",         amount = 10},
        {type = "item",  name = "quantum-well",         amount = 3},
        {type = "item",  name = "eg-si",                amount = 5},
        {type = "item",  name = "supercapacitor-shell", amount = 1},
        {type = "item",  name = "processor-core",       amount = 1},
        {type = "item",  name = "heavy-n",              amount = 5},
        {type = "item",  name = "photonic-crystal",     amount = 1},
        {type = "item",  name = "clean-glass-sheet",    amount = 1},
        {type = "fluid", name = "helium",               amount = 50},
        {type = "item",  name = "ingap",                amount = 1},
        {type = "item",  name = "ingaas",               amount = 1},
        {type = "item",  name = "gaas",                 amount = 1},
        {type = "item",  name = "sb-oxide",             amount = 5},
    },
    results = {
        {type = "item", name = "mqdc", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk04")

RECIPE {
    type = "recipe",
    name = "gaas",
    category = "nmf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "arsenic", amount = 1},
        {type = "item",  name = "reo",     amount = 3},
        {type = "fluid", name = "vacuum",  amount = 200},
    },
    results = {
        {type = "item", name = "gaas", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("integrated-circuits-3")

RECIPE {
    type = "recipe",
    name = "arsenic",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "iron-ore",       amount = 10},
        {type = "item", name = "copper-ore",     amount = 10},
        {type = "item", name = "rich-clay",      amount = 20},
        {type = "item", name = "ore-lead",       amount = 10},
        {type = "item", name = "antimonium-ore", amount = 10},
    },
    results = {
        {type = "item", name = "arsenic",    amount = 1},
        {type = "item", name = "iron-oxide", amount = 5},
    },
    main_product = "arsenic",
}:add_unlock("integrated-circuits-3")

RECIPE {
    type = "recipe",
    name = "ingap",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "epoxy",            amount = 1},
        {type = "item",  name = "graphene-roll",    amount = 1},
        {type = "item",  name = "reo",              amount = 5},
        {type = "fluid", name = "phosphorous-acid", amount = 100},
    },
    results = {
        {type = "item", name = "ingap", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("quantum-processor")

RECIPE {
    type = "recipe",
    name = "ingaas",
    category = "nano",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "ingap",  amount = 1},
        {type = "item",  name = "gaas",   amount = 1},
        {type = "fluid", name = "helium", amount = 50},
    },
    results = {
        {type = "item", name = "ingaas", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("quantum-processor")

RECIPE {
    type = "recipe",
    name = "quantum-well",
    category = "nano",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "ingap",             amount = 2},
        {type = "item", name = "gaas",              amount = 1},
        {type = "item", name = "ti-n",              amount = 1},
        {type = "item", name = "zinc-nanocompound", amount = 1},
        {type = "item", name = "gold-plate",        amount = 1},
        {type = "item", name = "silicon-wafer",     amount = 5},
    },
    results = {
        {type = "item", name = "quantum-well", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("quantum-processor")

RECIPE {
    type = "recipe",
    name = "alag-grid",
    category = "nmf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "alag-alloy",     amount = 1},
        {type = "item",  name = "silver-nitrate", amount = 1},
        {type = "fluid", name = "vacuum",         amount = 200},
    },
    results = {
        {type = "item", name = "alag-grid", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("quantum-processor")

RECIPE {
    type = "recipe",
    name = "microwave-satellite",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item", name = "low-density-structure", amount = 100},
        {type = "item", name = "solar-panel-mk02",      amount = 4},
        {type = "item", name = "advanced-circuit",      amount = 30},
        {type = "item", name = "aramid",                amount = 50},
        {type = "item", name = "super-steel",           amount = 100},
        {type = "item", name = "control-unit",          amount = 5},
    },
    results = {
        {type = "item", name = "microwave-satellite", amount = 4},
    },
    --main_product = "eg-si",
}:add_unlock("microwave-receiver")

RECIPE {
    type = "recipe",
    name = "molten-salt",
    category = "bof",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "salt", amount = 300},
    },
    results = {
        {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
    },
    --main_product = "eg-si",
}:add_unlock("energy-1")

RECIPE {
    type = "recipe",
    name = "pbsb-alloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "lead-plate", amount = 6},
        {type = "item", name = "sb-oxide",   amount = 1},
    },
    results = {
        {type = "item", name = "pbsb-alloy", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("antimony-mk01")

RECIPE {
    type = "recipe",
    name = "pbsb-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "molten-lead", amount = 50},
        {type = "item",  name = "sb-oxide",    amount = 4},
    },
    results = {
        {type = "item", name = "pbsb-alloy", amount = 5},
    },
    --main_product = "eg-si",
}:add_unlock("alloys-mk02")

RECIPE {
    type = "recipe",
    name = "rotor",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "shaft-mk01", amount = 1},
        {type = "item", name = "duralumin",  amount = 5},
    },
    results = {
        {type = "item", name = "rotor", amount = 1}
    },
}:add_unlock("electric-engine")

RECIPE {
    type = "recipe",
    name = "stator",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "copper-cable",    amount = 100},
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "item", name = "plastic-bar",     amount = 3},
    },
    results = {
        {type = "item", name = "stator", amount = 1}
    },
}:add_unlock("electric-engine")

RECIPE {
    type = "recipe",
    name = "oleochemicals-to-fatty-acids",
    category = "olefin",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oleochemicals", amount = 100},
    },
    results = {
        {type = "fluid", name = "fatty-acids", amount = 50},
    },
}:add_unlock("eva")

RECIPE {
    type = "recipe",
    name = "replicator-mova",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "earth-generic-sample",  amount = 5},
        {type = "item", name = "earth-potato-sample",   amount = 1},
        {type = "item", name = "earth-flower-sample",   amount = 1},
        {type = "item", name = "titanium-plate",        amount = 100},
        {type = "item", name = "biofilm",               amount = 20},
        {type = "item", name = "plastic-bar",           amount = 100},
        {type = "item", name = "low-density-structure", amount = 1},
        {type = "item", name = "gh",                    amount = 10},
        {type = "item", name = "fertilizer",            amount = 20},
    },
    results = {
        {type = "item", name = "replicator-mova", amount = 1},
    },
}:add_unlock("mega-farm-mova")

RECIPE {
    type = "recipe",
    name = "quantum-battery-recharge",
    category = "pa",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "used-quantum-battery", amount = 1},
        {type = "item", name = "th-oxide",             amount = 1},
    },
    results = {
        {type = "item", name = "quantum-battery", amount = 1}
    }
}:add_unlock("railway-mk04")

RECIPE {
    type = "recipe",
    name = "yellow-dextrine",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "starch",        amount = 5},
        {type = "fluid", name = "hot-air",       amount = 150},
        {type = "item",  name = "nexelit-plate", amount = 10},
    },
    results = {
        {type = "item", name = "yellow-dextrine", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk04")

RECIPE {
    type = "recipe",
    name = "oxalic-acid-2",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood",   amount = 1000},
        {type = "item",  name = "acrylic", amount = 1},
    },
    results = {
        {type = "item", name = "oxalic-acid", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("biotech-mk04")

RECIPE {
    type = "recipe",
    name = "denatured-seismite-2",
    category = "biofactory",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "mutant-enzymes",    amount = 100},
        {type = "fluid", name = "formic-acid",       amount = 200},
        {type = "item",  name = "zymogens",          amount = 1},
        {type = "item",  name = "lithium",           amount = 10},
        {type = "item",  name = "lithium-hydroxide", amount = 4},
        {type = "item",  name = "adrenal-cortex",    amount = 1},
        {type = "item",  name = "dhilmos-egg",       amount = 5},
        {type = "item",  name = "cottongut",         amount = 50},
        {type = "item",  name = "cdna",              amount = 5},
        {type = "item",  name = "bio-sample01",      amount = 10},
        {type = "item",  name = "hyaline",           amount = 2},
        {type = "item",  name = "nanofibrils",       amount = 1},
        {type = "item",  name = "xeno-egg",          amount = 5},
    },
    results = {
        {type = "item", name = "denatured-seismite", amount = 3},
    },
    --main_product = "sb-dust",
}:add_unlock("cottongut-science-mk05")


----STIRLING----

RECIPE {
    type = "recipe",
    name = "stirling-engine",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "py-heat-exchanger", amount = 1},
        {type = "item", name = "heatsink",          amount = 1},
        {type = "item", name = "displacer",         amount = 1},
        {type = "item", name = "small-parts-02",    amount = 40},
    },
    results = {
        {type = "item", name = "stirling-engine", amount = 1},
    },

}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "heatsink",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "aluminium-plate", amount = 10},
    },
    results = {
        {type = "item", name = "heatsink", amount = 1},
    },

}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "displacer",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "shaft-mk01",     amount = 1},
        {type = "item", name = "titanium-plate", amount = 3},
        {type = "item", name = "small-parts-01", amount = 10},
        {type = "item", name = "pipe",           amount = 2},
    },
    results = {
        {type = "item", name = "displacer", amount = 1},
    },

}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "regenerator",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "iron-plate",           amount = 30},
        {type = "item", name = "steel-plate",          amount = 20},
        {type = "item", name = "small-parts-01",       amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 1},
        {type = "item", name = "nbti-alloy",           amount = 5},
        {type = "item", name = "eva",                  amount = 5},
    },
    results = {
        {type = "item", name = "regenerator", amount = 1},
    },

}:add_unlock("thermal-mk02")

---bio-ore---

RECIPE {
    type = "recipe",
    name = "enriched-ash",
    category = "hpf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "al-biomass",    amount = 20},
        {type = "item",  name = "zn-biomass",    amount = 10},
        {type = "item",  name = "nb-biomass",    amount = 10},
        {type = "fluid", name = "pressured-air", amount = 100},
    },
    results = {
        {type = "item",  name = "enriched-ash",   amount = 10},
        {type = "fluid", name = "carbon-dioxide", amount = 50},
    },
    main_product = "enriched-ash",
}:add_unlock("py-science-pack-mk03")

RECIPE {
    type = "recipe",
    name = "washed-ash",
    category = "washer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "enriched-ash", amount = 10},
        {type = "fluid", name = "water",        amount = 100},
    },
    results = {
        {type = "item",  name = "washed-ash",        amount = 5},
        {type = "fluid", name = "muddy-sludge", amount = 50},
    },
    main_product = "washed-ash",
}:add_unlock("py-science-pack-mk03")

RECIPE {
    type = "recipe",
    name = "processed-ash",
    category = "leaching",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "washed-ash",    amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "item", name = "processed-ash", amount = 5},
    },
    --main_product = "washed-ash",
}:add_unlock("py-science-pack-mk03")

RECIPE {
    type = "recipe",
    name = "advanced-substrate",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "processed-ash", amount = 5},
        {type = "fluid", name = "bio-oil",       amount = 100},
        {type = "fluid", name = "slacked-lime",  amount = 100},
        {type = "item",  name = "tbp",           amount = 1},
    },
    results = {
        {type = "item", name = "advanced-substrate", amount = 1},
    },
    --main_product = "washed-ash",
}:add_unlock("py-science-pack-mk03")

RECIPE {
    type = "recipe",
    name = "bio-ore",
    category = "mixer",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "advanced-substrate", amount = 1},
        {type = "fluid", name = "cresylic-acid",      amount = 100},
        {type = "fluid", name = "z3-reagent",         amount = 100},
        {type = "fluid", name = "vinyl-acetate",      amount = 50},
    },
    results = {
        {type = "item",  name = "bio-ore",           amount = 1},
        {type = "fluid", name = "muddy-sludge", amount = 50},
    },
    main_product = "bio-ore",
}:add_unlock("py-science-pack-mk03")

RECIPE {
    type = "recipe",
    name = "mechanical-parts-01",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "item", name = "shaft-mk01",       amount = 1},
        {type = "item", name = "rubber",           amount = 3},
        {type = "item", name = "utility-box-mk01", amount = 1},
        {type = "item", name = "small-parts-01",   amount = 25},
        {type = "item", name = "gearbox-mk01",     amount = 1},
        {type = "item", name = "controler-mk01",   amount = 1},
        {type = "item", name = "steel-plate",      amount = 15},
        {type = "item", name = "brake-mk01",       amount = 1},
    },
    results = {
        {type = "item", name = "mechanical-parts-01", amount = 3},
    },
}:add_unlock("machine-components-mk01")

RECIPE {
    type = "recipe",
    name = "mechanical-parts-02",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 24,
    ingredients = {
        {type = "item",  name = "mechanical-parts-01", amount = 6},
        {type = "item",  name = "shaft-mk02",          amount = 1},
        {type = "item",  name = "kevlar",              amount = 3},
        {type = "item",  name = "utility-box-mk02",    amount = 1},
        {type = "item",  name = "small-parts-02",      amount = 25},
        {type = "item",  name = "gearbox-mk02",        amount = 1},
        {type = "item",  name = "controler-mk02",      amount = 1},
        {type = "item",  name = "steel-plate",         amount = 20},
        {type = "item",  name = "nxsb-alloy",          amount = 3},
        {type = "item",  name = "brake-mk02",          amount = 1},
        {type = "item",  name = "electronics-mk02",    amount = 1},
        {type = "item",  name = "rayon",               amount = 5},
        {type = "fluid", name = "heavy-oil",           amount = 200},
    },
    results = {
        {type = "item", name = "mechanical-parts-02", amount = 6},
    },
}:add_unlock("machine-components-mk02")

RECIPE {
    type = "recipe",
    name = "mechanical-parts-03",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "mechanical-parts-02",   amount = 8},
        {type = "item",  name = "shaft-mk03",            amount = 1},
        {type = "item",  name = "acrylic",               amount = 2},
        {type = "item",  name = "utility-box-mk03",      amount = 1},
        {type = "item",  name = "small-parts-03",        amount = 25},
        {type = "item",  name = "gearbox-mk03",          amount = 1},
        {type = "item",  name = "electronics-mk03",      amount = 1},
        {type = "item",  name = "steel-plate",           amount = 30},
        {type = "item",  name = "hydraulic-system-mk01", amount = 1},
        {type = "item",  name = "brake-mk03",            amount = 1},
        {type = "item",  name = "crco-alloy",            amount = 2},
        {type = "fluid", name = "lubricant",             amount = 100},
    },
    results = {
        {type = "item", name = "mechanical-parts-03", amount = 8},
    },
}:add_unlock("machine-components-mk03")

RECIPE {
    type = "recipe",
    name = "mechanical-parts-04",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "item",  name = "mechanical-parts-03",   amount = 3},
        {type = "item",  name = "shaft-mk04",            amount = 1},
        {type = "item",  name = "biopolymer",            amount = 2},
        {type = "item",  name = "utility-box-mk04",      amount = 1},
        {type = "item",  name = "nano-mesh",             amount = 5},
        {type = "item",  name = "gearbox-mk04",          amount = 1},
        {type = "item",  name = "electronics-mk04",      amount = 1},
        {type = "item",  name = "steel-plate",           amount = 30},
        {type = "item",  name = "hydraulic-system-mk02", amount = 1},
        {type = "item",  name = "brake-mk04",            amount = 1},
        {type = "item",  name = "nxzngd",                amount = 2},
        {type = "fluid", name = "grease",                amount = 100},
    },
    results = {
        {type = "item", name = "mechanical-parts-04", amount = 3},
    },
}:add_unlock("machine-components-mk04")

--[[
RECIPE {
    type = "recipe",
    name = "steam-into-pressured-steam",
    category = "vacuum",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "steam", amount = 200, minimum_temperature = 200, maximum_temperature = 500 },
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 200, temperature = 500 },
    },
}:add_unlock("thermal-mk01")
]] --

RECIPE {
    type = "recipe",
    name = "pressured-steam-into-steam-150",
    category = "vacuum",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 1000},
    },
    results = {
        {type = "fluid", name = "steam", amount = 400, temperature = 150},
    },
    subgroup = "py-alternativeenergy-fluids",
    order = "s"
}:add_unlock("thermal-mk01")

RECIPE {
    type = "recipe",
    name = "pressured-steam-into-steam-250",
    category = "vacuum",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 1000},
    },
    results = {
        {type = "fluid", name = "steam", amount = 250, temperature = 250},
    },
    subgroup = "py-alternativeenergy-fluids",
    order = "s"
}:add_unlock("thermal-mk02")

RECIPE {
    type = "recipe",
    name = "pressured-steam-into-steam-500",
    category = "vacuum",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 1000},
    },
    results = {
        {type = "fluid", name = "steam", amount = 200, temperature = 500},
    },
    subgroup = "py-alternativeenergy-fluids",
    order = "s"
}:add_unlock("thermal-mk02")

-- This buffs a recipe by the same name in py high tech.
RECIPE {
    type = "recipe",
    name = "petroleum-gas2",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "organic-solvent",    amount = 100},
        {type = "fluid", name = "bacteria-2",         amount = 50},
        {type = "fluid", name = "pressured-hydrogen", amount = 50},
        {type = "item",  name = "meat",               amount = 10},
    },
    results = {
        {type = "fluid", name = "petroleum-gas", amount = 200},
        {type = "fluid", name = "bacteria-2",    amount_min = 40, amount_max = 70, ignored_by_productivity = 50, ignored_by_stats = 50},
    },
    subgroup = "py-hightech-fluids",
    main_product = "petroleum-gas",
    order = "b1",
    icons = {
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/reprocessing.png"
        },
        {
            icon = "__pyhightechgraphics__/graphics/icons/bacteria-2.png",
            icon_size = 32,
            scale = 0.7
        },
    }
}

-- STEAM CONVERSION
-- transfer high temperature steam into low temperature steam based on the energy density, minus some percent due to the laws of thermodynamics or something
for fluid, metatable in pairs{
  steam = {base = "water", temps = {150, 250, 500, 1000, 2000}, unlocks = {""}},
  ["pressured-steam"] = {base = "pressured-water", temps = {1000, 2000, 3000, 4000, 5000}}
} do
  local fluid = data.raw.fluid[fluid]
  local base_temp = data.raw.fluid[metatable.base].default_temperature or 15
  local steam_amount = 200
  for i = 1, #metatable.temps - 1 do
    local start_temp = metatable.temps[i+1]
    local end_temp = metatable.temps[i]
    local base_amount = steam_amount * (start_temp - end_temp) / (end_temp - base_temp)
    RECIPE{
      name = "cool-" .. fluid.name .. "-" .. start_temp .. "-to-" .. end_temp,
      localised_name = {"recipe-name.steam-cooling-in-rhe", fluid.localised_name or {"fluid-name." .. fluid.name}, tostring(start_temp), tostring(end_temp)},
      category = "heat-exchanger",
      enabled = false,
      energy_required = 20, -- some formula here
      ingredients = {
        {type = "fluid", name = fluid.name, amount = steam_amount, temperature = start_temp},
        {type = "fluid", name = metatable.base, amount = math.ceil(base_amount / 10) * 10}
      },
      results = {{type = "fluid", name = fluid.name, amount = steam_amount + math.floor(base_amount / 10) * 10, temperature = end_temp}},
      show_amount_in_title = false,
      order = "c" .. i,
      icons = {
        {
          icon = fluid.icon,
          icon_size = fluid.icon_size
        },
        {
          icon = "__base__/graphics/icons/signal/signal-thermometer-blue.png",
          scale = 0.3,
          shift = {-7, 7}
        }
      }
    }:add_unlock("nonrenewable-mk0" .. i)
  end
end

-- TODO subgroup, techs, locales