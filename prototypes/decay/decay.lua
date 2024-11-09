if not feature_flags.spoiling then return end
if not settings.startup["py-enable-decay"].value then
    return
end

RECIPE {
    name = "floraspollinin-reprocessing",
    type = "recipe",
    category = "nursery",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item",  name = "floraspollinin", amount = 10},
        {type = "fluid", name = "steam",          amount = 30},
    },
    results = {
        {type = "item", name = "native-flora", amount_min = 5, amount_max = 10},
        {type = "item", name = "biomass",      amount = 1},
    },
    main_product = "native-flora",
    icons = {
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/reprocessing.png"
        },
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/mip/floraspollinin-1.png",
            scale = 0.4
        },
    },
    localised_name = {"recipe-name.floraspollinin-reprocessing"},
    localised_description = {"recipe-description.floraspollinin-reprocessing"},
}:add_unlock("botany-mk01")

ITEM {
    type = "item",
    name = "floraspollinin",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mip/floraspollinin-1.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-items",
    order = data.raw.item["native-flora"].order .. "j",
    stack_size = data.raw.item["native-flora"].stack_size,
    pictures = {
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/floraspollinin-1.png", scale = 1.2},
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/floraspollinin-2.png", scale = 1.2},
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/floraspollinin-3.png", scale = 1.2},
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/floraspollinin-4.png", scale = 1.2},
    },
    fuel_value = "450kJ",
    fuel_category = "biomass"
}:spoil("biomass", 200 * minute)

RECIPE {
    type = "item",
    name = "floraspollinin-compression",
    ingredients = {
        {type = "item",  name = "floraspollinin", amount = 2},
        {type = "fluid", name = "water",          amount = 100},
        {type = "fluid", name = "gasoline",       amount = 5},
    },
    results = {
        {type = "item",  name = "biocrud", amount = 1},
        {type = "fluid", name = "steam",   amount = 5, temperature = 150},
    },
    energy_required = 2,
    category = "compressor",
    enabled = false,
    main_product = "biocrud",
    allow_productivity = false,
}:add_unlock("energy-2")

RECIPE {
    type = "item",
    name = "biopolymer-reaction",
    ingredients = {
        {type = "item",  name = "biopolymer",         amount = 2},
        {type = "fluid", name = "pressured-hydrogen", amount = 100},
        {type = "fluid", name = "bacteria-2",         amount = 10},
    },
    results = {
        {type = "item",  name = "biocrud", amount = 30},
        {type = "fluid", name = "bio-oil", amount = 100},
    },
    energy_required = 15,
    category = "bio-reactor",
    main_product = "biocrud",
    enabled = false,
    allow_productivity = true,
}:add_unlock("biopolymer")

RECIPE {
    name = "ash",
    type = "recipe",
    category = "hpf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "biomass", amount = 1},
    },
    results = {
        {type = "item",  name = "ash",   amount = 1},
        {type = "fluid", name = "water", amount = 10},
    },
    main_product = "ash",
}:add_unlock("coal-processing-1")

ITEM {
    type = "item",
    name = "biocrud",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mip/biocrud-1.png",
    icon_size = 64,

    pictures = {
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/biocrud-1.png", scale = 0.60},
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/biocrud-2.png", scale = 0.60},
        {size = 48, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/biocrud-3.png", scale = 0.60},
        {size = 48, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/biocrud-4.png", scale = 0.60},
    },
    flags = {},
    subgroup = "py-alienlife-items",
    order = "ga",
    stack_size = data.raw.item["biomass"].stack_size
}:spoil("biomass", 2 * hour)

ITEM {
    type = "item",
    name = "rich-biocrud",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mip/rich-biocrud-1.png",
    icon_size = 64,

    pictures = {
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/rich-biocrud-1.png", scale = 0.60},
        {size = 64, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/rich-biocrud-2.png", scale = 0.60},
        {size = 48, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/rich-biocrud-3.png", scale = 0.60},
        {size = 48, filename = "__pyalternativeenergygraphics__/graphics/icons/mip/rich-biocrud-4.png", scale = 0.60},
    },
    flags = {},
    subgroup = "py-alienlife-items",
    order = "ga",
    stack_size = data.raw.item["biomass"].stack_size
}:spoil("biocrud", 3 * hour)

RECIPE {
    name = "biocrud-reprocessing",
    type = "recipe",
    category = "plankton",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item",  name = "biomass",       amount = 15},
        {type = "item",  name = "biocrud",       amount = 5},
        {type = "fluid", name = "steam",         amount = 10},
        {type = "fluid", name = "phytoplankton", amount = 10},
    },
    allow_productivity = true,
    results = {
        {type = "item",  name = "carbon-black",      amount_min = 1, amount_max = 2},
        {type = "item",  name = "native-flora",      amount = 1,     probability = 0.8},
        {type = "item",  name = "moss",              amount = 1,     probability = 0.5},
        {type = "item",  name = "fawogae-spore",     amount = 1,     probability = 0.3},
        {type = "item",  name = "cellulose",         amount = 1,     probability = 0.15},
        {type = "item",  name = "agar",              amount = 1,     probability = 0.1},
        {type = "item",  name = "fungal-substrate",  amount = 1,     probability = 0.05},
        {type = "item",  name = "fawogae-substrate", amount = 1,     probability = 0.025},
        {type = "item",  name = "seeds-extract-01",  amount = 1,     probability = 0.015},
        {type = "item",  name = "arqad-maggot",      amount = 1,     probability = 0.01},
        {type = "fluid", name = "zogna-bacteria",    amount = 5},
    },
    icons = {
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/recycling.png"
        },
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/mip/biocrud-1.png",
            scale = 0.4
        },
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/recycling-top.png"
        }
    },
    icon_size = 64,
    subgroup = "py-alienlife-items",
    order = "ga",
}:add_unlock("microbiology-mk01")

RECIPE {
    name = "rich-biocrud-reprocessing",
    type = "recipe",
    category = "plankton",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item",  name = "biomass",       amount = 15},
        {type = "item",  name = "rich-biocrud",  amount = 5},
        {type = "fluid", name = "phytoplankton", amount = 10},
        {type = "fluid", name = "bacteria-2",    amount = 10},
    },
    allow_productivity = true,
    results = {
        {type = "item",  name = "carbon-black",          amount_min = 1, amount_max = 2},
        {type = "item",  name = "biocrud",               amount = 1,     probability = 0.8},
        {type = "item",  name = "bedding",               amount = 1,     probability = 0.5},
        {type = "item",  name = "bio-ore",               amount = 1,     probability = 0.3},
        {type = "item",  name = "yaedols",               amount = 1,     probability = 0.15},
        {type = "item",  name = "collagen",              amount = 1,     probability = 0.1},
        {type = "item",  name = "fungal-substrate-03",   amount = 1,     probability = 0.05},
        {type = "item",  name = "sub-denier-microfiber", amount = 1,     probability = 0.025},
        {type = "item",  name = "alien-sample-03",       amount = 1,     probability = 0.015},
        {type = "item",  name = "brain-cartridge-04",    amount = 1,     probability = 0.01},
        {type = "fluid", name = "mutant-enzymes",        amount = 5},
    },
    icons = {
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/recycling.png"
        },
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/mip/rich-biocrud-1.png",
            scale = 0.4
        },
        {
            icon = "__pyalternativeenergygraphics__/graphics/icons/recycling-top.png"
        }
    },
    icon_size = 64,
    subgroup = "py-alienlife-items",
    order = "gab",
}:add_unlock("microbiology-mk03")

RECIPE {
    type = "recipe",
    name = "biocarnation-harvesting",
    category = "fwf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "biocarnation", amount = 1},
    },
    allow_productivity = true,
    results = {
        {type = "item", name = "advanced-substrate", amount = 1,      probability = 0.25},
        {type = "item", name = "native-flora",       amount_min = 45, amount_max = 65},
        {type = "item", name = "fawogae",            amount = 3,      probability = 0.75},
        {type = "item", name = "navens",             amount = 2,      probability = 0.65},
        {type = "item", name = "yaedols",            amount = 1,      probability = 0.55},
    },
    icon = "__pyalternativeenergygraphics__/graphics/icons/biocarnation.png",
    icon_size = 64,
    subgroup = "py-alienlife-items",
    order = "h",
}:add_unlock("py-science-pack-mk03")

ITEM {
    type = "item",
    name = "biocarnation",
    icon = "__pyalternativeenergygraphics__/graphics/icons/biocarnation.png",
    icon_size = 64,
    subgroup = "py-alienlife-items",
    order = "h",
    stack_size = 100,
}

RECIPE {
    name = "biocrud-to-wastewater",
    type = "recipe",
    category = "pulp",
    ingredients = {
        {type = "item",  name = "biocrud",   amount = 5},
        {type = "fluid", name = "water",     amount = 250},
        {type = "fluid", name = "nitrogen",  amount = 50},
        {type = "fluid", name = "b-molasse", amount = 15},
    },
    results = {
        {type = "fluid", name = "waste-water", amount = 250},
        {type = "fluid", name = "a-molasse",   amount = 5}, -- should not be ignored by productivity
        {type = "item",  name = "biocrud",     amount = 1,  probability = 0.5, ignored_by_stats = 2}
    },
    main_product = "waste-water",
    allow_productivity = true,
    enabled = false,
    energy_required = 5
}:add_unlock("ethanol")

RECIPE {
    name = "biocrud-pyrolysis",
    type = "recipe",
    ingredients = {
        {type = "item",  name = "biocrud",     amount = 10},
        {type = "item",  name = "log",         amount = 2},
        {type = "item",  name = "redhot-coke", amount = 1},
        {type = "fluid", name = "steam",       amount = 200, minimum_temperature = 500},
        {type = "fluid", name = "vacuum",      amount = 50},
    },
    results = {
        {type = "fluid", name = "bio-oil",        amount = 30},
        {type = "fluid", name = "syngas",         amount = 120},
        {type = "fluid", name = "tar",            amount = 230},
        {type = "fluid", name = "carbon-dioxide", amount = 340},
        {type = "item",  name = "carbon-black",   amount = 5},
    },
    category = "distilator",
    main_product = "syngas",
    localised_name = {"recipe-name.biocrud-pyrolysis"},
    localised_description = {"recipe-description.biocrud-pyrolysis"},
    enabled = false,
    energy_required = 12,
}:add_unlock("coke-mk02")
