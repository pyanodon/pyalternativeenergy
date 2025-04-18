data.raw.fluid["pressured-steam"].heat_capacity = "8kJ"

RECIPE("nuclear-sample"):replace_ingredient("plutonium", {type = "item", name = "pu-238", amount = 1}):remove_unlock("production-science-pack"):add_unlock("chemical-science-pack")

-- TECHNOLOGY('diamond-mining'):remove_pack('chemical-science-pack'):remove_pack('py-science-pack-2'):remove_prereq('excavation-2'):add_prereq('machines-mk02'):remove_prereq('filtration-mk02')
TECHNOLOGY("kovarex-enrichment-process-2"):set_fields {enabled = false, hidden = true}

TECHNOLOGY("helium-processing"):remove_pack("production-science-pack")
TECHNOLOGY("boron-mk02"):remove_pack("production-science-pack")

RECIPE("grease-table-mk01"):remove_unlock("diamond-mining"):add_unlock("machines-mk03")
RECIPE("py-turbine"):remove_unlock("fusion-mk01")
RECIPE("lead-container"):replace_ingredient("lead-plate", {type = "item", name = "pbsb-alloy", amount = 4})
RECIPE("methyl-acrylate"):remove_unlock("ethanolamine"):add_unlock("acrylic")

--BUILDINDS--
RECIPE("particle-accelerator-mk01"):remove_ingredient("gasturbinemk02")
RECIPE("py-turbine"):remove_ingredient("gasturbinemk03") -- TODO: replace with something

RECIPE("automated-screener-mk01"):remove_unlock("machines-mk01"):add_unlock("copper-mk01")
RECIPE("agitator-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 5}
RECIPE("nmf-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 5}
RECIPE("secondary-crusher-mk01"):remove_unlock("machines-mk01"):add_unlock("crusher-2") --:add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("thickener-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 7}
RECIPE("gas-separator-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 10}
RECIPE("hydrocyclone-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 10}:remove_unlock("vanadium-processing"):add_unlock("iron-mk02")
--RECIPE("automated-screener-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("centrifugal-pan-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 10}
RECIPE("compressor-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 6}
RECIPE("jig-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 5}
RECIPE("grease-table-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 7}
RECIPE("mixer-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 5}
RECIPE("py-heat-exchanger"):add_ingredient {type = "item", name = "intermetallics", amount = 5}:replace_ingredient("niobium-pipe", "pipe"):remove_unlock("machines-mk02"):add_unlock("nonrenewable-mk01"):add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}:remove_ingredient("py-asphalt")


RECIPE("agitator-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("vacuum-pump-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("nmf-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("secondary-crusher-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 8}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("diamond-mine"):replace_ingredient("advanced-circuit", "electronic-circuit"):add_ingredient {type = "item", name = "mechanical-parts-02", amount = 2}
RECIPE("thickener-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 7}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("gas-separator-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("hydrocyclone-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("automated-screener-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("centrifugal-pan-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("compressor-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 6}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("jig-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("grease-table-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 7}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("mixer-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("py-heat-exchanger-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}

RECIPE("agitator-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("vacuum-pump-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("mo-mine"):add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("nmf-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("secondary-crusher-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 8}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("thickener-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 7}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("gas-separator-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("hydrocyclone-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("automated-screener-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("centrifugal-pan-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("regolite-mine"):add_ingredient {type = "item", name = "ns-material", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 2}
RECIPE("compressor-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 6}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("jig-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("grease-table-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 7}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("mixer-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("py-heat-exchanger-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}
RECIPE("fusion-reactor-mk01"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 5}

RECIPE("agitator-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("vacuum-pump-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 2}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("nmf-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("secondary-crusher-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 8}:add_ingredient {type = "item", name = "sc-engine", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("thickener-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 7}:add_ingredient {type = "item", name = "sc-engine", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("gas-separator-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 10}:add_ingredient {type = "item", name = "sc-engine", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("hydrocyclone-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 10}:add_ingredient {type = "item", name = "sc-engine", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("automated-screener-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 3}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("centrifugal-pan-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 10}:add_ingredient {type = "item", name = "sc-engine", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("compressor-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 6}:add_ingredient {type = "item", name = "sc-engine", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("jig-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("grease-table-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 7}:add_ingredient {type = "item", name = "sc-engine", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("mixer-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("fusion-reactor-mk02"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-04", amount = 5}
RECIPE("py-heat-exchanger-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 1}

RECIPE("centrifuge-mk03"):add_ingredient {type = "item", name = "nbti-alloy", amount = 50}:add_ingredient {type = "item", name = "py-heat-exchanger", amount = 1}
RECIPE("centrifuge-mk04"):add_ingredient {type = "item", name = "wall-shield", amount = 5}:add_ingredient {type = "item", name = "science-coating", amount = 10}:add_ingredient {type = "item", name = "control-unit", amount = 5}

--RECIPES

RECIPE("control-unit"):add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}:replace_ingredient("fuelrod-mk01", "fuelrod-mk02")
RECIPE("sc-unit"):add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("blanket"):add_ingredient {type = "item", name = "lithium", amount = 5}
RECIPE("magnetic-core"):add_ingredient {type = "item", name = "battery", amount = 1}
RECIPE("sc-unit"):add_ingredient {type = "item", name = "hts-coil", amount = 6}
RECIPE("production-science-pack"):add_ingredient {type = "item", name = "ns-material", amount = 1}

RECIPE("purified-air"):remove_unlock("semiconductor-doping-mk02"):add_unlock("helium-processing")
RECIPE("cool-air"):remove_unlock("semiconductor-doping-mk02"):add_unlock("helium-processing")
RECIPE("cold-clean-air"):remove_unlock("semiconductor-doping-mk02"):add_unlock("helium-processing")
RECIPE("liquid-pure-air"):remove_unlock("semiconductor-doping-mk02"):add_unlock("helium-processing")

RECIPE("dt-fusion"):replace_result("critical-steam", "neutron", 1000)
RECIPE("dt-fusion"):remove_ingredient("pressured-water")
RECIPE("dt-he3"):replace_result("critical-steam", "neutron", 1000)
RECIPE("dt-he3"):remove_ingredient("pressured-water")
RECIPE("b-h"):replace_result("critical-steam", "neutron", 1000)
RECIPE("b-h"):remove_ingredient("pressured-water")
RECIPE("antimatter-fusion"):replace_result("critical-steam", "neutron", 1000)
RECIPE("antimatter-fusion"):remove_ingredient("pressured-water")

RECIPE("steam-exchange1"):remove_unlock("fusion-mk01")
RECIPE("steam-exchange2"):remove_unlock("fusion-mk02")
RECIPE("steam-exchange3"):remove_unlock("fusion-mk03")
RECIPE("steam-exchange4"):remove_unlock("fusion-mk04")
RECIPE("steam-exchange5"):remove_unlock("fusion-mk04"):add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "fusion-reactor-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "refined-concrete", amount = 10000},
        {type = "item", name = "stainless-steel",  amount = 5000},
        {type = "item", name = "blanket",          amount = 440},
        {type = "item", name = "divertor",         amount = 54},
        {type = "item", name = "sc-unit",          amount = 2500},
        {type = "item", name = "wall-shield",      amount = 9000}
    },
    results = {
        {type = "item", name = "fusion-reactor-mk01", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "fusion-reactor-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "fusion-reactor-mk01",    amount = 2},
        {type = "item", name = "reinforced-wall-shield", amount = 2000},
    },
    results = {
        {type = "item", name = "fusion-reactor-mk02", amount = 1}
    },
}

RECIPE("d2o-distilation"):remove_unlock("fusion-mk01"):set_fields {hidden = true}
RECIPE("heavy-water"):remove_unlock("fusion-mk01"):set_fields {hidden = true}


data.raw["assembling-machine"]["fusion-reactor-mk02"].crafting_categories = {"fusion-01", "fusion-02"}

RECIPE {
    type = "recipe",
    name = "liquid-helium",
    category = "compressor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "helium",   amount = 100},
        {type = "fluid", name = "water",    amount = 600},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-helium", amount = 10},
        {type = "fluid", name = "steam",         amount = 600, temperature = 150}
    },
    main_product = "liquid-helium",
}

--Girdler sulfide process

--TODO: replace heavy wetter production with new process. hot water and hydrogen sulfide (hydrogen with sulfur: h2s) go in one side to make fat acid gas and fat acid gas will combine with cold water to make enriched water. enriched water with get vacuum distilled into water and heavy water. heavy water can be run though a electrolysiser to seperate deuterium and oxygen

--water + phosphorus pentasulfide = hydrogen sulfide + phosphoric acid
--P4S10 + 16 H2O → 4 H3PO4 + 10 H2S

RECIPE {
    type = "recipe",
    name = "hydrogen-sulfide",
    category = "chemistry",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item",  name = "p2s5",  amount = 20},
        {type = "fluid", name = "water", amount = 160}
    },
    results = {
        {type = "fluid", name = "phosphoric-acid",  amount = 80},
        {type = "fluid", name = "hydrogen-sulfide", amount = 200}
    },
    main_product = "hydrogen-sulfide"
}:add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "deuterium-sulfide",
    category = "gas-separator",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "water",            amount = 500, minimum_temperature = 150, ignored_by_stats = 480},
        {type = "fluid", name = "hydrogen-sulfide", amount = 400}
    },
    results = {
        {type = "fluid", name = "water",             amount = 480, temperature = 125, ignored_by_stats = 480, ignored_by_productivity = 480},
        {type = "fluid", name = "deuterium-sulfide", amount = 400}
    },
    main_product = "deuterium-sulfide"
}:add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "enriched-water",
    category = "compressor",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "deuterium-sulfide", amount = 200},
        {type = "fluid", name = "water",             amount = 1000, maximum_temperature = 101}
    },
    results = {
        {type = "fluid", name = "enriched-water",   amount = 1000},
        {type = "fluid", name = "hydrogen-sulfide", amount = 160},
    },
    main_product = "enriched-water"
}:add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "enriched-water-distillation",
    category = "distilator",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "vacuum",         amount = 400},
        {type = "fluid", name = "enriched-water", amount = 200}
    },
    results = {
        {type = "fluid", name = "water",       amount = 175, temperature = 125},
        {type = "fluid", name = "heavy-water", amount = 25},
    },
    main_product = "heavy-water"
}:add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "deuterium",
    category = "electrolyzer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "heavy-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "deuterium", amount = 200},
        {type = "fluid", name = "oxygen",    amount = 100}
    },
    main_product = "deuterium"
}:add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "dt-fusion",
    category = "fusion-01",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item",  name = "lithium",         amount = 2},
        {type = "fluid", name = "water",           amount = 10000},
        {type = "fluid", name = "deuterium",       amount = 50},
        {type = "fluid", name = "tritium",         amount = 50,   ignored_by_stats = 50},
        {type = "fluid", name = "liquid-nitrogen", amount = 30}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 10000, temperature = 5000},
        {type = "fluid", name = "helium",         amount = 100},
        {type = "fluid", name = "tritium",        amount = 60.1,  ignored_by_stats = 50, ignored_by_productivity = 50},
        {type = "fluid", name = "nitrogen",       amount = 250},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-dt.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}:remove_unlock("fusion-mk02"):add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "deuterium-fusion",
    category = "fusion-01",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium",       amount = 100},
        {type = "fluid", name = "pressured-water", amount = 10000},
        {type = "fluid", name = "liquid-helium",   amount = 30},
    },
    results = {
        {type = "fluid", name = "neutron", amount = 5000, temperature = 2000},
        {type = "fluid", name = "helium",  amount = 150},
        {type = "fluid", name = "tritium", amount = 50},
        {type = "fluid", name = "helium3", amount = 50},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-deuterium.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}:remove_unlock("fusion-mk01"):add_unlock("fusion-mk02")

RECIPE {
    type = "recipe",
    name = "dt-he3",
    category = "fusion-02",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium",     amount = 50},
        {type = "fluid", name = "helium3",       amount = 50},
        {type = "fluid", name = "liquid-helium", amount = 35}
    },
    results = {
        {type = "fluid", name = "neutron", amount = 7500, temperature = 3000},
        {type = "fluid", name = "helium",  amount = 175},
        {type = "fluid", name = "proton",  amount = 20},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-he3.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}

RECIPE {
    type = "recipe",
    name = "b-h",
    category = "fusion-02",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "proton",        amount = 20},
        {type = "item",  name = "boron",         amount = 20},
        {type = "fluid", name = "liquid-helium", amount = 10}
    },
    results = {
        {type = "fluid", name = "neutron", amount = 10000, temperature = 4000},
        {type = "fluid", name = "helium",  amount = 160}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-bh.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}

RECIPE("antimatter-fusion"):remove_unlock("fusion-mk04")

--[[ removed for total rebuild in pysex
RECIPE {
    type = 'recipe',
    name = 'antimatter-fusion',
    category = 'fusion-02',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'antimatter', amount = 1},
        {type = 'fluid', name = 'liquid-helium', amount = 100},
        {type = 'fluid', name = 'water', amount = 5000}
    },
    results = {
        {type = 'fluid', name = 'neutron', amount = 1000, temperature = 5000},
        {type = 'fluid', name = 'helium', amount = 500},
        {type = 'fluid', name = 'steam', amount = 5000, temperature = 150, ignored_by_productivity = 5000, ignored_by_stats = 5000}
    },
    --main_product= "blanket",
    icon = '__pyhightechgraphics__/graphics/icons/fusion-antimatter.png',
    icon_size = 32,
    subgroup = 'py-fusion-items',
    order = 'e',
    show_details_in_recipe_tooltip = false
}
]] --

--pyFE--
data.raw["assembling-machine"]["agitator-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["agitator-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["agitator-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["agitator-mk04"].energy_usage = "4MW"
data.raw["assembling-machine"]["automated-screener-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["automated-screener-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["automated-screener-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["compressor-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["compressor-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["compressor-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["gas-separator-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["gas-separator-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["gas-separator-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["genlab-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["genlab-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["genlab-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["grease-table-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["grease-table-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["grease-table-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["grease-table-mk04"].energy_usage = "4MW"
data.raw["assembling-machine"]["hydrocyclone-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["hydrocyclone-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["hydrocyclone-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["hydrocyclone-mk04"].energy_usage = "4MW"
data.raw["assembling-machine"]["jig-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["jig-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["jig-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["jig-mk04"].energy_usage = "4MW"
data.raw["assembling-machine"]["kmauts-enclosure-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["kmauts-enclosure-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["kmauts-enclosure-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["kmauts-enclosure-mk04"].energy_usage = "4MW"
data.raw["assembling-machine"]["mixer-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["mixer-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["mixer-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["mixer-mk04"].energy_usage = "4MW"
data.raw["assembling-machine"]["nmf-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["nmf-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["nmf-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["nmf-mk04"].energy_usage = "4MW"
data.raw["assembling-machine"]["plankton-farm-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["plankton-farm-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["plankton-farm-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["secondary-crusher-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["secondary-crusher-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["secondary-crusher-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["thickener-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["thickener-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["thickener-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["xyhiphoe-pool-mk01"].energy_usage = "1MW"
data.raw["assembling-machine"]["xyhiphoe-pool-mk02"].energy_usage = "2MW"
data.raw["assembling-machine"]["xyhiphoe-pool-mk03"].energy_usage = "3MW"
data.raw["assembling-machine"]["xyhiphoe-pool-mk04"].energy_usage = "4MW"
