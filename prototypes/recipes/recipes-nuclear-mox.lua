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

--MOX fuel

RECIPE({
    type = "recipe",
    name = "pu239-uf6",
    category = "centrifuging",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item", name = "pu-239", amount = 8 },
        { type = "item", name = "u-238",  amount = 100 },
    },
    results = {
        { type = "fluid", name = "puo2", amount = 250, temperature = 9999 }
    },
    main_product = "puo2",
    subgroup = "py-nuclear",
    order = "g"
}):add_unlock("nuclear-power")

RECIPE({
    type = "recipe",
    name = "mox-fuel-seperation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "fluid", name = "reactor-waste-2",  amount = 200 },
        { type = "item",  name = "lithium-peroxide", amount = 40 },
    },
    results = {
        { type = "fluid", name = "hot-molten-salt",     amount = 20000, temperature = 5000 },
        { type = "item",  name = "high-energy-waste-2", amount = 80 },
        { type = "fluid", name = "salt-solution",       amount = 800 }
    },
    main_product = "high-energy-waste-2",
    subgroup = "py-nuclear-waste",
    order = "b"
}):add_unlock("nuclear-power")

RECIPE({
    type = "recipe",
    name = "waste-mox-disolving",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "item",  name = "high-energy-waste-2", amount = 20 },
        { type = "fluid", name = "sulfuric-acid",       amount = 200 }
    },
    results = {
        { type = "item", name = "plutonium-oxide-mox", amount = 20 }
    },
    main_product = "plutonium-oxide-mox",
    subgroup = "py-nuclear-waste",
    order = "b"
}):add_unlock("nuclear-power")

RECIPE({
    type = "recipe",
    name = "plutonium-seperation-2",
    category = "pa",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "item", name = "plutonium-oxide-mox", amount = 50 },
    },
    results = {
        { type = "item", name = "pu-238", amount = 150, probability = 0.4 },
        { type = "item", name = "pu-239", amount = 50,  probability = 0.2 },
        { type = "item", name = "pu-240", amount = 150, probability = 0.5 },
        { type = "item", name = "pu-241", amount = 80,  probability = 0.05 },
        { type = "item", name = "pu-242", amount = 150, probability = 0.6 },
    },
    main_product = "pu-242",
    subgroup = "py-nuclear",
    order = "b"
}):add_unlock("nuclear-power")
