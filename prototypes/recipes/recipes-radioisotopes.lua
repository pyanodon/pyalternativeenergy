
--to breed u238 you need a plutonium core and fast neutrons as the neutron economy is to low with slow neutrons. requires more plutonium to make up for neutron capture cross section. breeding will stabalize the production of plutonium with that which is burned up.

--need pu238 for rtg for satelite limited amount from uranium. thorium can be used as a better breeding source as it can produce only pu238 which removes the need to spend effort seperating the pu238 from higher isotopes.
    --isotope seperation is hard and expensive. most pu238 made from neutron bombardment of neptunium-237 itself made from u236 seperated from spent fuel which thorium is a good sorce for a more pure pu238. can also be made from americium thru curium. pu239 can be bombarded to pu240 and again to pu241. pu241 decays to am241. am241 bombarded to am242 which decays to cm242. cm242 decays to pu238. during element changes it also easier seperation of the elements chemically vs isotope seperation of mixed plutonium.

--Uranium transmutaion

RECIPE {
    type = "recipe",
    name = "uranium-seperation",
    category = "pa",
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

RECIPE {
    type = "recipe",
    name = "pu-238-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "pu-238", amount = 10},
        {type = "fluid", name = "neutron", amount = 20}
    },
    results = {
        {type = "item", name = "pu-239", amount = 9},
    },
    main_product = "pu-239",
    subgroup = "py-nuclear-waste",
    order = "b"
}:add_unlock("placeholder")

RECIPE {
    type = "recipe",
    name = "pu-239-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "pu-239", amount = 5},
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
