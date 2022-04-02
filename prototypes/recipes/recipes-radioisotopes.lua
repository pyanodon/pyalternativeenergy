
--to breed u238 you need a plutonium core and fast neutrons as the neutron economy is to low with slow neutrons. requires more plutonium to make up for neutron capture cross section. breeding will stabalize the production of plutonium with that which is burned up.

--need pu238 for rtg for satelite limited amount from uranium. thorium can be used as a better breeding source as it can produce only pu238 which removes the need to spend effort seperating the pu238 from higher isotopes.
    --isotope seperation is hard and expensive. most pu238 made from neutron bombardment of neptunium-237 itself made from u236 seperated from spent fuel which thorium is a good sorce for a more pure pu238. can also be made from americium thru curium. pu239 can be bombarded to pu240 and again to pu241. pu241 decays to am241. am241 bombarded to am242 which decays to cm242. cm242 decays to pu238. during element changes it also easier seperation of the elements chemically vs isotope seperation of mixed plutonium.

--Uranium transmutaion


--plutonium

--weapons grade is pu-239. the long the reactor is run the more not weapons grade plutonium is mixed in.
--pu-238 is used for rtgs

--spent fuel plutonium isotope breakdown
--53% Pu-239, 25% Pu-240, 15% Pu-241, 5% Pu-242 and 2% of Pu-238

RECIPE {
    type = "recipe",
    name = "plutonium-seperation",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "plutonium-oxide", amount = 5},
    },
    results = {
        {type = "item", name = "pu-238", amount = 10, probability = 0.02},
        {type = "item", name = "pu-239", amount = 10, probability = 0.53},
        {type = "item", name = "pu-240", amount = 10, probability = 0.25},
        {type = "item", name = "pu-241", amount = 10, probability = 0.15},
        {type = "item", name = "pu-242", amount = 10, probability = 0.5},
    },
    main_product = "pu-239",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("nucleo")
