--purex concentrate 1 & antimony phosphate 2

RECIPE {
    type = "recipe",
    name = "purex-antimony-void",
    category = "scrubber",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sb-phosphate-2",      amount = 60},
        {type = "fluid", name = "purex-concentrate-1", amount = 30},
        {type = "item",  name = "plastic-bar",         amount = 3},
    },
    results = {
        {type = "fluid", name = "phosphorous-acid", amount = 120},
        {type = "item",  name = "sb-oxide",         amount = 1,     probability = 0.50},
        {type = "item",  name = "plastic-bar",      amount_min = 1, amount_max = 3,    ignored_by_stats = 3, ignored_by_productivity = 3},
    },
    allow_productivity = true,
    main_product = "phosphorous-acid",
}:add_unlock("uranium-processing")

--purest nitrogen

RECIPE {
    type = "recipe",
    name = "purest-nitrogen-void",
    category = "vacuum",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "purest-nitrogen-gas", amount = 240}
    },
    results = {
        {type = "fluid", name = "pressured-air", amount = 240}
    },
    main_product = "pressured-air"
}:add_unlock("nitrogen-mk01")
data.raw.recipe["purest-nitrogen-gas"].localised_name = {"recipe-name.fractional-distillation"}
data.raw.recipe["purest-nitrogen-gas"].localised_description = {"recipe-description.fractional-distillation"}

--oxygen

RECIPE {
    type = "recipe",
    name = "water-from-oxygen-and-hydrogen",
    category = "quenching-tower",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 100},
        {type = "fluid", name = "hydrogen", amount = 200},
    },
    results = {
        {type = "fluid", name = "water", amount = 300},
    },
    allow_productivity = true,
    main_product = "water"
}:add_unlock("electrolysis")

--chlorine

RECIPE {
    type = "recipe",
    name = "chloride-void-iron-oxide",
    category = "hpf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "chlorine",   amount = 60},
        {type = "item",  name = "iron-plate", amount = 1},
    },
    results = {
        {type = "item", name = "iron-oxide", amount = 1},
    },
    allow_productivity = true,
    main_product = "iron-oxide"
}:add_unlock("electrolysis")

RECIPE {
    type = "recipe",
    name = "chloride-void-muddy-sludge",
    category = "hydrocyclone",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water",    amount = 100},
        {type = "fluid", name = "chlorine", amount = 50},
        {type = "item",  name = "gravel",   amount = 1},
    },
    results = {
        {type = "fluid", name = "tailings", amount = 50},
    },
    allow_productivity = true,
    main_product = "tailings"
}:add_unlock("advanced-mining-facilities")

--limestone

RECIPE {
    type = "recipe",
    name = "limestone-void",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "soil",      amount = 2},
        {type = "item", name = "limestone", amount = 3},
    },
    results = {
        {type = "item", name = "soil",      amount = 3, ignored_by_productivity = 2, ignored_by_stats = 2},
        {type = "item", name = "limestone", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2},
    },
    allow_productivity = false,
    main_product = "soil"
}:add_unlock("crusher-2")

--sulfur

RECIPE {
    type = "recipe",
    name = "sulfur-void-tar",
    category = "washer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "sulfur",  amount = 1},
        {type = "item",  name = "kerogen", amount = 1},
        {type = "fluid", name = "water",   amount = 50},
    },
    results = {
        {type = "fluid", name = "tar", amount = 50},
    },
    allow_productivity = true,
    main_product = "tar"
}:add_unlock("fluid-processing-machines-1")

RECIPE {
    type = "recipe",
    name = "sulfur-void-water",
    category = "desulfurization",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item",  name = "sulfur", amount = 1},
        {type = "fluid", name = "water",  amount = 50},
    },
    results = {
        {type = "fluid", name = "water", amount = 10, ignored_by_productivity = 10, ignored_by_stats = 10},
    },
    allow_productivity = true, -- extremely useful
    main_product = "water"
}:add_unlock("desulfurization")

--muddy sludge

RECIPE("organics-from-dirty-water"):remove_unlock("fluid-separation"):add_unlock("biomassplant-mk04")

RECIPE {
    type = "recipe",
    name = "muddy-sludge-void-electrolyzer",
    category = "electrolyzer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "muddy-sludge", amount = 100},
    },
    results = {
        {type = "fluid", name = "water",  amount = 100},
        {type = "fluid", name = "oxygen", amount = 10},
        {type = "item",  name = "soil",   amount = 5},
    },
    allow_productivity = true,
    main_product = "water"
}:add_unlock("electrolysis")

RECIPE {
    type = "recipe",
    name = "filtration-dirty-water",
    category = "carbonfilter",
    enabled = false,
    energy_required = 5.5,
    ingredients = {
        {type = "item",  name = "filtration-media",  amount = 1},
        {type = "fluid", name = "muddy-sludge", amount = 500}
    },
    results = {
        {type = "fluid", name = "water", amount = 500},
        {type = "item",  name = "ash",   amount_min = 2, amount_max = 5}
    },
    main_product = "water",
    icon = "__pycoalprocessinggraphics__/graphics/icons/filtration-dirty-water.png",
    icon_size = 32,
    subgroup = "py-fluid-handling",
    order = "g"
}:add_unlock("microfibers")

--coal gas

RECIPE {
    type = "recipe",
    name = "coal-gas-void",
    category = "hpf",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "coal-gas", amount = 50},
    },
    results = {
        {type = "item", name = "ash", amount = 1},
    },
    allow_productivity = true,
    icons = py.composite_icon("ash", "coal-gas")
}:add_unlock("coal-processing-1")

--slacked lime

RECIPE {
    type = "recipe",
    name = "slacked-lime-void",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "slacked-lime", amount = 60},
    },
    results = {
        {type = "item", name = "lime",   amount = 1},
        {type = "item", name = "gravel", amount = 1},
    },
    allow_productivity = true,
    main_product = "lime"
}:add_unlock("fluid-processing-machines-1")

-- plant/animal

--skin

RECIPE {
    type = "recipe",
    name = "skin-to-lead",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "skin", amount = 7},
    },
    results = {
        {type = "item", name = "ore-lead", amount = 5},
    },
    allow_productivity = true,
    icons = py.composite_icon("ore-lead", "skin")
}:add_unlock("molecular-decohesion")

RECIPE {
    type = "recipe",
    name = "skin-fatty-acids",
    category = "olefin",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "skin",                  amount = 50},
        {type = "fluid", name = "middle-processed-lard", amount = 20},
    },
    results = {
        {type = "fluid", name = "fatty-acids", amount = 50},
    },
    allow_productivity = true,
    main_product = "fatty-acids",
}:add_unlock("eva")

--bonemeal

RECIPE {
    type = "recipe",
    name = "bonemeal-to-bones-and-meat",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "bonemeal", amount = 5},
        {type = "fluid", name = "steam",    amount = 100}
    },
    results = {
        {type = "item", name = "bones", amount = 5},
        {type = "item", name = "meat",  amount = 5},
    },
    allow_productivity = true,
    main_product = "bones",
}:add_unlock("mukmoux-mk02")

--bones

RECIPE {
    type = "recipe",
    name = "bones-to-kerogen",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "bones", amount = 5},
    },
    results = {
        {type = "item", name = "kerogen", amount = 8},
    },
    allow_productivity = true,
    icons = py.composite_icon("kerogen", "bones")
}:add_unlock("molecular-decohesion")

--guts

RECIPE {
    type = "recipe",
    name = "guts-to-acetic-acid",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guts", amount = 20},
    },
    results = {
        {type = "fluid", name = "acetic-acid", amount = 60},
    },
    allow_productivity = true,
    icons = py.composite_icon("acetic-acid", "guts")
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = "recipe",
    name = "jerky-to-phytoplankton",
    category = "plankton",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water",      amount = 500},
        {type = "item",  name = "dried-meat", amount = 3},
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 10},
    },
    allow_productivity = true,
    main_product = "phytoplankton",
}:add_unlock("microbiology-mk01")

--wastewater

RECIPE {
    type = "recipe",
    name = "waste-water-void",
    category = "quenching-tower",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 50},
        {type = "fluid", name = "chlorine",    amount = 10},
    },
    results = {
        {type = "fluid", name = "water", amount = 50},
    },
    allow_productivity = true,
    main_product = "water",
}:add_unlock("fish-mk01")

--used comb

RECIPE {
    type = "recipe",
    name = "used-comb-to-residual-mixture",
    category = "eaf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "used-comb", amount = 3},
        {type = "item", name = "graphite",  amount = 1},
    },
    results = {
        {type = "fluid", name = "residual-mixture", amount = 60},
    },
    allow_productivity = true,
    main_product = "residual-mixture",
}:add_unlock("arqad")

--arthropod blood

RECIPE {
    type = "recipe",
    name = "arthropod-blood-to-blood",
    category = "bio-reactor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "arthropod-blood", amount = 30},
        {type = "item",  name = "grade-1-iron",    amount = 1},
    },
    results = {
        {type = "fluid", name = "blood",          amount = 30},
        {type = "item",  name = "grade-1-copper", amount = 1},
    },
    allow_productivity = false, -- no :(
    main_product = "blood"
}:add_unlock("water-invertebrates-mk01")

--chitin

RECIPE {
    type = "recipe",
    name = "chitin-void",
    category = "tar",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item",  name = "chitin",     amount = 3},
        {type = "fluid", name = "middle-oil", amount = 100},
        {type = "fluid", name = "steam",      amount = 50, minimum_temperature = 250},
    },
    results = {
        {type = "fluid", name = "carbolic-oil",    amount = 100},
        {type = "fluid", name = "naphthalene-oil", amount = 50},
    },
    allow_productivity = true,
    main_product = "carbolic-oil",
    crafting_machine_tint = {primary = FLUID["carbolic-oil"].base_color, secondary = defines.color.deeppink}
}:add_unlock("rendering")

--sodium hydroxide

RECIPE {
    type = "recipe",
    name = "sodium-hydroxide-void",
    category = "washer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water",            amount = 100},
        {type = "item",  name = "sodium-hydroxide", amount = 10},
    },
    results = {
        {type = "fluid", name = "water-saline", amount = 100},
    },
    allow_productivity = true,
    main_product = "water-saline",
}:add_unlock("electrolysis")

-- ore

--vanadium pulp stage 3

RECIPE {
    type = "recipe",
    name = "vanadium-pulp-3-void",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "vpulp3",      amount = 100},
        {type = "fluid", name = "coalbed-gas", amount = 50},
    },
    results = {
        {type = "fluid", name = "vpulp1",   amount = 50},
        {type = "fluid", name = "flue-gas", amount = 50},
    },
    allow_productivity = true,
    main_product = "vpulp1",
}:add_unlock("vanadium-processing")

--titanium overflow waste

RECIPE {
    type = "recipe",
    name = "titanium-overflow-waste-void",
    category = "evaporator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "ti-overflow-waste", amount = 25},
    },
    results = {
        {type = "item", name = "ti-rejects", amount = 1},
    },
    allow_productivity = true,
    main_product = "ti-rejects",
}:add_unlock("titanium-mk02")

--titanium pulp (stage 3)

RECIPE {
    type = "recipe",
    name = "titanium-pulp-stage-3-void",
    category = "pan",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "ti-pulp-03", amount = 60},
    },
    results = {
        {type = "fluid", name = "ti-overflow-waste", amount = 30},
        {type = "fluid", name = "mibc",              amount = 30, autotech_is_not_primary_source = true},
    },
    allow_productivity = true,
    main_product = "mibc",
}:add_unlock("titanium-mk02")

--sand

RECIPE {
    type = "recipe",
    name = "sand-void-glass",
    category = "glassworks",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sand",       amount = 5},
        {type = "item", name = "ore-quartz", amount = 4},
    },
    results = {
        {type = "fluid", name = "molten-glass", amount = 10},
    },
    allow_productivity = true,
    main_product = "molten-glass",
}:add_unlock("basic-substrate")

-- oil

--tar

RECIPE {
    type = "recipe",
    name = "tar-to-carbolic",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "tar",      amount = 100},
        {type = "fluid", name = "steam",    amount = 100, minimum_temperature = 250},
        {type = "item",  name = "raw-coal", amount = 1},
    },
    results = {
        {type = "item",  name = "rich-clay",    amount = 1, probability = 0.3},
        {type = "item",  name = "ash",          amount = 1},
        {type = "fluid", name = "coal-gas",     amount = 35},
        {type = "fluid", name = "carbolic-oil", amount = 10},
    },
    allow_productivity = true,
    main_product = "carbolic-oil"
}:add_unlock("coal-processing-1")

--medium disilates

RECIPE {
    type = "recipe",
    name = "medium-distillate-to-high-distillate",
    category = "cracker",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "medium-distillate", amount = 100},
        {type = "fluid", name = "steam",             amount = 300},
        {type = "item",  name = "sncr-alloy",        amount = 1},
    },
    results = {
        {type = "fluid", name = "high-distillate", amount = 100},
    },
    allow_productivity = true,
}:add_unlock("light-oil-mk01")

--anthracene oil

RECIPE {
    type = "recipe",
    name = "anthracene-oil-creosote",
    category = "tar",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "anthracene-oil", amount = 50},
    },
    results = {
        {type = "fluid", name = "creosote", amount = 20},
    },
    allow_productivity = true,
    main_product = "creosote",
    crafting_machine_tint = RECIPE["creosote"].crafting_machine_tint
}:add_unlock("creosote")

--refined natural gas

RECIPE {
    type = "recipe",
    name = "formaldehyde-from-refined-natural-gas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "refined-natural-gas", amount = 100},
        {type = "fluid", name = "pressured-air",       amount = 100},
        {type = "fluid", name = "hot-molten-salt",     amount = 30},
    },
    results = {
        {type = "fluid", name = "methanal",       amount = 50},
        {type = "fluid", name = "carbon-dioxide", amount = 100},
        {type = "fluid", name = "molten-salt",    amount = 30, ignored_by_stats = 30, ignored_by_productivity = 30},
    },
    allow_productivity = true,
    main_product = "methanal"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "refined-natural-gas-to-condensates",
    category = "compressor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "refined-natural-gas", amount = 150},
        {type = "fluid", name = "water",               amount = 200},
        {type = "fluid", name = "gasoline",            amount = 5},
    },
    results = {
        {type = "fluid", name = "condensates", amount = 100},
        {type = "fluid", name = "steam",       amount = 200, temperature = 150, ignored_by_productivity = 200, ignored_by_stats = 200},
        {type = "fluid", name = "naphtha",     amount = 50},
    },
    allow_productivity = true,
    main_product = "condensates",
}:add_unlock("petroleum-gas-mk01")

-- other

--methanol

RECIPE {
    type = "recipe",
    name = "methanol-void-denitrification",
    category = "methanol",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "methanol",    amount = 100},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 100},
        {type = "fluid", name = "water",    amount = 100},
    },
    allow_productivity = true,
    main_product = "water"
}:add_unlock("methanol-processing-1")

-- msa acid

RECIPE {
    type = "recipe",
    name = "msa-void-boric-acid",
    category = "mixer",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "boric-acid", amount = 100},
        {type = "fluid", name = "msa",        amount = 100},
    },
    results = {
        {type = "fluid", name = "water", amount = 200},
    },
    allow_productivity = true,
    main_product = "water"
}

--coke oven gas

RECIPE {
    type = "recipe",
    name = "cog-void-soot",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "coke-oven-gas", amount = 30, fluidbox_index = 1},
        {type = "fluid", name = "water",         amount = 10, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "soot", amount = 1},
    },
    allow_productivity = true,
    main_product = "soot"
}:add_unlock("hot-air-mk02")

--fluorine gas

RECIPE {
    type = "recipe",
    name = "fluorine-to-olefins",
    category = "olefin",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "nickel-plate", amount = 1},
        {type = "fluid", name = "fluorine-gas", amount = 100},
        {type = "fluid", name = "crude-oil",    amount = 50},
    },
    results = {
        {type = "fluid", name = "olefin",  amount = 100},
        {type = "fluid", name = "naphtha", amount = 50},
    },
    allow_productivity = true,
    main_product = "olefin"
}:add_unlock("phosphorous-processing")

--ammonia

RECIPE("cyanic-acid-01"):remove_unlock("advanced-circuit"):add_unlock("melamine")

--hydrogen chloride

RECIPE {
    type = "recipe",
    name = "hydrogen-chloride-void",
    category = "chemistry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
        {type = "item",  name = "small-lamp",        amount = 1},
    },
    results = {
        {type = "fluid", name = "chlorine",   amount = 100},
        {type = "fluid", name = "hydrogen",   amount = 100},
        {type = "item",  name = "small-lamp", amount = 1,  probability = 0.5, ignored_by_productivity = 1, ignored_by_stats = 1},
    },
    allow_productivity = true,
    main_product = "chlorine"
}:add_unlock("filtration")

--acetone

RECIPE {
    type = "recipe",
    name = "acetone-void-degrease",
    category = "grease",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "grease",  amount = 25},
        {type = "fluid", name = "water",   amount = 100},
        {type = "fluid", name = "acetone", amount = 50},
        {type = "item",  name = "sand",    amount = 1},
    },
    results = {
        {type = "fluid", name = "tailings", amount = 200},
        {type = "item",  name = "oil-sand",          amount = 3},
    },
    main_product = "oil-sand",
    allow_productivity = true,
}:add_unlock("paramagnetic-material")

-- sand

RECIPE {
    type = "recipe",
    name = "wastewater-recovery",
    category = "thickener",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 100},
        {type = "item",  name = "pure-sand",   amount = 10}
    },
    results = {
        {type = "fluid", name = "muddy-sludge", amount = 150}
    },
    main_product = "muddy-sludge",
    allow_productivity = true,
}:add_unlock("vanadium-processing")

-- oleochemicals

RECIPE {
    type = "recipe",
    name = "oleochemicals-bioplastic",
    category = "methanol",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "oleochemicals", amount = 350},
        {type = "fluid", name = "methanol",      amount = 50},
    },
    results = {
        {type = "item", name = "plastic-bar", amount = 10},
    },
    allowed_productivity = false,
}:add_unlock("plastics-mk02")

RECIPE {
    type = "recipe",
    name = "rubber-from-oleochemicals",
    category = "hor",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "oleochemicals", amount = 350},
        {type = "fluid", name = "polybutadiene", amount = 20},
        {type = "item",  name = "carbon-black",  amount = 10},
        {type = "item",  name = "latex",         amount = 1},
        {type = "item",  name = "sulfur",        amount = 2},
    },
    results = {
        {type = "item", name = "rubber", amount = 4},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a",
    allow_productivity = false,
}:add_unlock("rubber-2")

-- barrels

RECIPE {
    type = "recipe",
    name = "steel-from-barrels",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "barrel", amount = 1},
    },
    results = {
        {type = "item", name = "steel-plate", amount = 1, probability = 0.65},
    },
    subgroup = "barrel",
    order = "aa",
    allow_productivity = false,
}:add_unlock("fluid-handling")

-- salt solution

RECIPE {
    type = "recipe",
    name = "sodium-carbonate-from-solution",
    category = "chemistry",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "limestone",      amount = 5},
        {type = "fluid", name = "ammonia",       amount = 100},
        {type = "fluid", name = "salt-solution", amount = 100},
    },
    results = {
        {type = "item", name = "sodium-carbonate", amount = 2},
        {type = "fluid", name = "ammonia",         amount = 95},
    },
    main_product = "sodium-carbonate",
    subgroup = "py-rawores-items",
    order = "a",
    allow_productivity = false,
}:add_unlock("nuclear-power")
