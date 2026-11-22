RECIPE("fuelrod-mk01-1"):remove_ingredient("20-u-powder")
RECIPE("bhoddos-mk02"):remove_ingredient("40-u-powder")
RECIPE("bhoddos-mk03"):remove_ingredient("70-u-powder")
RECIPE("fuelrod-mk01"):remove_unlock("advanced-material-processing-2")

--removing old enrichement recipes
for _, recipe_name in pairs {
    "u-15",
    "u-15-2",
    "u-20",
    "20-u-powder",
    "u-23",
    "u-30",
    "u-33",
    "40-u-powder",
    "u-40",
    "u-50",
    "u-65",
    "u-70",
    "70-u-powder",
    "u-73",
    "u-75",
    "u-79",
    "u-81",
    "u-83",
    "yellow-cake",
    "yellow-cake-u235",
    "vanadium-mixture",
    "pregnant-solution-01",
    "fuelrod-mk01",
    "fuelrod-mk01-2",
    "fuelrod-mk01-3",
} do
    RECIPE(recipe_name):remove_unlock("uranium-mk04"):remove_unlock("uranium-mk03"):remove_unlock("uranium-mk02"):remove_unlock("uranium-mk01")
    data.raw.recipe[recipe_name] = nil
end

data.raw.fluid["u-15"] = nil
data.raw.fluid["u-20"] = nil
data.raw.fluid["u-23"] = nil
data.raw.fluid["u-25"] = nil
data.raw.fluid["u-30"] = nil
data.raw.fluid["u-33"] = nil
data.raw.fluid["u-35"] = nil
data.raw.fluid["u-40"] = nil
data.raw.fluid["u-43"] = nil
data.raw.fluid["u-45"] = nil
data.raw.fluid["u-50"] = nil
data.raw.fluid["u-65"] = nil
data.raw.fluid["u-70"] = nil
data.raw.fluid["u-73"] = nil
data.raw.fluid["u-75"] = nil
data.raw.fluid["u-79"] = nil
data.raw.fluid["u-81"] = nil
data.raw.fluid["u-83"] = nil
data.raw.fluid["u-rich-pulp"] = nil
data.raw.fluid["u-waste"] = nil
data.raw.fluid["vanadium-mixture"] = nil
data.raw.fluid["mukmoux-oil"] = nil

data.raw.item["20-u-powder"] = nil
data.raw.item["40-u-powder"] = nil
data.raw.item["70-u-powder"] = nil

--BETA DECAY = lose an electron.

--Alpha decay = creates a atom of helium-4. 2 protons and 2 Neutrons.

--uranium 235 decays to thorium 231 losing 2 Neutrons and 2 protons.

--uranium 238 absorbs a Neutrons becoming u239 which will beta decay to neptunium 239 which will beta decay to plutonium 239
--uranium 238 + 1N = u239 - 1E = n239 - 1E = p239

--fission of uranium yeilds molybendum, Antimony, tin

--tier 1 fission will use the normal uranium chain from pyro. the more enriched versions will last longer and provide more byproducts of fissle material vs fertile material + trash.

--highly enriched uranium doesnt require a neutron moderator to run the process as the fast neutrons can fission the u238 and u235 at a sufficant rate to maintain critcality. they will burn up the higher elements as part of the fuel producing a limited amount plutonium + Actinides

--tier 2 fission will require some of the waste product as research material and will allow for plutonium recycling + thorium breeding.

--tier 3 fission will the production of bullshitium via nutron bombardment and then fission of its higher resulting elements.

--tier 4 will allow the bullshitium chain to be put into a closed loop that will begin breeding more bullshitium and open up its waste handling process.

--tier 4 will over lap with the 1st and secound tier of fusion energy and will be required to eventully activate matter + anti matter fusion. plus science shit.


-- (( FAST VS THERMAL )) --

--u235 does not like to fission with fast neutrons. using fast neutrons therfore requires more enriched uranium for there to be sufficant u235 fission events. more u235 means more fission products aka waste products.
--u238 does not like thermal neutrons and will not fission most of the time. a percentage of u238 will convert to plutonium in a thermal reactor but the largest amount will remain as irradiated u238 about 96% due to limited fast neutrons before they strike the moderator.

--pu239 also prefers thermal neutrons over fast neutrons for fission.
--adding plutonium to the fuel greatly increases the rate at which the minor actinides are created

--to breed u238 you need a plutonium core and fast neutrons as the neutron economy is to low with slow neutrons. requires more plutonium to make up for neutron capture cross section. breeding will stabalize the production of plutonium with that which is burned up.

--need pu238 for rtg for satelite limited amount from uranium. thorium can be used as a better breeding source as it can produce only pu238 which removes the need to spend effort seperating the pu238 from higher isotopes.
--isotope seperation is hard and expensive. most pu238 made from neutron bombardment of neptunium-237 itself made from u236 separated from spent fuel which thorium is a good sorce for a more pure pu238. can also be made from americium thru curium. pu239 can be bombarded to pu240 and again to pu241. pu241 decays to am241. am241 bombarded to am242 which decays to cm242. cm242 decays to pu238. during element changes it also easier seperation of the elements chemically vs isotope seperation of mixed plutonium.

RECIPE {
    type = "recipe",
    name = "control-rod",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "lithium",         amount = 10},
        {type = "item", name = "lead-plate",      amount = 5},
        {type = "item", name = "stainless-steel", amount = 3},
        {type = "item", name = "boron",           amount = 10},
    },
    results = {
        {type = "item", name = "control-rod", amount = 1}
    },
    subgroup = "py-nuclear",
    order = "g"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "used-control-rod",
    category = "electrolyzer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "used-control-rod", amount = 1},
        {type = "fluid", name = "hot-molten-salt",  amount = 50},
    },
    results = {
        {type = "fluid", name = "tritium",     amount = 5},
        {type = "item",  name = "control-rod", amount = 1, probability = 0.5},
        {type = "fluid", name = "molten-salt", amount = 50},
    },
    main_product = "tritium"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "neutron-absorbston",
    category = "neutron-absorber",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/neutron.png",
    icon_size = 64,
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "neutron", amount = 50}
    },
    results = {},
    subgroup = "py-nuclear",
    order = "g"
}:add_unlock("nuclear-power")

--PUREX

--uranium and plutonium + fission products are separated using tributyl-phosphate and kerosene in multistep process of washing and cleaning

--from highest plutonium amount to lowest
--high-energy-waste-1
--high-energy-waste-2
--high-energy-waste-3
--high-energy-waste-4
--high-energy-waste-5

--[[
step 1: spent fuel + lots of nitric -> mix 1 (GOOD THUS FAR)
step 2: mix 1 + TBP+Kero -> mix 2 + aq transUranics
step 3: mix 2 + that ammonium iron compound -> the Pu/U split
step 4a: U-TBP + nitric -> TBP + UON
step 5a: UON + heat -> UO3 + off gas
step 4b: P-solution + nitrous -> Pu-sol2
step 5b: Pu-sol2 + ethanol + H2O2 -> Pu-sol3
steb 6b: Pu-sol3 + heat -> PuO2 + offgas
]] --

--varsol == kerosene/acetone

--((Waste 1))--
--mostly u238 from light enrichment


RECIPE {
    type = "recipe",
    name = "tbp-2",
    ingredients =
    {
        {type = "fluid", name = "phosphoryl-chloride", amount = 50},
        {type = "item",  name = "barrel",              amount = 1},
        {type = "item",  name = "pyridine",            amount = 1},
        {type = "fluid", name = "butanol",             amount = 50}
    },
    results =
    {
        {type = "item",  name = "tbp",               amount = 1, autotech_is_not_primary_source = true},
        {type = "fluid", name = "hydrogen-chloride", amount = 30},
    },
    main_product = "tbp",
    category = "electrolyzer"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "lithium-salt-fuel-seperation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "reactor-waste-1",  amount = 100},
        {type = "item",  name = "lithium-peroxide", amount = 10},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt",     amount = 10000, temperature = 5000},
        {type = "item",  name = "high-energy-waste-1", amount = 40},
        {type = "fluid", name = "salt-solution",       amount = 200}
    },
    main_product = "high-energy-waste-1",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "lithium-salt-fuel-seperation2",
    category = "fluid-separator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "reactor-waste-12",  amount = 100},
        {type = "item",  name = "lithium-peroxide", amount = 7},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt",     amount = 10000, temperature = 5000},
        {type = "item",  name = "high-energy-waste-1", amount = 40},
        {type = "fluid", name = "salt-solution",       amount = 140}
    },
    main_product = "high-energy-waste-1",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/transuranic-ores/high-energy-waste-1.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "lithium-salt-fuel-seperation3",
    category = "fluid-separator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "reactor-waste-13",  amount = 100},
        {type = "item",  name = "lithium-peroxide", amount = 4},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt",     amount = 10000, temperature = 5000},
        {type = "item",  name = "high-energy-waste-1", amount = 40},
        {type = "fluid", name = "salt-solution",       amount = 80}
    },
    main_product = "high-energy-waste-1",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/transuranic-ores/high-energy-waste-1.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "lithium-salt-fuel-seperation4",
    category = "fluid-separator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "reactor-waste-14",  amount = 100},
        {type = "item",  name = "lithium-peroxide", amount = 1},
    },
    results = {
        {type = "fluid", name = "hot-molten-salt",     amount = 10000, temperature = 5000},
        {type = "item",  name = "high-energy-waste-1", amount = 40},
        {type = "fluid", name = "salt-solution",       amount = 20}
    },
    main_product = "high-energy-waste-1",
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/transuranic-ores/high-energy-waste-1.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk04")

RECIPE {
    type = "recipe",
    name = "waste-uranium-disolving",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "high-energy-waste-1", amount = 5},
        {type = "fluid", name = "sulfuric-acid",       amount = 50}
    },
    results = {
        {type = "fluid", name = "purex-concentrate-1", amount = 100}
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")


RECIPE {
    type = "recipe",
    name = "purex-washing-1",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-1", amount = 60},
        {type = "item",  name = "tbp",                 amount = 1},
        {type = "fluid", name = "kerosene",            amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-2", amount = 60},
        {type = "fluid", name = "purex-waste-1",       amount = 30},
    },
    main_product = "purex-concentrate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-washing-2",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-2", amount = 80},
        {type = "fluid", name = "acetone",             amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-3", amount = 50},
        {type = "fluid", name = "purex-concentrate-4", amount = 50},
        {type = "fluid", name = "purex-waste-1",       amount = 20},
    },
    main_product = "purex-concentrate-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-washing-3",
    category = "compressor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-4", amount = 100},
        {type = "fluid", name = "naphtha",             amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5",    amount = 50},
        {type = "fluid", name = "purex-pu-concentrate-2", amount = 50},
        {type = "fluid", name = "purex-waste-1",          amount = 10},
    },
    main_product = "purex-concentrate-5",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-washing-4",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-3", amount = 80},
    },
    results = {
        {type = "fluid", name = "purex-u-concentrate-1", amount = 40},
        {type = "fluid", name = "purex-concentrate-4",   amount = 60},
        {type = "fluid", name = "purex-waste-1",         amount = 5},
    },
    main_product = "purex-concentrate-4",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

--purex waste

RECIPE {
    type = "recipe",
    name = "purex-waste-washing-1",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-waste-1",     amount = 200},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-1", amount = 25},
        {type = "fluid", name = "purex-waste-2",       amount = 40},
        {type = "item",  name = "sb-chloride",         amount = 5}
    },
    main_product = "purex-waste-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-waste-washing-2",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-waste-2", amount = 100},
        {type = "fluid", name = "chlorine",      amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5", amount = 40},
        {type = "fluid", name = "purex-waste-3",       amount = 40},
    },
    main_product = "purex-waste-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-waste-vitrification",
    category = "bof",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "purex-waste-3",   amount = 250},
        {type = "item",  name = "stainless-steel", amount = 2},
        {type = "item",  name = "sugar",           amount = 5},
        {type = "fluid", name = "molten-glass",    amount = 50}
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5",   amount = 15},
        {type = "fluid", name = "purex-u-concentrate-1", amount = 20},
        {type = "item",  name = "molybdenum-ore",        amount = 5},
        {type = "item",  name = "vitrified-glass",       amount = 1},
    },
    main_product = "vitrified-glass",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")


RECIPE {
    type = "recipe",
    name = "purex-raffinate-vitrification",
    category = "bof",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "purex-raffinate", amount = 200},
        {type = "item",  name = "stainless-steel", amount = 2},
        {type = "item",  name = "sugar",           amount = 5},
        {type = "fluid", name = "molten-glass",    amount = 50}
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5",   amount = 40},
        {type = "fluid", name = "purex-u-concentrate-1", amount = 40},
        {type = "item",  name = "molybdenum-ore",        amount = 5},
        {type = "item",  name = "vitrified-glass",       amount = 1},
    },
    main_product = "vitrified-glass",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")


--plutonium washing

RECIPE {
    type = "recipe",
    name = "plutonium-washing-1",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-5", amount = 100},
        {type = "fluid", name = "sulfuric-acid",       amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-pu-concentrate-1", amount = 40},
        {type = "fluid", name = "purex-concentrate-3",    amount = 40},
        {type = "fluid", name = "purex-waste-1",          amount = 5},
    },
    main_product = "purex-pu-concentrate-1",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "plutonium-washing-2",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-pu-concentrate-1", amount = 100},
        {type = "fluid", name = "sulfuric-acid",          amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-pu-concentrate-2", amount = 40},
        {type = "fluid", name = "purex-concentrate-4",    amount = 40},
        {type = "fluid", name = "purex-raffinate",        amount = 30},
    },
    main_product = "purex-pu-concentrate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "plutonium-washing-3",
    category = "flotation",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-pu-concentrate-2", amount = 100},
        {type = "fluid", name = "sulfuric-acid",          amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-pu-concentrate-3", amount = 25},
        {type = "fluid", name = "purex-u-concentrate-1",  amount = 100},
        {type = "fluid", name = "purex-raffinate",        amount = 20},
    },
    main_product = "purex-pu-concentrate-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "plutonium-peroxide",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-pu-concentrate-3", amount = 100},
        {type = "fluid", name = "hydrogen-peroxide",      amount = 100}
    },
    results = {
        {type = "fluid", name = "plutonium-peroxide", amount = 50}
    },
    main_product = "plutonium-peroxide",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "plutonium",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "plutonium-peroxide", amount = 100},
        {type = "fluid", name = "ethanol",            amount = 50}
    },
    results = {
        {type = "item", name = "plutonium-oxide", amount = 10}
    },
    --main_product = "plutonium-oxide",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("uranium-processing")

--URANIUM

RECIPE {
    type = "recipe",
    name = "uranium-washing-1",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-u-concentrate-1", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-u-concentrate-2", amount = 50},
        {type = "fluid", name = "purex-raffinate",       amount = 30},
    },
    main_product = "purex-u-concentrate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "uranium-washing-2",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "purex-u-concentrate-2", amount = 50},
        {type = "item",  name = "tbp",                   amount = 1},
        {type = "fluid", name = "kerosene",              amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-u-concentrate-3", amount = 10},
        {type = "fluid", name = "purex-raffinate",       amount = 10},
        {type = "item",  name = "tbp",                   amount = 1, probability = 0.5, ignored_by_productivity = 1},
    },
    main_product = "purex-u-concentrate-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "uranium",
    category = "evaporator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "purex-u-concentrate-3", amount = 10},
    },
    results = {
        {type = "item", name = "uranium-oxide", amount = 1}
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk02")

--purex raffinate

RECIPE {
    type = "recipe",
    name = "purex-raffinate-1",
    category = "pan",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-raffinate", amount = 150},
        {type = "fluid", name = "ammonia",         amount = 50}
    },
    results = {
        {type = "item",  name = "niobium-ore",       amount = 5},
        {type = "fluid", name = "purex-raffinate-2", amount = 50},
    },
    main_product = "purex-raffinate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "purex-raffinate-2",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-raffinate-2",   amount = 150},
        {type = "fluid", name = "acid-strip-solution", amount = 40}
    },
    results = {
        {type = "fluid", name = "purex-raffinate-3", amount = 50},
        {type = "fluid", name = "re-pulp-01",        amount = 50},
    },
    main_product = "purex-raffinate-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "purex-raffinate-3",
    category = "pan",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purex-raffinate-3", amount = 100},
        {type = "item",  name = "sodium-carbonate",  amount = 4}
    },
    results = {
        {type = "fluid", name = "ac", amount = 50},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03")

--ac reduction

RECIPE {
    type = "recipe",
    name = "ac-oxygenated",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "ac",     amount = 80},
        {type = "fluid", name = "oxygen", amount = 200}
    },
    results = {
        {type = "fluid", name = "ac-oxygenated", amount = 40},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "americium-reduction",
    category = "pan",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "ac-oxygenated", amount = 60},
        {type = "item",  name = "th-oxide",      amount = 10}
    },
    results = {
        {type = "fluid", name = "c-oxygenated",    amount = 20},
        {type = "item",  name = "americium-oxide", amount = 5},
    },
    main_product = "americium-oxide",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03") --thorium is a reducing agent and therefore should be an oxide

RECIPE {
    type = "recipe",
    name = "curium-reduction",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "c-oxygenated", amount = 60},
        {type = "item",  name = "lithium",      amount = 3}
    },
    results = {
        {type = "item", name = "cm-250", amount = 2},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03") --lithium is a reducing agent and therefore should be an oxide

RECIPE {
    type = "recipe",
    name = "sb-chloride-to-ore",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "sb-chloride", amount = 10},
        {type = "fluid", name = "water",       amount = 200}
    },
    results = {
        {type = "item",  name = "antimonium-ore",    amount = 4},
        {type = "fluid", name = "hydrogen-chloride", amount = 50}
    },
    main_product = "antimonium-ore",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power-mk03")

--MANHATTEN PROJECT--

RECIPE {
    type = "recipe",
    name = "split-yellowcake",
    enabled = false,
    energy_required = 10,
    category = "pa",
    icon = "__pyalternativeenergygraphics__/graphics/icons/pa-yellow-cake.png",
    icon_size = 64,
    ingredients =
    {
        {type = "item", name = "yellow-cake", amount = 10},
    },
    results = {
        {type = "item", name = "u-235", amount = 10, probability = 0.1},
        {type = "item", name = "u-238", amount = 10, probability = 0.9}
    },
    --main_product = "u-235",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "fuel-cell-dissolve",
    enabled = false,
    energy_required = 15,
    category = "mixer",
    ingredients =
    {
        {type = "item",  name = "depleted-uranium-fuel-cell", amount = 10},
        {type = "item",  name = "sodium-hydroxide",           amount = 15},
        {type = "fluid", name = "water",                      amount = 250},
        {type = "fluid", name = "sulfuric-acid",              amount = 250}
    },
    results = {
        {type = "fluid", name = "sb-phosphate-1", amount = 100}
    },
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "antimony-phosphate",
    enabled = false,
    energy_required = 100,
    category = "centrifuging",
    ingredients =
    {
        {type = "fluid", name = "sb-phosphate-1",  amount = 5},
        {type = "item",  name = "sb-oxide",        amount = 5},
        {type = "fluid", name = "phosphoric-acid", amount = 250}
    },
    results = {
        {type = "item",  name = "sb-hpo-pu",           amount = 10},
        {type = "fluid", name = "purex-concentrate-1", amount = 100}
    },
    main_product = "sb-hpo-pu",
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "plutonium-oxidation",
    enabled = false,
    energy_required = 100,
    category = "centrifuging",
    ingredients =
    {
        {type = "item",  name = "sb-hpo-pu",         amount = 5},
        {type = "fluid", name = "hydrogen-peroxide", amount = 250}
    },
    results = {
        {type = "fluid", name = "plutonium-peroxide", amount = 100},
        {type = "fluid", name = "sb-phosphate-2",     amount = 100}
    },
    main_product = "plutonium-peroxide",
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "antimony-phosphate-2",
    enabled = false,
    energy_required = 15,
    category = "mixer",
    ingredients =
    {
        {type = "fluid", name = "sb-phosphate-2",   amount = 200},
        {type = "item",  name = "sb-oxide",         amount = 5},
        {type = "fluid", name = "phosphoric-acid",  amount = 250},
        {type = "item",  name = "ammonium-mixture", amount = 3},
    },
    results = {
        {type = "fluid", name = "plutonium-peroxide",  amount = 100},
        {type = "fluid", name = "purex-concentrate-1", amount = 100},
        {type = "fluid", name = "sb-phosphate-3",      amount = 100}
    },
    main_product = "plutonium-peroxide",
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "plutonium-oxidation-2",
    enabled = false,
    energy_required = 15,
    category = "mixer",
    ingredients =
    {
        {type = "fluid", name = "sb-phosphate-3", amount = 200},
        {type = "item",  name = "oxalic-acid",    amount = 8},
    },
    results = {
        {type = "fluid", name = "plutonium-peroxide", amount = 100},
        {type = "fluid", name = "purex-raffinate",    amount = 100}
    },
    main_product = "plutonium-peroxide",
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "yellow-cake-uf6",
    category = "hydroclassifier", --pyfe screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "yellow-cake",       amount = 5},
        {type = "fluid", name = "hydrofluoric-acid", amount = 50},
        {type = "fluid", name = "fluorine-gas",      amount = 50}
    },
    results = {
        {type = "fluid", name = "uf6", amount = 100, temperature = 70},
    },
    main_product = "uf6",
    icon = "__pyraworesgraphics__/graphics/icons/powdered-u-screening.png",
    icon_size = 32,
    subgroup = "py-nuclear",
}:add_unlock("uranium-mk01")
