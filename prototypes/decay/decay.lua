if not feature_flags.space_travel then return end
if not settings.startup["py-enable-decay"].value then return end

local second = 60
local minute = 60 * second
local hour = 60 * minute
local day = 24 * hour
local week = 7 * day
local month = 30 * day
local year = 365 * day
local max_spoilage = 4294967295

-- coal processing

ITEM("animal-sample-01"):spoil("plasmids", hour)
ITEM("crushed-iron"):spoil("iron-oxide", 35 * minute)
ITEM("processed-iron-ore"):spoil("iron-oxide", 35 * minute)

-- alternative energy

ITEM { -- todo: Allow composting
    type = "item",
    name = "biocarnation",
    icon = "__pyalternativeenergygraphics__/graphics/icons/biocarnation.png",
    icon_size = 64,
    subgroup = "py-alienlife-items",
    order = "h",
    stack_size = 10,
}

RECIPE("jacket-bio-ore")
:multiply_result_amount("bio-ore", 0.1)
:add_result {
    name = "nanozymes",
    type = "item",
    amount = 1,
    probability = 0.90,
    ignored_by_stats = 1,
    ignored_by_productivity = 1
}
.allow_productivity = true

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

ITEM("animal-eye"):spoil("biomass", 30 * minute)
RECIPE("acetaldehyde-1"):replace_ingredient("plastic-bar", {type = "item", name = "barrel", amount = 1})
RECIPE("acetaldehyde-2"):replace_ingredient("plastic-bar", {type = "item", name = "barrel", amount = 1})
ITEM("acetaldehyde"):spoil("barrel", 30 * second)
ITEM("time-crystal"):spoil("time-crystal", hour)
ITEM("metastable-quasicrystal"):spoil("time-crystal", hour)
ITEM("bio-ore"):spoil("biocarnation", hour)
ITEM("erbium"):spoil("er-oxide", hour)
ITEM("er-oxide"):spoil("impure-er-oxide", hour)
ITEM("biocarnation"):spoil("advanced-substrate", 2 * hour)

-- alternative energy nuclear

--ITEM("am-241"):spoil("np-237", minute * 432)
--ITEM("am-243"):spoil("np-239", minute * 7370)
ITEM("cm-250"):spoil("plutonium-oxide", minute * 8300)
ITEM("pa-233"):spoil("u-233", 27 * second) -- realistic time is 27 days
RECIPE("pa233-u233"):remove_unlock("nuclear-power-mk03")
data.raw.recipe["pa233-u233"] = nil
ITEM("po-210"):spoil("reduced-lead", 138.4 * minute)
ITEM("pu-238"):spoil("u-234", 87.7 * minute)
ITEM("pu-239"):spoil("u-235", 24100 * minute)
ITEM("pu-240"):spoil("u-236", 6560 * minute)
ITEM("pu-241"):spoil("am-241", 14.3 * month)
ITEM("pu-242"):spoil("u-238", 373300 * second)
ITEM("th-233"):spoil("pa-233", 22.3 * minute)

--[[
ITEM("u-232"):spoil("th-228", 68.9 * year)
ITEM("u-233"):spoil("th-229", 159200 * year)
ITEM("u-234"):spoil("th-230", 245500 * year)
ITEM("u-235"):spoil("th-231", 703.8 * million_years)
ITEM("u-236"):spoil("th-232", 23.4 * million_years) -- via decay of U-236m
ITEM("u-237"):spoil("np-237", 6.75 * day)
ITEM("u-239"):spoil("pu-239", 23.5 * minute)
ITEM("u-240"):spoil("pu-240", 14.1 * hour)
--]]

for i = 232, 240 do
    ITEM("u-" .. i):spoil("uranium-oxide", 5 * minute)
end
ITEM("uranium-oxide"):spoil("ash", day)
data.raw.recipe["uranium-seperation"]:replace_ingredient("u238", {type = "item", name = "u238", amount = 10, probability = 0.25}):add_ingredient {type = "item", name = "ash", amount = 10, probability = 0.425}

ITEM("high-energy-waste-2"):spoil("high-energy-waste-1", 5 * minute)
ITEM("high-energy-waste-1"):spoil("ash", 5 * minute)

-- alien life

ITEM("petri-dish-bacteria"):spoil("petri-dish", 15 * second)
ITEM("fawogae-substrate"):spoil("fawogae-spore", minute * 10)

ITEM("brain"):spoil("dried-meat", 2 * hour)
ITEM("meat"):spoil("dried-meat", 4 * hour)
ITEM("guts"):spoil("dried-meat", 8 * hour)

ITEM("manure"):spoil("rich-clay", 5.5 * hour)

local meaty_foods = {
    "workers-food",
    "workers-food-02",
    "workers-food-03",
    "kmauts-ration",
    "kmauts-ration-chitin",
    "arthurian-food-01",
    "arthurian-food-02",
    "phadai-food-01",
    "phadai-food-02",
    "dingrits-food-01",
    "dingrits-food-02",
    "korlex-food-01",
    "korlex-food-02",
}

local meat_to_remove = {
    ["meat"] = true,
    ["guts"] = true,
    ["skin"] = true,
    ["bonemeal"] = true,
    ["mukmoux-fat"] = true,
}

for _, food in pairs(meaty_foods) do
    if not data.raw.recipe[food] then error(food) end
    food = RECIPE(food)
    local removed_count = 0
    for _, ingredient in pairs(food.ingredients) do
        if meat_to_remove[ingredient.name] then
            removed_count = removed_count + ingredient.amount
        end
    end
    for meat in pairs(meat_to_remove) do
        food:remove_ingredient(meat)
    end
    food:add_ingredient {type = "item", name = "dried-meat", amount = 15}
end

ITEM("native-flora"):spoil("floraspollinin", 45 * minute)

RECIPE {
    name = "floraspollinin-reprocessing",
    type = "recipe",
    category = "nursery",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {type = "item", name = "floraspollinin", amount = 10},
        {type = "fluid", name = "steam", amount = 30},
    },
    results = {
        {type = "item", name = "native-flora", amount_min = 5, amount_max = 10},
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
}:spoil("biomass", 45 * minute)

ITEM("native-flora").fuel_value = "175kJ"
ITEM("native-flora").fuel_category = "biomass"

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

RECIPE("dried-meat-01"):remove_unlock("rendering")
RECIPE("guts-to-jerky"):remove_unlock("microbiology-mk01")
data.raw.recipe["dried-meat-01"] = nil
data.raw.recipe["guts-to-jerky"] = nil

ITEM("fish-egg"):spoil("fishmeal", 30 * minute)
ITEM("fish-egg-mk02"):spoil("fish-egg", hour)
ITEM("fish-egg-mk03"):spoil("fish-egg-mk02", 2 * hour)
ITEM("fish-egg-mk04"):spoil("fish-egg-mk03", 4 * hour)

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
    stack_size = 1000
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
    stack_size = 1000
}:spoil("biocrud", 3 * hour)

RECIPE {
    name = "biocrud-reprocessing",
    type = "recipe",
    category = "plankton",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "biomass",       amount = 10},
        {type = "item",  name = "biocrud",       amount = 10},
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
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "biomass",       amount = 10},
        {type = "item",  name = "rich-biocrud",  amount = 10},
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

RECIPE("biomass-molten-salt-01"):add_ingredient {type = "item", name = "biocrud", amount = 1}
RECIPE("biomass-molten-salt-02"):add_ingredient {type = "item", name = "biocrud", amount = 1}
RECIPE("biomass-molten-salt-03"):add_ingredient {type = "item", name = "biocrud", amount = 1}
RECIPE("biomass-molten-salt-04"):add_ingredient {type = "item", name = "biocrud", amount = 1}

RECIPE("bacteria-2"):remove_unlock("microbiology-mk04"):add_unlock("microbiology-mk03")
RECIPE("perfect-samples"):add_ingredient{type = "item", name = "rich-biocrud", amount = 3}

ITEM("bioartificial-guts"):spoil("rich-biocrud", 5 * minute)
ITEM("biomimetic-skin"):spoil("rich-biocrud", 5 * minute)
ITEM("laboratory-grown-brain"):spoil("rich-biocrud", 5 * minute)
ITEM("scafold-free-bones"):spoil("rich-biocrud", 5 * minute)
ITEM("tissue-engineered-fat"):spoil("rich-biocrud", 5 * minute)
ITEM("perfect-samples"):spoil("rich-biocrud", 30 * minute)
ITEM("magnetic-organ"):spoil("biocrud", hour)
ITEM("glandular-myocluster"):spoil("biocrud", hour)
ITEM("polynuclear-ganglion"):spoil("rich-biocrud", hour)
ITEM("intestinal-ee"):spoil("rich-biocrud", hour)
ITEM("subdermal-chemosnare"):spoil("rich-biocrud", hour)
ITEM("tendon"):spoil("biocrud", hour)
ITEM("venom-gland"):spoil("rich-biocrud", hour)
ITEM("geostabilization-tissue"):spoil("rich-biocrud", hour)
ITEM("cognition-osteochain"):spoil("rich-biocrud", hour)
ITEM("adaptable-automucosa"):spoil("rich-biocrud", hour)
ITEM("hormonal"):spoil("rich-biocrud", hour)
ITEM("cryogland"):spoil("rich-biocrud", hour)
ITEM("lcc"):spoil("rich-biocrud", hour)
ITEM("sternite-lung"):spoil("rich-biocrud", hour)
ITEM("aeroorgan"):spoil("rich-biocrud", hour)
ITEM("dimensional-gastricorg"):spoil("rich-biocrud", hour)
ITEM("vsk"):spoil("rich-biocrud", hour)
ITEM("snarer-heart"):spoil("rich-biocrud", hour)
ITEM("biopolymer"):spoil("rich-biocrud", 10 * hour)
ITEM("adrenal-cortex"):spoil("rich-biocrud", 10 * hour)

ITEM("cellulose"):spoil("biocrud", 10 * minute)
ITEM("lignin"):spoil("biocrud", 5 * minute)
ITEM("mukmoux-fat"):spoil("biocrud", 2 * hour)
ITEM("organics"):spoil("biocrud", hour)
ITEM("agar"):spoil("biocrud", 5 * minute)
ITEM("seeds-extract-01"):spoil("biocrud", 10 * hour)
ITEM("pineal-gland"):spoil("biocrud", 10 * minute)
ITEM("gas-bladder"):spoil("biocrud", 4 * hour)
ITEM("photophore"):spoil("biocrud", 5 * minute)
ITEM("animal-eye"):spoil("biocrud", 15 * minute)
ITEM("arqad-propolis"):spoil("biocrud", 13 * minute)
ITEM("yotoi-leaves"):spoil("biocrud", 13 * minute)

ITEM("mova"):spoil("biocrud", hour)
ITEM("washed-mova"):spoil("mova", minute)

ITEM("denatured-seismite"):spoil("nonconductive-phazogen", 41 * minute)
ITEM("nonconductive-phazogen"):spoil("negasium", 39 * minute)
ITEM("negasium"):spoil("paragen", 37 * minute)
ITEM("paragen"):spoil("solidified-sarcorus", 31 * minute)
ITEM("solidified-sarcorus"):spoil("chitin", 29 * minute)

ITEM("sea-sponge-sprouts-mk04"):spoil("sea-sponge-sprouts-mk03", 2 * minute)
ITEM("sea-sponge-sprouts-mk03"):spoil("sea-sponge-sprouts-mk02", 4 * minute)
ITEM("sea-sponge-sprouts-mk02"):spoil("sea-sponge-sprouts", 8 * minute)
ITEM("sea-sponge-sprouts"):spoil("ore-quartz", 16 * minute)

ITEM("yotoi-fruit-mk04"):spoil("yotoi-fruit-mk03", 32 * minute)
ITEM("yotoi-fruit-mk03"):spoil("yotoi-fruit-mk02", 16 * minute)
ITEM("yotoi-fruit-mk02"):spoil("yotoi-fruit", 8 * minute)
ITEM("yotoi-fruit"):spoil("yotoi-seeds", 4 * minute)

ITEM("arqad-egg-nest"):spoil("vrauks", 4 * minute)
ITEM("arqad-egg-nest-2"):spoil("ulric", 3 * minute)
ITEM("arqad-egg-nest-3"):spoil("korlex", 2 * minute)
ITEM("arqad-egg-nest-4"):spoil("simik", 1 * minute)

ITEM("wood-seedling-mk04"):spoil("wood-seeds-mk03", 6 * hour)
ITEM("wood-seedling-mk03"):spoil("wood-seeds-mk02", 4 * hour)
ITEM("wood-seedling-mk02"):spoil("wood-seeds", 2 * hour)
ITEM("wood-seedling"):spoil("wood-seeds", hour)

ITEM("charged-auog"):spoil("auog", 4 * hour)
ITEM("charged-dingrit"):spoil("dingrits", 6 * hour)

-- High tech

ITEM("collagen"):spoil("urea", 10 * minute)
ITEM("blood-meal"):spoil("fiberboard", 16 * hour)
ITEM("myoglobin"):spoil("meat", 12 * minute)
ITEM("resilin"):spoil("myoglobin", 444 * minute)
ITEM("aerogel"):spoil(py.spoil_triggers.puff_of_smoke(), 400 * minute)
ITEM("carbon-aerogel"):spoil(py.spoil_triggers.puff_of_smoke(), 500 * minute)
ITEM("albumin"):spoil("urea", 10 * minute)
ITEM("urea"):spoil("biocrud", 3 * minute)
RECIPE("blood-to-urea"):replace_ingredient("blood", {type = "fluid", name = "blood", amount = 250})