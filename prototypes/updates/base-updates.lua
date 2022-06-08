
-- TECH CHANGES
data.raw.technology['uranium-processing'].enabled = true
data.raw.technology['uranium-processing'].hidden = false

TECHNOLOGY('uranium-processing'):remove_pack('chemical-science-pack'):remove_prereq('chemical-science-pack')

TECHNOLOGY('chemical-science-pack'):add_prereq('nucleo')

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

RECIPE('chemical-science-pack'):add_ingredient({type = 'item', name = 'nuclear-sample', amount = 2})

RECIPE("nuclear-reactor"):add_unlock('uranium-processing'):remove_ingredient('super-steel')

--modify reactor to produce very little energy
data.raw.reactor["nuclear-reactor"].energy_source.effectivity = 0.2
data.raw.reactor["nuclear-reactor"].heat_buffer.connections = nil

TECHNOLOGY('atomic-bomb'):remove_prereq('domestication-mk02'):remove_prereq('uranium-mk03'):add_prereq('nucleo'):remove_pack('space-science-pack')

RECIPE('atomic-bomb'):replace_ingredient('fuelrod-mk01', 'pu-239'):replace_ingredient('neuromorphic-chip', 'control-unit')
RECIPE("uranium-rounds-magazine"):replace_ingredient("uranium-238", "u-238")
RECIPE("uranium-cannon-shell"):replace_ingredient("uranium-238", "u-238")
RECIPE("explosive-uranium-cannon-shell"):replace_ingredient("uranium-238", "u-238")
RECIPE("logistic-science-pack"):add_ingredient{type = "item", name = "battery-mk01", amount = 1}
RECIPE("heat-exchange"):add_unlock("uranium-processing")

RECIPE("inserter"):clear_ingredients():add_ingredient{"electronic-circuit", 2}:add_ingredient{"small-parts-01", 3}:add_ingredient{"duralumin", 1}
RECIPE("long-handed-inserter"):add_ingredient("chromium"):replace_ingredient("iron-plate", "fenxsb-alloy")
RECIPE("fast-inserter"):set_fields{
    ingredients = {
        {"inserter", 5},
        {"gearbox-mk01", 1},
        {"electronics-mk01", 1},
        {"controler-mk01", 1},
        {"intermetallics", 2},
        {"belt", 2},
        {"small-parts-01", 5}
    },
    result_count = 5,
    energy_required = 5
}
RECIPE("automated-factory-mk01"):replace_ingredient("fast-inserter", "inserter")
RECIPE("filter-inserter"):replace_ingredient("duralumin", {"intermetallics", 1}):replace_ingredient("electronic-circuit", {"electronics-mk01", 1})


ITEM("uranium-235"):add_flag("hidden")
ITEM("uranium-238"):add_flag("hidden")
ITEM("battery"):add_flag("hidden")

data.raw.boiler['heat-exchanger'].target_temperature = 500
data.raw.boiler['heat-exchanger'].energy_consumption = "122.22MW"

RECIPE("centrifuge"):remove_unlock("kicalk-mk02"):set_fields{hidden = true}
