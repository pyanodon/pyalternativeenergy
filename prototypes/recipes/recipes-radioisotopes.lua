
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
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "u232-u233",
    category = "pa",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "u-232", amount = 10},
        {type = "fluid", name = "neutron", amount = 20}
    },
    results = {
        {type = "item", name = "u-233", amount = 5, probability = 0.999},
    },
    main_product = "u-233",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk04")

RECIPE {
    type = "recipe",
    name = "u234-u235",
    category = "pa",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "u-234", amount = 10},
        {type = "fluid", name = "neutron", amount = 20}
    },
    results = {
        {type = "item", name = "u-235", amount = 8, probability = 0.999},
    },
    -- main_product = "u-233",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "u236-u237",
    category = "pa",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "u-236", amount = 10},
        {type = "fluid", name = "neutron", amount = 10}
    },
    results = {
        {type = "item", name = "u-236", amount = 10, probability = 0.999},
        {type = "item", name = "u-237", amount = 1, probability = 0.1}
    },
    main_product = "u-237",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "u237-pu238",
    category = "pa",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "u-237", amount = 10},
        {type = "fluid", name = "neutron", amount = 20}
    },
    results = {
        {type = "item", name = "pu-238", amount = 10, probability = 0.999},
        {type = "item", name = "u-238", amount = 1, probability = 0.001}
    },
    main_product = "pu-238",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "u238-pu239",
    category = "pa",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "u-238", amount = 10},
        {type = "fluid", name = "neutron", amount = 20, maximum_temperature = 200}
    },
    results = {
        {type = "item", name = "pu-239", amount = 9, probability = 0.999},
        {type = "item", name = "u-237", amount = 1, probability = 0.01}
    },
    main_product = "pu-239",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "u234-po210",
    category = "neutron-moderator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "u-234", amount = 10},
        {type = "fluid", name = "neutron", amount = 20}
    },
    results = {
        {type = "item", name = "po-210", amount = 10, probability = 0.999},
        {type = "fluid", name = "helium", amount = 20}
    },
    main_product = "po-210",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "fuel-cell-mk03-dissolve",
    enabled = false,
    energy_required = 15,
    category = "mixer",
    ingredients =
      {
        {type = "item", name = "used-up-uranium-fuel-cell-mk03", amount = 10},
        {type = "item", name = "sodium-hydroxide", amount = 15},
        {type = "fluid", name = "water", amount = 250},
        {type = "fluid", name = "sulfuric-acid", amount = 250}
      },
    results = {
        {type = "item", name = "u-234", amount = 20}
    },
  }:add_unlock('nuclear-power-mk03')

  RECIPE {
    type = "recipe",
    name = "fuel-cell-mk04-dissolve",
    enabled = false,
    energy_required = 15,
    category = "mixer",
    ingredients =
      {
        {type = "item", name = "used-up-uranium-fuel-cell-mk04", amount = 10},
        {type = "item", name = "sodium-hydroxide", amount = 15},
        {type = "fluid", name = "water", amount = 250},
        {type = "fluid", name = "sulfuric-acid", amount = 250}
      },
    results = {
        {type = "item", name = "u-236", amount = 30}
    },
  }:add_unlock('nuclear-power-mk04')

--plutonium

--weapons grade is pu-239. the long the reactor is run the more not weapons grade plutonium is mixed in.
--pu-238 is used for rtgs

--spent fuel plutonium isotope breakdown
--53% Pu-239, 25% Pu-240, 15% Pu-241, 5% Pu-242 and 2% of Pu-238

RECIPE {
    type = "recipe",
    name = "plutonium-fuel-cell",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 8},
        {type = "item", name = "molybdenum-plate", amount = 5},
        {type = "item", name = "u-238", amount = 28},
        {type = "item", name = "pu-239", amount = 2},
    },
    results = {
        {type = "item", name = "mox-fuel-cell", amount = 2},
    },
    main_product = "mox-fuel-cell",
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "plutonium-fuel-reprocessing",
    category = "centrifuging",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item", name = "used-up-mox-fuel-cell", amount = 4},
    },
    results = {
        {type = "item", name = "u-238", amount = 10},
        {type = "item", name = "plutonium-oxide", amount = 14}
    },
    main_product = "plutonium-oxide",
    subgroup = "py-nuclear",
    order = "t",
}:add_unlock("uranium-processing")


RECIPE {
    type = "recipe",
    name = "plutonium-seperation",
    category = "pa",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "plutonium-oxide", amount = 5},
    },
    results = {
        {type = "item", name = "pu-238", amount = 15, probability = 0.02},
        {type = "item", name = "pu-239", amount = 15, probability = 0.53},
        {type = "item", name = "pu-240", amount = 15, probability = 0.25},
        {type = "item", name = "pu-241", amount = 15, probability = 0.15},
        {type = "item", name = "pu-242", amount = 15, probability = 0.5},
    },
    main_product = "pu-239",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "pu-238-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "pu-238", amount = 10},
        {type = "fluid", name = "neutron", amount = 20}
    },
    results = {
        {type = "item", name = "pu-239", amount = 8},
    },
    main_product = "pu-239",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")


--pu-239 is used as mox fuel in the burner and weapons. extra can be burnt up into pu-238
--pu239 can be bombarded to pu240 and again to pu241. pu241 decays to am241. am241 bombarded to am242 which decays to cm242. cm242 decays to pu238.
RECIPE {
    type = "recipe",
    name = "pu-239-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "pu-239", amount = 20},
        {type = "fluid", name = "neutron", amount = 40}
    },
    results = {
        {type = "item", name = "pu-240", amount = 20},
    },
    main_product = "pu-240",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "pu-240-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "pu-240", amount = 40},
        {type = "fluid", name = "neutron", amount = 80}
    },
    results = {
        {type = "item", name = "pu-241", amount = 40},
    },
    main_product = "pu-241",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "pu-241-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "pu-241", amount = 40},
        {type = "fluid", name = "neutron", amount = 80, minimum_temperature = 750}
    },
    results = {
        {type = "item", name = "pu-241", amount = 24},
        {type = "item", name = "pu-242", amount = 12},
        {type = "item", name = "am-241", amount = 4},
    },
    main_product = "pu-242",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "pu-242-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "pu-242", amount = 12},
    },
    results = {
        {type = "item", name = "am-243", amount = 4},
        {type = "item", name = "u-238", amount = 1},
        {type = "fluid", name = "helium", amount = 10},
    },
    main_product = "am-243",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power")


--Americium

RECIPE {
    type = "recipe",
    name = "americium-seperation",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "americium-oxide", amount = 5},
    },
    results = {
        {type = "item", name = "am-241", amount = 5, probability = 0.5},
        {type = "item", name = "am-243", amount = 5, probability = 0.5},
    },
    main_product = "am-241",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "am-241-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "am-241", amount = 10},
    },
    results = {
        {type = "item", name = "pu-238", amount = 10},
        {type = "fluid", name = "helium", amount = 20},
    },
    main_product = "pu-238",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "am-243-transmutation",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "am-243", amount = 10},
    },
    results = {
        {type = "item", name = "pu-239", amount = 8},
        {type = "fluid", name = "helium", amount = 10},
    },
    main_product = "pu-239",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

--Curium

RECIPE {
    type = "recipe",
    name = "am-243-transmutation-2",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "am-243", amount = 10},
    },
    results = {
        {type = "item", name = "cm-250", amount = 8},
        {type = "fluid", name = "neutron", amount = 200, temperature = 100},
    },
    main_product = "cm-250",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "cm-250-neutrons",
    category = "pa",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "cm-250", amount = 20},
    },
    results = {
        {type = "fluid", name = "neutron", amount = 2000, temperature = 100},
    },
    main_product = "neutron",
    subgroup = "py-nuclear",
    order = "b"
}:add_unlock("nuclear-power-mk02")