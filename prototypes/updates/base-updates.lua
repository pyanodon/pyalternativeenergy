local sounds = require "__base__/prototypes/entity/sounds"

-- TECH CHANGES

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk01"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-2",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"mining-productivity-1"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-3",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk02", "mining-productivity-2"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-4",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk02", "mining-productivity-3"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-5",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk03", "mining-productivity-4"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-6",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk03", "mining-productivity-5"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-7",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk04", "mining-productivity-6"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-8",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk04", "mining-productivity-7"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-9",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk05", "mining-productivity-8"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-10",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"machines-mk05", "mining-productivity-9"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-11",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"mining-productivity-10"},
    unit =
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1},
            {"space-science-pack",      1}
        },
        time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
}

TECHNOLOGY {
    type = "technology",
    name = "mining-productivity-12",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        {
            type = "mining-drill-productivity-bonus",
            modifier = 0.1
        }
    },
    prerequisites = {"mining-productivity-11"},
    unit =
    {
        count_formula = "100*(L*1.2)",
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1},
            {"space-science-pack",      1}
        },
        time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
}

data.raw.technology["uranium-processing"].enabled = true
data.raw.technology["uranium-processing"].hidden = false
data.raw.technology["uranium-mining"].enabled = false
data.raw.technology["uranium-mining"].hidden = true

TECHNOLOGY("uranium-processing").research_trigger = nil
TECHNOLOGY("uranium-processing"):add_pack("py-science-pack-2")

TECHNOLOGY("kovarex-enrichment-process"):set_fields {enabled = false, hidden = true}

TECHNOLOGY("battery"):set_fields {enabled = false, hidden = true}

TECHNOLOGY("solar-energy"):set_fields {enabled = false, hidden = true}

TECHNOLOGY("speed-module-3"):add_pack("military-science-pack")
TECHNOLOGY("productivity-module-3"):add_pack("military-science-pack")
TECHNOLOGY("efficiency-module-3"):add_pack("military-science-pack")

TECHNOLOGY("advanced-material-processing-2"):set_fields {prerequisites = {}}:remove_pack("chemical-science-pack"):remove_pack("py-science-pack-3")

RECIPE("heat-pipe"):add_unlock("advanced-material-processing-2")
RECIPE("heat-exchanger"):add_unlock("advanced-material-processing-2")
RECIPE("steam-turbine"):add_unlock("advanced-material-processing-2"):replace_ingredient("super-steel", "stainless-steel")

RECIPE("assembling-machine-3"):remove_ingredient("small-parts-02"):add_ingredient {type = "item", name = "mechanical-parts-02", amount = 5}

--modify heat exchanger
--data.raw.boiler['heat-exchanger'].target_temperature = 500
data.raw.boiler["heat-exchanger"].energy_consumption = "125MW"
--data.raw.boiler['heat-exchanger'].energy_source.max_temperature = 2000
data.raw.boiler["heat-exchanger"].energy_source.specific_heat = "500MJ"
--data.raw.boiler['heat-exchanger'].energy_source.max_transfer = '8GW'

data.raw.generator["steam-turbine"].effectivity = 0.5
data.raw.generator["steam-turbine"].fluid_usage_per_tick = 1

RECIPE("electric-furnace"):remove_ingredient("super-steel")

RECIPE("solar-panel-equipment"):remove_ingredient("solar-panel")

if not mods.pystellarexpedition then
    for r, _ in pairs(data.raw.recipe) do
        RECIPE(r):replace_ingredient("solar-panel", "solar-panel-mk01")
    end
end

RECIPE("chemical-science-pack"):add_ingredient {type = "item", name = "nuclear-sample", amount = 1}:add_ingredient {type = "fluid", name = "organic-acid-anhydride", amount = 50}
RECIPE("chemical-science-pack"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 2}
RECIPE("chemical-science-pack"):replace_ingredient("tinned-cable", {type = "item", name = "small-parts-02", amount = 3})
RECIPE("chemical-science-pack"):set_fields {
    results = {
        {type = "item", name = "chemical-science-pack", amount = 12}
    },
    energy_required = 240
}

RECIPE("nuclear-reactor"):add_unlock("uranium-processing"):remove_ingredient("super-steel")

--modify reactor to produce very little energy
--data.raw.reactor['nuclear-reactor'].energy_source.effectivity = 0.2
--data.raw.reactor['nuclear-reactor'].heat_buffer.connections = nil

data.raw.technology["atomic-bomb"].prerequisites = {}
TECHNOLOGY("atomic-bomb"):add_prereq("uranium-processing")
data.raw.technology["atomic-bomb"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack",   1},
    {"py-science-pack-2",       1}
}

RECIPE("atomic-bomb"):replace_ingredient("fuelrod-mk01", "pu-239"):replace_ingredient("neuromorphic-chip", "controler-mk02")
RECIPE("uranium-rounds-magazine"):replace_ingredient("uranium-238", "u-238")
RECIPE("uranium-cannon-shell"):replace_ingredient("uranium-238", "u-238")
RECIPE("explosive-uranium-cannon-shell"):replace_ingredient("uranium-238", "u-238")
RECIPE("logistic-science-pack"):add_ingredient {type = "item", name = "battery-mk01", amount = 3}

RECIPE("inserter"):clear_ingredients():add_ingredient {type = "item", name = "burner-inserter", amount = 1}:add_ingredient {type = "item", name = "electronic-circuit", amount = 2}
    :add_ingredient {type = "item", name = "small-parts-01", amount = 3}:add_ingredient {type = "item", name = "duralumin", amount = 1}
RECIPE("long-handed-inserter"):set_fields {
    ingredients = {
        {type = "item", name = "inserter",           amount = 1},
        {type = "item", name = "electronic-circuit", amount = 1},
        {type = "item", name = "small-parts-01",     amount = 5},
        {type = "item", name = "belt",               amount = 1},
        {type = "item", name = "fenxsb-alloy",       amount = 1},
        {type = "item", name = "chromium",           amount = 10}
    },
    results = {{type = "item", name = "long-handed-inserter", amount = 2}},
    energy_required = 1
}

RECIPE("fast-inserter"):set_fields {
    ingredients = {
        {type = "item", name = "inserter",           amount = 1},
        {type = "item", name = "electronic-circuit", amount = 4},
        {type = "item", name = "belt",               amount = 1},
        {type = "item", name = "nbfe-alloy",         amount = 3},
        {type = "item", name = "vitreloy",           amount = 1},
        {type = "item", name = "small-parts-01",     amount = 10}
    },
    results = {{type = "item", name = "fast-inserter", amount = 1}},
    energy_required = 0.5
}

RECIPE("bulk-inserter"):set_fields {
    ingredients = {
        {type = "item", name = "fast-inserter",        amount = 1},
        {type = "item", name = "advanced-circuit",     amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 1},
        {type = "item", name = "small-parts-02",       amount = 1},
        {type = "item", name = "crmoni",               amount = 1},
    },
}

RECIPE("medium-electric-pole"):add_unlock("electric-energy-distribution-1"):remove_ingredient("niobium-plate"):remove_ingredient("nbfe-alloy"):add_ingredient {type = "item", name = "aluminium-plate", amount = 4}:add_ingredient {type = "item", name = "chromium", amount = 1}

RECIPE("big-electric-pole"):remove_unlock("electric-energy-distribution-1"):add_unlock("electric-energy-distribution-2"):add_ingredient {type = "item", name = "concrete", amount = 4}:replace_ingredient("copper-cable", "tinned-cable")

RECIPE("substation"):replace_ingredient("steel-plate", "stainless-steel"):remove_unlock("electric-energy-distribution-2"):add_unlock("electric-energy-distribution-4")

ITEM("uranium-235").hidden = true
ITEM("uranium-238").hidden = true
ITEM("battery").hidden = true

RECIPE("centrifuge"):remove_unlock("filtration"):set_fields {hidden = true}
ITEM("centrifuge").hidden = true
ENTITY("centrifuge", "assembling-machine").hidden = true

ITEM("speed-module").effect.consumption = 1.0
ITEM("speed-module-2").effect.consumption = 1.2
ITEM("speed-module-3").effect.consumption = 1.5

ITEM("productivity-module").effect.consumption = 1.2
ITEM("productivity-module-2").effect.consumption = 1.5
ITEM("productivity-module-3").effect.consumption = 2.0

ENTITY("beacon"):set_fields{energy_usage = "2MW", hidden = true, hidden_by_factoriopedia = true}

data.raw.tool["space-science-pack"].stack_size = 200

RECIPE {
    type = "recipe",
    name = "speed-module",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "utility-box-mk02", amount = 1},
        {type = "item", name = "controler-mk02",   amount = 1},
        {type = "item", name = "electronics-mk02", amount = 2}
    },
    energy_required = 15,
    results = {{type = "item", name = "speed-module", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "speed-module-2",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "speed-module",     amount = 1},
        {type = "item", name = "utility-box-mk03", amount = 1},
        {type = "item", name = "controler-mk03",   amount = 1},
        {type = "item", name = "electronics-mk03", amount = 2}
    },
    energy_required = 30,
    results = {{type = "item", name = "speed-module-2", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "speed-module-3",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "speed-module-2",   amount = 1},
        {type = "item", name = "utility-box-mk04", amount = 1},
        {type = "item", name = "controler-mk04",   amount = 1},
        {type = "item", name = "electronics-mk04", amount = 2},
        {type = "item", name = "fes",              amount = 1}
    },
    energy_required = 60,
    results = {{type = "item", name = "speed-module-3", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "efficiency-module",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "utility-box-mk02", amount = 1},
        {type = "item", name = "controler-mk02",   amount = 1},
        {type = "item", name = "electronics-mk02", amount = 2}
    },
    energy_required = 15,
    results = {{type = "item", name = "efficiency-module", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "efficiency-module-2",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "efficiency-module", amount = 1},
        {type = "item", name = "utility-box-mk03",  amount = 1},
        {type = "item", name = "controler-mk03",    amount = 1},
        {type = "item", name = "electronics-mk03",  amount = 2}
    },
    energy_required = 30,
    results = {{type = "item", name = "efficiency-module-2", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "efficiency-module-3",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "efficiency-module-2", amount = 1},
        {type = "item", name = "utility-box-mk04",    amount = 1},
        {type = "item", name = "controler-mk04",      amount = 1},
        {type = "item", name = "electronics-mk04",    amount = 2},
        {type = "item", name = "fes",                 amount = 1}
    },
    energy_required = 60,
    results = {{type = "item", name = "efficiency-module-3", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "productivity-module",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "utility-box-mk02", amount = 1},
        {type = "item", name = "controler-mk02",   amount = 1},
        {type = "item", name = "electronics-mk02", amount = 2}
    },
    energy_required = 15,
    results = {{type = "item", name = "productivity-module", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "productivity-module-2",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "productivity-module", amount = 1},
        {type = "item", name = "utility-box-mk03",    amount = 1},
        {type = "item", name = "controler-mk03",      amount = 1},
        {type = "item", name = "electronics-mk03",    amount = 2}
    },
    energy_required = 30,
    results = {{type = "item", name = "productivity-module-2", amount = 1}}
}

RECIPE {
    type = "recipe",
    name = "productivity-module-3",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "productivity-module-2", amount = 1},
        {type = "item", name = "utility-box-mk04",      amount = 1},
        {type = "item", name = "controler-mk04",        amount = 1},
        {type = "item", name = "electronics-mk04",      amount = 2},
        {type = "item", name = "fes",                   amount = 1}
    },
    energy_required = 60,
    results = {{type = "item", name = "productivity-module-3", amount = 1}}
}

if mods["quality"] then
    RECIPE {
        type = "recipe",
        name = "quality-module",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "utility-box-mk02", amount = 1},
            {type = "item", name = "controler-mk02",   amount = 1},
            {type = "item", name = "electronics-mk02", amount = 2}
        },
        energy_required = 15,
        results = {{type = "item", name = "quality-module", amount = 1}}
    }

    RECIPE {
        type = "recipe",
        name = "quality-module",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "utility-box-mk02", amount = 1},
            {type = "item", name = "controler-mk02",   amount = 1},
            {type = "item", name = "electronics-mk02", amount = 2}
        },
        energy_required = 15,
        results = {{type = "item", name = "quality-module", amount = 1}}
    }

    RECIPE {
        type = "recipe",
        name = "quality-module-2",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "quality-module",   amount = 1},
            {type = "item", name = "utility-box-mk03", amount = 1},
            {type = "item", name = "controler-mk03",   amount = 1},
            {type = "item", name = "electronics-mk03", amount = 2}
        },
        energy_required = 30,
        results = {{type = "item", name = "quality-module-2", amount = 1}}
    }

    RECIPE {
        type = "recipe",
        name = "quality-module-3",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "quality-module-2", amount = 1},
            {type = "item", name = "utility-box-mk04", amount = 1},
            {type = "item", name = "controler-mk04",   amount = 1},
            {type = "item", name = "electronics-mk04", amount = 2},
            {type = "item", name = "fes",              amount = 1}
        },
        energy_required = 60,
        results = {{type = "item", name = "quality-module-3", amount = 1}}
    }
end

data.raw.furnace["steel-furnace"].energy_usage = "6MW"
data.raw.furnace["steel-furnace"].crafting_speed = 4
data.raw.furnace["steel-furnace"].energy_source.type = "fluid"
data.raw.furnace["steel-furnace"].energy_source.destroy_non_fuel_fluid = false
data.raw.furnace["steel-furnace"].energy_source.burns_fluid = true
data.raw.furnace["steel-furnace"].energy_source.scale_fluid_usage = true
data.raw.furnace["steel-furnace"].energy_source.fluid_usage_per_tick = 2
data.raw.furnace["steel-furnace"].energy_source.fluid_box = {
    volume = 200,
    pipe_connections = {
        {flow_direction = "input-output", position = {0.5, 0.5},  direction = defines.direction.south},
        {flow_direction = "input-output", position = {0.5, -0.5}, direction = defines.direction.north}
    },
    pipe_covers = py.pipe_covers(false, true, true, true),
    pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
    production_type = "input",
}

data.raw["roboport"]["py-ze"].energy_usage = "350kW"
data.raw["roboport"]["py-ze-mk02"].energy_usage = "700kW"
data.raw["roboport"]["py-ze-mk03"].energy_usage = "1MW"
data.raw["roboport"]["py-ze-mk04"].energy_usage = "2MW"

RECIPE("py-ze-mk02"):remove_unlock("py-accumulator-mk02"):add_unlock("robotics"):replace_ingredient("iron-gear-wheel", "small-parts-02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}:add_ingredient {type = "item", name = "eva", amount = 20}
RECIPE("py-ze-mk03"):remove_unlock("py-accumulator-mk03"):add_unlock("advanced-robotics"):replace_ingredient("iron-gear-wheel", "small-parts-03"):add_ingredient {type = "item", name = "ns-material", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}:replace_ingredient("plastic-bar", "biopolymer"):add_ingredient {type = "item", name = "super-steel", amount = 15}:add_ingredient {type = "item", name = "cf", amount = 10}:add_ingredient {type = "item", name = "heavy-fermion", amount = 5}:add_ingredient {type = "item", name = "superconductor", amount = 3}
RECIPE("py-ze-mk04"):remove_unlock("kevlar-mk02"):add_unlock("ht-robotics"):add_ingredient {type = "item", name = "harmonic-absorber", amount = 4}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 2}:add_ingredient {type = "item", name = "intelligent-unit", amount = 1}:add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 1}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-04", amount = 1}

--mechanical-parts on vanilla stuff--
--RECIPE('train-stop'):add_ingredient { type = 'item', name = 'mechanical-parts-01', amount = 1 }
RECIPE("power-switch"):add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("electric-furnace"):add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("rocket-silo"):add_ingredient {type = "item", name = "mechanical-parts-02", amount = 4}
RECIPE("flying-robot-frame"):add_ingredient {type = "item", name = "mechanical-parts-01", amount = 2}
RECIPE("chemical-science-pack"):add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("space-science-pack"):add_ingredient {type = "item", name = "mechanical-parts-04", amount = 1}

RECIPE("light-armor"):set_fields {
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 20},
        {type = "item", name = "inductor1",      amount = 4},
        {type = "item", name = "steel-plate",    amount = 20},
    },
    enabled = false
}:add_unlock("steel-axe")
RECIPE("heavy-armor"):set_fields {
    ingredients = {
        {type = "item", name = "duralumin",          amount = 20},
        {type = "item", name = "titanium-plate",     amount = 40},
        {type = "item", name = "electronic-circuit", amount = 25},
        {type = "item", name = "plastic-bar",        amount = 10},
        {type = "item", name = "small-parts-01",     amount = 20},
        {type = "item", name = "latex-slab",         amount = 4},
        {type = "item", name = "intermetallics",     amount = 5}
    },
}
RECIPE("modular-armor"):set_fields {
    ingredients = {
        {type = "item",  name = "advanced-circuit",        amount = 55},
        {type = "item",  name = "electronics-mk02",        amount = 10},
        {type = "item",  name = "self-assembly-monolayer", amount = 10},
        {type = "item",  name = "mechanical-parts-02",     amount = 10},
        {type = "item",  name = "utility-box-mk02",        amount = 1},
        {type = "item",  name = "small-parts-01",          amount = 40},
        {type = "item",  name = "small-parts-02",          amount = 20},
        {type = "item",  name = "stainless-steel",         amount = 10},
        {type = "item",  name = "filtration-media",        amount = 2},
        {type = "item",  name = "kevlar",                  amount = 80},
        {type = "fluid", name = "molten-titanium",         amount = 400},
    },
    category = "crafting-with-fluid"
}
RECIPE("power-armor"):set_fields {
    ingredients = {
        {type = "item",  name = "processing-unit",       amount = 80},
        {type = "item",  name = "biobattery",            amount = 12},
        {type = "item",  name = "small-parts-01",        amount = 120},
        {type = "item",  name = "small-parts-02",        amount = 100},
        {type = "item",  name = "small-parts-03",        amount = 80},
        {type = "item",  name = "super-steel",           amount = 20},
        {type = "item",  name = "nanofibrils",           amount = 6},
        {type = "item",  name = "electronics-mk03",      amount = 20},
        {type = "item",  name = "mechanical-parts-03",   amount = 20},
        {type = "item",  name = "utility-box-mk03",      amount = 1},
        {type = "item",  name = "hydraulic-system-mk01", amount = 2},
        {type = "item",  name = "cooling-tower-mk02",    amount = 1},
        {type = "item",  name = "mositial-nx",           amount = 20},
        {type = "item",  name = "kevlar",                amount = 100},
        {type = "fluid", name = "molten-nexelit",        amount = 600},
    },
    category = "crafting-with-fluid"
}
RECIPE("power-armor-mk2"):set_fields {
    ingredients = {
        {type = "item",  name = "intelligent-unit",      amount = 115},
        {type = "item",  name = "quantum-battery",       amount = 12},
        {type = "item",  name = "supercapacitor",        amount = 12},
        {type = "item",  name = "small-parts-02",        amount = 100},
        {type = "item",  name = "small-parts-03",        amount = 120},
        {type = "item",  name = "electronics-mk04",      amount = 30},
        {type = "item",  name = "mechanical-parts-04",   amount = 30},
        {type = "item",  name = "utility-box-mk04",      amount = 1},
        {type = "item",  name = "hydraulic-system-mk02", amount = 2},
        {type = "item",  name = "cooling-tower-mk02",    amount = 1},
        {type = "item",  name = "sc-engine",             amount = 6},
        {type = "item",  name = "vacuum-pump-mk04",      amount = 2},
        {type = "item",  name = "ht-pipes",              amount = 10},
        {type = "item",  name = "metallic-glass",        amount = 20},
        {type = "item",  name = "nxzngd",                amount = 40},
        {type = "item",  name = "reduced-nexelit",       amount = 20},
        {type = "item",  name = "biopolymer",            amount = 115},
        {type = "item",  name = "beacon",                amount = 1},
        {type = "item",  name = "kevlar",                amount = 120},
        {type = "fluid", name = "molten-super-steel",    amount = 800},
    },
    category = "crafting-with-fluid"
}
RECIPE("fission-reactor-equipment"):set_fields {
    ingredients = {
        {type = "item", name = "low-density-structure", amount = 40},
        {type = "item", name = "gastrocapacitor",       amount = 10},
        {type = "item", name = "intelligent-unit",      amount = 20},
        {type = "item", name = "mechanical-parts-03",   amount = 10},
        {type = "item", name = "efficiency-module-3",   amount = 2},
        {type = "item", name = "blanket",               amount = 1},
        {type = "item", name = "divertor",              amount = 2},
        {type = "item", name = "big-electric-pole",     amount = 1},
        {type = "item", name = "biopolymer",            amount = 135},
    },
    category = "crafting"
}
RECIPE("personal-fusion-cell"):set_fields {
    ingredients = {
        {type = "item",  name = "sc-unit",                amount = 2},
        {type = "item",  name = "reinforced-wall-shield", amount = 1},
        {type = "item",  name = "cryocooler",             amount = 1},
        {type = "item",  name = "hts-coil",               amount = 8},
        {type = "item",  name = "super-alloy",            amount = 10},
        {type = "item",  name = "bioreceptor",            amount = 1},
        {type = "item",  name = "iron-nanoparticles",     amount = 2},
        {type = "item",  name = "small-parts-03",         amount = 10},
        {type = "item",  name = "kondo-processor",        amount = 1},
        {type = "item",  name = "medium-electric-pole",   amount = 1},
        {type = "fluid", name = "deuterium",              amount = 100},
        {type = "fluid", name = "tritium",                amount = 100},
    },
    category = "crafting-with-fluid"
}
RECIPE("personal-fusion-cell-refuel"):set_fields {
    ingredients = {
        {type = "item",  name = "personal-fusion-cell-used", amount = 1},
        {type = "fluid", name = "deuterium",                 amount = 100},
        {type = "fluid", name = "tritium",                   amount = 100},
    },
    category = "crafting-with-fluid"
}
RECIPE("belt-immunity-equipment"):set_fields {
    ingredients = {
        {type = "item", name = "brake-mk01",         amount = 1},
        {type = "item", name = "intermetallics",     amount = 5},
        {type = "item", name = "electronic-circuit", amount = 5},
    },
    category = "crafting"
}
RECIPE("night-vision-equipment"):set_fields {
    ingredients = {
        {type = "item", name = "lens",               amount = 2},
        {type = "item", name = "small-parts-01",     amount = 10},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "plastic-bar",        amount = 5},
    },
    category = "crafting"
}
RECIPE("personal-roboport-mk2-equipment"):set_fields {
    ingredients = {
        {type = "item", name = "py-ze",                       amount = 1},
        {type = "item", name = "small-parts-01",              amount = 10},
        {type = "item", name = "advanced-circuit",            amount = 5},
        {type = "item", name = "mechanical-parts-01",         amount = 2},
        {type = "item", name = "personal-roboport-equipment", amount = 5},
        {type = "item", name = "aluminium-plate",             amount = 20},
    },
    category = "crafting"
}
RECIPE("solar-panel-equipment"):set_fields {
    ingredients = {
        {type = "item", name = "solar-panel-mk01",     amount = 1},
        {type = "item", name = "plastic-bar",          amount = 5},
        {type = "item", name = "lithium",              amount = 10},
        {type = "item", name = "medium-electric-pole", amount = 1}
    },
    category = "crafting"
}
RECIPE("exoskeleton-equipment"):set_fields {
    ingredients = {
        {type = "item", name = "neuromorphic-chip",       amount = 1},
        {type = "item", name = "low-density-structure",   amount = 4},
        {type = "item", name = "hydraulic-system-mk02",   amount = 2},
        {type = "item", name = "mechanical-parts-03",     amount = 1},
        {type = "item", name = "sc-engine",               amount = 1},
        {type = "item", name = "brake-mk04",              amount = 1},
        {type = "item", name = "nano-mesh",               amount = 1},
        {type = "item", name = "gearbox-mk04",            amount = 1},
        {type = "item", name = "super-steel",             amount = 10},
        {type = "item", name = "processing-unit",         amount = 10},
        {type = "item", name = "metastable-quasicrystal", amount = 1},
        {type = "item", name = "small-parts-03",          amount = 30},
    },
    category = "crafting"
}

data.raw.technology["solar-panel-equipment"].prerequisites = {"solar-mk01", "modular-armor"}
data.raw.technology["night-vision-equipment"].prerequisites = {"personal-roboport-equipment"}
data.raw.technology["belt-immunity-equipment"].prerequisites = {"personal-roboport-equipment"}
data.raw.technology["exoskeleton-equipment"].prerequisites = {"bio-implants", "power-armor"}
data.raw.technology["fission-reactor-equipment"].prerequisites = {"power-armor", "fusion-mk02"}
data.raw.technology["personal-roboport-mk2-equipment"].prerequisites = {"solar-panel-equipment", "modular-armor", "personal-roboport-equipment"}

TECHNOLOGY("solar-panel-equipment"):add_pack("chemical-science-pack")
--TECHNOLOGY('night-vision-equipment'):remove_pack('logistic-science-pack'):add_pack('py-science-pack-1')
--TECHNOLOGY('belt-immunity-equipment'):remove_pack('logistic-science-pack'):add_pack('py-science-pack-1')
TECHNOLOGY("personal-roboport-mk2-equipment"):remove_pack("military-science-pack"):remove_pack("production-science-pack")
TECHNOLOGY("energy-shield-equipment"):add_pack("chemical-science-pack")

data.raw["movement-bonus-equipment"]["exoskeleton-equipment"].movement_bonus = 2
data.raw["movement-bonus-equipment"]["exoskeleton-equipment"].energy_consumption = "750kW"

data.raw.furnace["electric-furnace"].energy_usage = "10MW"
data.raw.furnace["electric-furnace"].crafting_speed = 8
if not mods.pystellarexpedition then
    data.raw.furnace["electric-furnace"].energy_source = {
        type = "heat",
        max_temperature = 1000,
        specific_heat = "1MJ",
        max_transfer = "2GW",
        min_working_temperature = 500,
        minimum_glow_temperature = 350,
        connections =
        {
            {
                position = {1.2, 0},
                direction = defines.direction.east
            },
            {
                position = {-1.2, 0},
                direction = defines.direction.west
            }
        },
        pipe_covers =
            make_4way_animation_from_spritesheet
            {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
                width = 64,
                height = 64,
                direction_count = 4,
                scale = 0.5
            },
        heat_pipe_covers =
            make_4way_animation_from_spritesheet(
                apply_heat_pipe_glow {
                    filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
                    width = 64,
                    height = 64,
                    direction_count = 4,
                    scale = 0.5
                }),
        heat_picture =
        {
            north = apply_heat_pipe_glow
                {
                    filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
                    priority = "extra-high",
                    width = 44,
                    height = 96,
                    shift = util.by_pixel(-0.5, 8.5),
                    scale = 0.5
                },
            east = apply_heat_pipe_glow
                {
                    filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
                    priority = "extra-high",
                    width = 80,
                    height = 80,
                    shift = util.by_pixel(-21, -13),
                    scale = 0.5
                },
            south = apply_heat_pipe_glow
                {
                    filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
                    priority = "extra-high",
                    width = 28,
                    height = 40,
                    shift = util.by_pixel(-1, -30),
                    scale = 0.5
                },
            west = apply_heat_pipe_glow
                {
                    filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
                    priority = "extra-high",
                    width = 64,
                    height = 76,
                    shift = util.by_pixel(23, -13),
                    scale = 0.5
                }
        }
    }
end

ITEM("space-science-pack", "tool"):set("icon", "__pyalternativeenergygraphics__/graphics/icons/space-science-pack.png")
ITEM("space-science-pack", "tool"):set("icon_size", 64)

data.raw.recipe["empty-boric-acid-barrel"].results[1].temperature = 10

RECIPE {
    type = "recipe",
    name = "nuclear-artillery-shell",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "gunpowder",                amount = 10},
        {type = "item", name = "piercing-rounds-magazine", amount = 1},
        {type = "item", name = "atomic-bomb",              amount = 1},
        {type = "item", name = "artillery-shell",          amount = 1},
        {type = "item", name = "nbti-alloy",               amount = 10},
        {type = "item", name = "super-steel",              amount = 20},
    },
    results = {
        {type = "item", name = "nuclear-artillery-shell", amount = 1},
    },
    main_product = "nuclear-artillery-shell",
}:add_unlock("artillery-2")

data:extend {
    {
        type = "ammo",
        name = "nuclear-artillery-shell",
        icon = "__pyalternativeenergygraphics__/graphics/icons/fatmanbomb_64.png",
        icon_size = 64,
        ammo_category = "artillery-shell",
        ammo_type =
        {
            category = "artillery-shell",
            target_type = "position",
            action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "artillery",
                    projectile = "nuclear-artillery-projectile",
                    starting_speed = 1,
                    direction_deviation = 0,
                    range_deviation = 0,
                    source_effects =
                    {
                        type = "create-explosion",
                        entity_name = "artillery-cannon-muzzle-flash"
                    }
                }
            }
        },
        subgroup = "ammo",
        order = "d[explosive-cannon-shell]-d[artillery]",
        stack_size = 1
    },
    {
        type = "artillery-projectile",
        name = "nuclear-artillery-projectile",
        hidden = true,
        flags = {"not-on-map"},
        reveal_map = true,
        map_color = {r = 1, g = 1, b = 0},
        picture =
        {
            filename = "__base__/graphics/entity/artillery-projectile/shell.png",
            draw_as_glow = true,
            width = 64,
            height = 64,
            scale = 0.5
        },
        shadow =
        {
            filename = "__base__/graphics/entity/artillery-projectile/shell-shadow.png",
            width = 64,
            height = 64,
            scale = 0.5
        },
        chart_picture =
        {
            filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
            flags = {"icon"},
            frame_count = 1,
            width = 64,
            height = 64,
            priority = "high",
            scale = 0.25
        },
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "set-tile",
                        tile_name = "nuclear-ground",
                        radius = 12,
                        apply_projection = true,
                        tile_collision_mask = {layers = {water_tile = true}}
                    },
                    {
                        type = "destroy-cliffs",
                        radius = 9,
                        explosion = "explosion"
                    },
                    {
                        type = "create-entity",
                        entity_name = "nuke-explosion"
                    },
                    {
                        type = "camera-effect",
                        effect = "screen-burn",
                        duration = 60,
                        ease_in_duration = 5,
                        ease_out_duration = 60,
                        delay = 0,
                        strength = 6,
                        full_strength_max_distance = 200,
                        max_distance = 800
                    },
                    {
                        type = "play-sound",
                        sound = sounds.nuclear_explosion(0.9),
                        play_on_target_position = false,
                        -- min_distance = 200,
                        max_distance = 1000,
                        -- volume_modifier = 1,
                    },
                    {
                        type = "play-sound",
                        sound = sounds.nuclear_explosion_aftershock(0.4),
                        play_on_target_position = false,
                        -- min_distance = 200,
                        max_distance = 1000,
                        -- volume_modifier = 1,
                    },
                    {
                        type = "damage",
                        damage = {amount = 400, type = "explosion"}
                    },
                    {
                        type = "create-entity",
                        entity_name = "huge-scorchmark",
                        offsets = {{0, -0.5}},
                        check_buildability = true
                    },
                    {
                        type = "invoke-tile-trigger",
                        repeat_count = 1
                    },
                    {
                        type = "destroy-decoratives",
                        include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                        include_decals = true,
                        invoke_decorative_trigger = true,
                        decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                        radius = 14                            -- large radius for demostrative purposes
                    },
                    {
                        type = "create-decorative",
                        decorative = "nuclear-ground-patch",
                        spawn_min_radius = 11.5,
                        spawn_max_radius = 12.5,
                        spawn_min = 30,
                        spawn_max = 40,
                        apply_projection = true,
                        spread_evenly = true
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            target_entities = false,
                            trigger_from_target = true,
                            repeat_count = 1000,
                            radius = 7,
                            action_delivery =
                            {
                                type = "projectile",
                                projectile = "atomic-bomb-ground-zero-projectile",
                                starting_speed = 0.6 * 0.8,
                                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                            }
                        }
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            target_entities = false,
                            trigger_from_target = true,
                            repeat_count = 1000,
                            radius = 35,
                            action_delivery =
                            {
                                type = "projectile",
                                projectile = "atomic-bomb-wave",
                                starting_speed = 0.5 * 0.7,
                                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                            }
                        }
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            show_in_tooltip = false,
                            target_entities = false,
                            trigger_from_target = true,
                            repeat_count = 1000,
                            radius = 26,
                            action_delivery =
                            {
                                type = "projectile",
                                projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                                starting_speed = 0.5 * 0.7,
                                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                            }
                        }
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            show_in_tooltip = false,
                            target_entities = false,
                            trigger_from_target = true,
                            repeat_count = 700,
                            radius = 4,
                            action_delivery =
                            {
                                type = "projectile",
                                projectile = "atomic-bomb-wave-spawns-fire-smoke-explosion",
                                starting_speed = 0.5 * 0.65,
                                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                            }
                        }
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            show_in_tooltip = false,
                            target_entities = false,
                            trigger_from_target = true,
                            repeat_count = 1000,
                            radius = 8,
                            action_delivery =
                            {
                                type = "projectile",
                                projectile = "atomic-bomb-wave-spawns-nuke-shockwave-explosion",
                                starting_speed = 0.5 * 0.65,
                                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                            }
                        }
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            show_in_tooltip = false,
                            target_entities = false,
                            trigger_from_target = true,
                            repeat_count = 300,
                            radius = 26,
                            action_delivery =
                            {
                                type = "projectile",
                                projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                                starting_speed = 0.5 * 0.65,
                                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                            }
                        }
                    },
                    {
                        type = "nested-result",
                        action =
                        {
                            type = "area",
                            show_in_tooltip = false,
                            target_entities = false,
                            trigger_from_target = true,
                            repeat_count = 10,
                            radius = 8,
                            action_delivery =
                            {
                                type = "instant",
                                target_effects =
                                {
                                    {
                                        type = "create-entity",
                                        entity_name = "nuclear-smouldering-smoke-source",
                                        tile_collision_mask = {layers = {water_tile = true}}
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        final_action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "create-entity",
                        entity_name = "medium-scorchmark-tintable",
                        check_buildability = true
                    },
                    {
                        type = "invoke-tile-trigger",
                        repeat_count = 1
                    },
                    {
                        type = "destroy-decoratives",
                        from_render_layer = "decorative",
                        to_render_layer = "object",
                        include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                        include_decals = false,
                        invoke_decorative_trigger = true,
                        decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                        radius = 3.5                           -- large radius for demostrative purposes
                    }
                }
            }
        },
        height_from_ground = 280 / 64
    }
}

data.raw["accumulator"]["accumulator"].energy_source.buffer_capacity = "150MJ"
data.raw["accumulator"]["accumulator"].energy_source.input_flow_limit = "1MW"
data.raw["accumulator"]["accumulator"].energy_source.output_flow_limit = "1MW"
