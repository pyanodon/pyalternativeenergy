
-- TECH CHANGES
data.raw.technology['uranium-processing'].enabled = true
data.raw.technology['uranium-processing'].hidden = false

TECHNOLOGY('uranium-processing'):remove_pack('chemical-science-pack'):remove_prereq('chemical-science-pack'):add_pack("py-science-pack-2")

TECHNOLOGY("kovarex-enrichment-process"):set_fields({enabled = false, hidden = true})

TECHNOLOGY("battery"):set_fields({enabled = false, hidden = true})

TECHNOLOGY("solar-energy"):set_fields({enabled = false, hidden = true})

TECHNOLOGY("speed-module-3"):add_pack("military-science-pack")
TECHNOLOGY("productivity-module-3"):add_pack("military-science-pack")
TECHNOLOGY("effectivity-module-3"):add_pack("military-science-pack")


RECIPE("solar-panel-equipment"):remove_ingredient("solar-panel")

for r, _ in pairs(data.raw.recipe) do
    RECIPE(r):replace_ingredient("solar-panel", "solar-panel-mk01")
end

RECIPE('chemical-science-pack'):add_ingredient({type = 'item', name = 'nuclear-sample', amount = 1})
RECIPE("chemical-science-pack"):replace_ingredient("nexelit-plate", {type = "item", name = "self-assembly-monolayer", amount = 2})
RECIPE("chemical-science-pack"):replace_ingredient("tinned-cable", {type = "item", name = "small-parts-02", amount = 3})
RECIPE("chemical-science-pack"):set_fields {
    results = {
        {type = "item", name = "chemical-science-pack", amount = 12}
    },
    energy_required = 240
}

RECIPE("nuclear-reactor"):add_unlock('uranium-processing'):remove_ingredient('super-steel')

--modify reactor to produce very little energy
data.raw.reactor["nuclear-reactor"].energy_source.effectivity = 0.2
data.raw.reactor["nuclear-reactor"].heat_buffer.connections = nil

TECHNOLOGY('atomic-bomb'):remove_prereq('domestication-mk02'):remove_prereq('uranium-mk03'):add_prereq('nucleo'):remove_pack('space-science-pack')

RECIPE('atomic-bomb'):replace_ingredient('fuelrod-mk01', 'pu-239'):replace_ingredient('neuromorphic-chip', 'control-unit')
RECIPE("uranium-rounds-magazine"):replace_ingredient("uranium-238", "u-238")
RECIPE("uranium-cannon-shell"):replace_ingredient("uranium-238", "u-238")
RECIPE("explosive-uranium-cannon-shell"):replace_ingredient("uranium-238", "u-238")
RECIPE("logistic-science-pack"):add_ingredient{type = "item", name = "battery-mk01", amount = 3}
RECIPE("heat-exchange"):add_unlock("uranium-processing")

RECIPE("inserter"):clear_ingredients():add_ingredient{"burner-inserter", 1}:add_ingredient{"electronic-circuit", 2}:add_ingredient{"small-parts-01", 3}:add_ingredient{"duralumin", 1}
RECIPE("long-handed-inserter"):set_fields {
    ingredients = {
        {"inserter", 1},
        {"electronic-circuit", 1},
        {"small-parts-01", 5},
        {"belt", 1},
        {"fenxsb-alloy", 1},
        {"chromium", 10}
    },
    result_count = 2,
    energy_required = 1
}

RECIPE("fast-inserter"):set_fields{
    ingredients = {
        {"inserter", 1},
        {"electronic-circuit", 4},
        {"belt", 1},
        {"nbfe-alloy", 3},
        {"vitreloy", 1},
        {"small-parts-01", 10}
    },
    result_count = 1,
    energy_required = 0.5
}

RECIPE("stack-inserter"):set_fields{
    ingredients = {
        {"fast-inserter", 1},
        {"advanced-circuit", 1},
        {"electric-engine-unit", 1},
        {"small-parts-02", 1},
        {"crmoni", 1},
    },
}

RECIPE("stack-filter-inserter"):set_fields{
    ingredients = {
        {"stack-inserter", 1},
        {"advanced-circuit", 1},
        {"electronics-mk01", 5},
        {"stainless-steel", 10},
    },
}

RECIPE("filter-inserter"):replace_ingredient("duralumin", {"intermetallics", 1}):replace_ingredient("electronic-circuit", {"electronics-mk01", 1})

ITEM("uranium-235"):add_flag("hidden")
ITEM("uranium-238"):add_flag("hidden")
ITEM("battery"):add_flag("hidden")

data.raw.boiler['heat-exchanger'].target_temperature = 500
data.raw.boiler['heat-exchanger'].energy_consumption = "122.22MW"

RECIPE("centrifuge"):remove_unlock("filtration"):set_fields{hidden = true}
ITEM("centrifuge"):add_flag("hidden")
ENTITY("centrifuge", "assembling-machine"):add_flag("hidden")
