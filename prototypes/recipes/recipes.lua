RECIPE {
    type = "recipe",
    name = "test",
    category = "solar-tower",
    enabled = true,
    energy_required = 400,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 1}
    },
    results = {
        {type = "item", name = "iron-plate", amount = 1},
    },
--    main_product = "molybdenite-dust",
}

RECIPE {
    type = "recipe",
    name = "lead-acetate",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "lead-plate", amount = 3},
        {type = "fluid", name = "acetic-acid", amount = 50},
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
        {type = "fluid", name = "methanol", amount = 50},
        {type = "item", name = "chromium", amount = 2},
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
        {type = "item", name = "sodium-carbonate", amount = 2},
        {type = "fluid", name = "cyanic-acid", amount = 100},
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
        {type = "fluid", name = "ammonia", amount = 100},
        {type = "item", name = "flask", amount = 1},
        {type = "item", name = "oxalic-acid", amount = 1},
    },
    results = {
        {type = "item", name = "ammonium-oxalate", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("thorium")

RECIPE {
    type = "recipe",
    name = "oxalic-acid",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "item", name = "vanadium-oxide", amount = 1},
        {type = "item", name = "plastic-bar", amount = 1},
    },
    results = {
        {type = "item", name = "oxalic-acid", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("thorium")

RECIPE {
    type = "recipe",
    name = "diamond-wire",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "stainless-steel", amount = 5},
        {type = "item", name = "diamond", amount = 5},
        {type = "item", name = "copper-plate", amount = 2},
        {type = "item", name = "zinc-plate", amount = 3},
        {type = "item", name = "sic", amount = 4},
        {type = "fluid", name = "vacuum", amount = 50},
    },
    results = {
        {type = "item", name = "diamond-wire", amount = 1},
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
        {type = "item", name = "sb-oxide", amount = 1},
        {type = "fluid", name = "molten-glass", amount = 50},
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
        {type = "item", name = "silver-plate", amount = 5},
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
        {type = "fluid", name = "molten-silver", amount = 50},
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
        {type = "item", name = "polycrystalline-plate", amount = 2},
        {type = "item", name = "passivation-layer", amount = 1},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "item", name = "nickel-plate", amount = 1},
        {type = "item", name = "copper-plate", amount = 1},
        {type = "item", name = "ore-quartz", amount = 3},
        {type = "item", name = "boron-trioxide", amount = 2},
        {type = "fluid", name = "phosphine-gas", amount = 30},
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
        {type = "item", name = "monocrystalline-plate", amount = 2},
        {type = "item", name = "passivation-layer", amount = 1},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "item", name = "nickel-plate", amount = 1},
        {type = "item", name = "copper-plate", amount = 1},
        {type = "item", name = "nexelit-plate", amount = 3},
        {type = "item", name = "boron", amount = 1},
        {type = "fluid", name = "phosphine-gas", amount = 30},
        {type = "item", name = "sic", amount = 3},
    },
    results = {
        {type = "item", name = "monocrystalline-cell", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("solar-mk02")

RECIPE {
    type = "recipe",
    name = "battery-mk01",
    category = "crafting-with-fluid", --change for future chemical plant
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "glass", amount = 1},
        {type = "item", name = "melamine", amount = 2},
        {type = "item", name = "bolts", amount = 3},
        {type = "item", name = "graphite", amount = 3},
        {type = "item", name = "zinc-plate", amount = 3},
        {type = "fluid", name = "cyanic-acid", amount = 30},
    },
    results = {
        {type = "item", name = "battery-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("vacuum-tube-electronics")

RECIPE {
    name = "CuZn-battery",
    category = "crafting-with-fluid",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "zinc-plate", amount = 10},
        {type = "fluid", name = "saline-water", amount = 250},
    },
    results = {
        {type = "item", name = "battery-mk01", amount = 1},
    },
    --main_product = "eg-si",
}
