
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
    --isotope seperation is hard and expensive. most pu238 made from neutron bombardment of neptunium-237 itself made from u236 seperated from spent fuel which thorium is a good sorce for a more pure pu238. can also be made from americium thru curium. pu239 can be bombarded to pu240 and again to pu241. pu241 decays to am241. am241 bombarded to am242 which decays to cm242. cm242 decays to pu238. during element changes it also easier seperation of the elements chemically vs isotope seperation of mixed plutonium.

RECIPE {
    type = "recipe",
    name = "neutron-absorbston",
    category = "neutron-absorber",
    icon = '__base__/graphics/icons/assembling-machine-2.png',
    icon_size = 64,
    enabled = true,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "neutron", amount = 50}
    },
    results = {},
    subgroup = "py-items",
    order = "g"
}

RECIPE {
    type = "recipe",
    name = "neutron-moderation",
    category = "neutron-moderator",
    --icon = '__base__/graphics/icons/assembling-machine-2.png',
    --icon_size = 64,
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "neutron", amount = 100}
    },
    results = {
        {type = "fluid", name = "neutron", amount = 100, temperature = 500}
    },
    subgroup = "py-items",
    order = "g"
}


--PUREX

--uranium and plutonium + fission products are seperated using tributyl-phosphate and kerosene in multistep process of washing and cleaning

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
]]--

--varsol == kerosene/acetone

--((Waste 1))--
--mostly u238 from light enrichment

RECIPE {
    type = "recipe",
    name = "lithium-salt-fuel-seperation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "reactor-waste-1", amount = 100},
        {type = "fluid", name = "lithium-salt", amount = 100},
    },
    results = {
        {type = "fluid", name = "reactor-salt", amount = 50}, --need to find out what molten salt we are using
        {type = "item", name = "high-energy-waste-1", amount = 10},
        {type = "item", name = "lithium", amount = 10}
    },
    main_product = "high-energy-waste-1",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "waste-uranium-disolving",
    category = "chemistry",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "high-energy-waste-1", amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    results = {
        {type = "fluid", name = "purex-concentrate-1", amount = 50, temperature = 50}
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")


RECIPE {
    type = "recipe",
    name = "purex-washing-1",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-1", amount = 50, max_temperature = 99},
        {type = "fluid", name = "tributyl-phosphate", amount = 100},
        {type = "fluid", name = "kerosene", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-2", amount = 50, temperature = 50},
        {type = "fluid", name = "purex-waste-1", amount = 50},
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-2", amount = 50, max_temperature = 99},
        {type = "fluid", name = "acetone", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-3", amount = 50, temperature = 50},
        {type = "fluid", name = "purex-concentrate-4", amount = 50, temperature = 50},
        {type = "fluid", name = "purex-waste-1", amount = 50},
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-4", amount = 50, max_temperature = 99},
        {type = "fluid", name = "naphtha", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5", amount = 50, temperature = 50},
        {type = "fluid", name = "purex-pu-concentrate-2", amount = 50, temperature = 50},
        {type = "fluid", name = "purex-waste-1", amount = 50},
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-3", amount = 50, max_temperature = 99},
    },
    results = {
        {type = "fluid", name = "purex-u-concentrate-1", amount = 50, temperature = 50},
        {type = "fluid", name = "purex-concentrate-4", amount = 25, temperature = 50},
        {type = "fluid", name = "purex-waste-1", amount = 50},
    },
    main_product = "purex-u-concentrate-1",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

--((waste 2))--
--waste from medium enrichemnt

RECIPE {
    type = "recipe",
    name = "lithium-salt-fuel-seperation-2",
    category = "fluid-separator",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "reactor-waste-2", amount = 100},
        {type = "fluid", name = "lithium-salt", amount = 100},
    },
    results = {
        {type = "fluid", name = "reactor-salt", amount = 50}, --need to find out what molten salt we are using
        {type = "item", name = "high-energy-waste-2", amount = 10},
        {type = "item", name = "lithium", amount = 10}
    },
    main_product = "high-energy-waste-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "waste-uranium-disolving-2",
    category = "chemistry",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "high-energy-waste-2", amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    results = {
        {type = "fluid", name = "purex-concentrate-1", amount = 50, temperature = 100}
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")


RECIPE {
    type = "recipe",
    name = "purex-washing-1-2",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-1", amount = 50, minimum_temperature = 100, max_temperature = 199},
        {type = "fluid", name = "tributyl-phosphate", amount = 100},
        {type = "fluid", name = "kerosene", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-2", amount = 50, temperature = 100},
        {type = "fluid", name = "purex-waste-1", amount = 50},
    },
    main_product = "purex-concentrate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-washing-2-2",
    category = "fluid-separator",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-2", amount = 50, minimum_temperature = 100, max_temperature = 199},
        {type = "fluid", name = "acetone", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-3", amount = 50, temperature = 100},
        {type = "fluid", name = "purex-concentrate-4", amount = 50, temperature = 100},
        {type = "fluid", name = "purex-waste-1", amount = 50},
    },
    main_product = "purex-concentrate-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-washing-3-2",
    category = "compressor",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-4", amount = 50, minimum_temperature = 100, max_temperature = 199},
        {type = "fluid", name = "naphtha", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5", amount = 50, temperature = 100},
        {type = "fluid", name = "purex-pu-concentrate-2", amount = 50, temperature = 100},
        {type = "fluid", name = "purex-waste-1", amount = 50},
    },
    main_product = "purex-concentrate-5",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-washing-4-2",
    category = "fluid-separator",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-3", amount = 50, minimum_temperature = 100, max_temperature = 199},
    },
    results = {
        {type = "fluid", name = "purex-u-concentrate-1", amount = 50, temperature = 100},
        {type = "fluid", name = "purex-concentrate-4", amount = 25, temperature = 100},
        {type = "fluid", name = "purex-waste-1", amount = 50},
    },
    main_product = "purex-u-concentrate-1",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")



--purex waste

RECIPE {
    type = "recipe",
    name = "purex-waste-washing-1",
    category = "fluid-separator",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-waste-1", amount = 50},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-1", amount = 50},
        {type = "fluid", name = "purex-waste-2", amount = 50},
        {type = "item", name = "sb-chloride", amount = 5}
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-waste-2", amount = 50},
        {type = "fluid", name = "chlorine", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5", amount = 50},
        {type = "fluid", name = "purex-waste-3", amount = 50},
    },
    main_product = "purex-waste-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-waste-vitrification",
    category = "nano",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-waste-3", amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 2},
        {type = 'item', name = 'boron', amount = 3},
        {type = 'item', name = 'nickel-plate', amount = 6},
        {type = "fluid", name = "oxygen", amount = 50}
    },
    results = {
        {type = "fluid", name = "purex-concentrate-5", amount = 50},
        {type = "fluid", name = "purex-u-concentrate-1", amount = 50},
        {type = "item", name = "molybdenum-ore", amount = 5},
        {type = "item", name = "metallic-glass", amount = 5},
    },
    main_product = "metallic-glass",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")--TODO: replace metallic glass with a different process and rocket launches to get rid of the waste in space


--plutonium washing

RECIPE {
    type = "recipe",
    name = "plutonium-washing-1",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-concentrate-5", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-pu-concentrate-1", amount = 50},
        {type = "fluid", name = "purex-concentrate-3", amount = 50},
        {type = "fluid", name = "purex-waste-1", amount = 50},
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-pu-concentrate-1", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-pu-concentrate-2", amount = 50},
        {type = "fluid", name = "purex-concentrate-4", amount = 50},
        {type = "fluid", name = "purex-raffinate", amount = 50},
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-pu-concentrate-2", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-pu-concentrate-3", amount = 25},
        {type = "fluid", name = "purex-u-concentrate-1", amount = 100},
        {type = "fluid", name = "purex-raffinate", amount = 50},
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-pu-concentrate-3", amount = 100},
        {type = "fluid", name = "hydrogen-peroxide", amount = 100}
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
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "plutonium-peroxide", amount = 100},
        {type = "fluid", name = "ethanol", amount = 100}
    },
    results = {
        {type = "item", name = "plutonium-oxide", amount = 5}
    },
    --main_product = "purex-concentrate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

--URANIUM

RECIPE {
    type = "recipe",
    name = "uranium-washing-1",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-u-concentrate-1", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-u-concentrate-2", amount = 50},
        {type = "fluid", name = "purex-raffinate", amount = 50},
    },
    main_product = "purex-u-concentrate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "uranium-washing-2",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-u-concentrate-2", amount = 5},
        {type = "fluid", name = "tributyl-phosphate", amount = 100},
        {type = "fluid", name = "kerosene", amount = 100},
    },
    results = {
        {type = "fluid", name = "purex-u-concentrate-3", amount = 50},
        {type = "fluid", name = "purex-raffinate", amount = 50},
    },
    main_product = "purex-u-concentrate-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "uranium",
    category = "evaporator",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-u-concentrate-3", amount = 100},
    },
    results = {
        {type = "item", name = "uranium-oxide", amount = 1}
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

--purex raffinate

RECIPE {
    type = "recipe",
    name = "purex-raffinate-1",
    category = "pan",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-raffinate", amount = 50},
        {type = "fluid", name = "ammonia", amount = 50}
    },
    results = {
        {type = "item", name = "niobium-ore", amount = 5},
        {type = "fluid", name = "purex-raffinate-2", amount = 50},
    },
    main_product = "purex-raffinate-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-raffinate-2",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-raffinate-2", amount = 50},
        {type = "fluid", name = "acid-strip-solution", amount = 40}
    },
    results = {
        {type = "fluid", name = "purex-raffinate-3", amount = 50},
        {type = "fluid", name = "re-pulp-01", amount = 50},
    },
    main_product = "purex-raffinate-3",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "purex-raffinate-3",
    category = "pan",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "purex-raffinate-3", amount = 50},
        {type = "item", name = "sodium-carbonate", amount = 4}
    },
    results = {
        {type = "fluid", name = "ac", amount = 50},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

--ac reduction

RECIPE {
    type = "recipe",
    name = "ac-oxygenated",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "ac", amount = 50},
        {type = "fluid", name = "oxygen", amount = 200}
    },
    results = {
        {type = "fluid", name = "ac-oxygenated", amount = 50},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "americium-reduction",
    category = "pan",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "ac-oxygenated", amount = 50},
        {type = "item", name = "th-oxide", amount = 10}
    },
    results = {
        {type = "fluid", name = "c-oxygenated", amount = 50},
        {type = "item", name = "americium-oxide", amount = 5},
    },
    main_product = "americium-oxide",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")--thorium is a reducing agent and therefore should be an oxide

RECIPE {
    type = "recipe",
    name = "curium-reduction",
    category = "hpf",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "c-oxygenated", amount = 50},
        {type = "item", name = "lithium", amount = 3}
    },
    results = {
        {type = "item", name = "curium-oxide", amount = 5},
    },
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")--lithium is a reducing agent and therefore should be an oxide

RECIPE {
    type = "recipe",
    name = "sb-chloride-to-ore",
    category = "hpf",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "sb-chloride", amount = 10},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "antimonium-ore", amount = 4},
        {type = "fluid", name = "hydrogen-chloride", amount = 50}
    },
    main_product = "antimonium-ore",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

--Uranium transmutaion

RECIPE {
    type = "recipe",
    name = "uranium-seperation",
    category = "centrifuging",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "uranium-oxide", amount = 10},
    },
    results = {
        {type = "item", name = "u-232", amount = 10, probability = 0.01},
        {type = "item", name = "u-233", amount = 10, probability = 0.01},
        {type = "item", name = "u-234", amount = 10, probability = 0.025},
        {type = "item", name = "u-235", amount = 10, probability = 0.1},
        {type = "item", name = "u-236", amount = 10, probability = 0.08},
        {type = "item", name = "u-237", amount = 1, probability = 0.1},
        {type = "item", name = "u-238", amount = 10, probability = 0.95},
    },
    main_product = "u-238",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "u236-u237",
    category = "pa",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "u-236", amount = 10},
        {type = "fluid", name = "neutron", amount = 20}
    },
    results = {
        {type = "item", name = "u-236", amount = 10, probability = 0.999},
        {type = "item", name = "u-237", amount = 1, probability = 0.001}
    },
    main_product = "u-237",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nuclear-power")

--plutonium

--weapons grade is pu-239. the long the reactor is run the more not weapons grade plutonium is mixed in.
--pu-238 is used for rtgs

--spent fuel plutonium isotope breakdown
--53% Pu-239, 25% Pu-240, 15% Pu-241, 5% Pu-242 and 2% of Pu-238
