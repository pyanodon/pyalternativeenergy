--TECHNOLOGY--
TECHNOLOGY("quantum-processor"):add_prereq("photonics"):add_prereq("battery-mk04"):add_prereq("mof"):add_prereq("nano-mesh"):add_prereq("biofet")
TECHNOLOGY("ht-robotics"):add_prereq("advanced-robotics")
TECHNOLOGY("microfibers"):remove_pack("production-science-pack")
TECHNOLOGY("ethylene"):remove_pack("chemical-science-pack")
TECHNOLOGY("re-magnet"):remove_pack("production-science-pack")
TECHNOLOGY("earnshaw-theorem"):add_pack("military-science-pack")
TECHNOLOGY("quantum-processor"):add_pack("military-science-pack")
TECHNOLOGY("schrodinger-antelope"):add_pack("military-science-pack")

--BUILDINDS--
if RECIPE["quantum-computer"] then
    RECIPE["quantum-computer"]
        :remove_ingredient("gasturbinemk03")
        :add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 50}
        :add_ingredient {type = "item", name = "sc-engine", amount = 10}
        :add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
        :add_ingredient {type = "item", name = "mechanical-parts-04", amount = 10}
end

--RECIPE("clay-pit-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
-- RECIPE("chipshooter-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
-- RECIPE("pcb-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
--RECIPE("fbreactor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("particle-accelerator-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 20}:remove_ingredient("electric-engine-unit"):add_ingredient {type = "item", name = "electric-engine-unit", amount = 20}:add_ingredient {type = "item", name = "steel-plate", amount = 500}:add_ingredient {type = "item", name = "copper-cable", amount = 1000}:remove_unlock("nucleo"):add_unlock("uranium-processing")
-- RECIPE("electronics-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 1})
-- RECIPE("pulp-mill-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("nano-assembler-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 15}
RECIPE("py-recharge-station-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 5}
RECIPE("py-roboport-mk02"):add_ingredient {type = "item", name = "nexelit-battery", amount = 2}
RECIPE("phosphate-mine"):add_ingredient {type = "item", name = "intermetallics", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 2}
RECIPE("rare-earth-mine"):add_ingredient {type = "item", name = "intermetallics", amount = 10}

RECIPE("clay-pit-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("chipshooter-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("pcb-factory-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("fbreactor-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("particle-accelerator-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 20}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("electronics-factory-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("pulp-mill-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("nano-assembler-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 15}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}
RECIPE("phosphate-mine-02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 15}:add_ingredient {type = "item", name = "crco-alloy", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-01", amount = 1}

RECIPE("clay-pit-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("chipshooter-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("pcb-factory-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("fbreactor-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("particle-accelerator-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 20}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("electronics-factory-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("pulp-mill-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}
RECIPE("nano-assembler-mk03"):add_ingredient {type = "item", name = "ns-material", amount = 15}:add_ingredient {type = "item", name = "mechanical-parts-02", amount = 1}

RECIPE("clay-pit-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 3}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("chipshooter-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 2}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("pcb-factory-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 10}:add_ingredient {type = "item", name = "sc-engine", amount = 3}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("fbreactor-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("particle-accelerator-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 20}:add_ingredient {type = "item", name = "sc-engine", amount = 10}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("electronics-factory-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 1}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("pulp-mill-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 5}:add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
RECIPE("nano-assembler-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 15}:add_ingredient {type = "item", name = "sc-engine", amount = 4}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1}
if RECIPE["blackhole"] then RECIPE("blackhole"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 15}:add_ingredient {type = "item", name = "sc-engine", amount = 4}:add_ingredient {type = "item", name = "mechanical-parts-03", amount = 1} end

RECIPE("solar-panel-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 50}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 20}
RECIPE("solar-panel-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 10}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 20}

RECIPE("centrifuge-mk03"):add_ingredient {type = "item", name = "re-magnet", amount = 100}:add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "sc-engine", amount = 3}
RECIPE("centrifuge-mk04"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}:add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 20}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 30}

RECIPE("py-oil-powerplant-mk03"):add_ingredient {type = "item", name = "re-magnet", amount = 40}:add_ingredient {type = "item", name = "milfe", amount = 20}
RECIPE("py-oil-powerplant-mk04"):add_ingredient {type = "item", name = "phosphate-glass", amount = 100}:add_ingredient {type = "item", name = "nems", amount = 20}:add_ingredient {type = "item", name = "sc-engine", amount = 3}

-----RECIPES-----
RECIPE("oxalic-acid"):replace_ingredient("sulfuric-acid", "cyanic-acid")
RECIPE("dbr"):add_ingredient {type = "item", name = "nanocrystaline-core", amount = 1}
RECIPE("yag-laser-module"):add_ingredient {type = "item", name = "erbium", amount = 1}
RECIPE("nems"):add_ingredient {type = "item", name = "nanozymes", amount = 1}
RECIPE("heavy-n"):add_ingredient {type = "fluid", name = "sb-pulp-02", amount = 200}

RECIPE("pa-uranium-235"):remove_unlock("nucleo-mk03")
RECIPE("pa-aromatics"):remove_unlock("nucleo")
RECIPE("pa-benzene"):remove_unlock("nucleo")
RECIPE("pa-propene"):remove_unlock("nucleo")
RECIPE("pa-coal"):remove_unlock("nucleo")

RECIPE("sodium-silicate"):remove_unlock("colloidal-silica"):add_unlock {"silicon-mk01"}
RECIPE("quantum-dots"):remove_unlock("space-science-pack"):add_unlock {"quantum-processor"}
RECIPE("silica-powder"):remove_unlock("colloidal-silica"):add_unlock {"silicon-mk01"}
RECIPE("saline-water"):remove_unlock("electrolysis"):add_unlock("electronics")
RECIPE("electronic-circuit"):add_ingredient {type = "item", name = "battery-mk00", amount = 1}
RECIPE("electronic-circuit"):set_fields {results = {{type = "item", name = "electronic-circuit", amount = 3}}}
local recipe = table.deepcopy(data.raw.recipe["electronic-circuit"])
recipe.name = "electronic-circuit-2"
recipe.results = {{type = "item", name = "electronic-circuit", amount = 5}}
data:extend {recipe}
RECIPE("electronic-circuit-2"):replace_ingredient("battery-mk00", "battery-mk01"):add_unlock("battery-mk01")

RECIPE("intelligent-unit"):add_ingredient {type = "item", name = "quantum-battery", amount = 2}:add_ingredient {type = "item", name = "photonic-chip", amount = 1}:add_ingredient {type = "item", name = "biofet", amount = 3}
RECIPE("nanochip"):add_ingredient {type = "item", name = "quantum-dots", amount = 2}:add_ingredient {type = "item", name = "quantum-well", amount = 2}:add_ingredient {type = "item", name = "nano-wires", amount = 2}
RECIPE("kondo-processor"):add_ingredient {type = "item", name = "nano-wires", amount = 3}
RECIPE("pi-josephson-junction"):add_ingredient {type = "item", name = "mqdc", amount = 1}:add_ingredient {type = "item", name = "time-crystal", amount = 1}:add_ingredient {type = "item", name = "conductive-sheet", amount = 4}
RECIPE("kondo-core"):add_ingredient {type = "item", name = "gaas", amount = 1}:add_ingredient {type = "item", name = "heavy-p-type", amount = 10}:add_ingredient {type = "item", name = "light-n", amount = 10}
RECIPE("nanocrystaline-core"):remove_unlock("quantum-processor"):add_unlock("battery-mk04")
RECIPE("crco-alloy"):remove_unlock("alloys-mk04"):add_unlock("alloys-mk03")
RECIPE("hotair-crco-alloy"):remove_unlock("alloys-mk04"):add_unlock("alloys-mk03")

RECIPE("personal-roboport-equipment"):add_ingredient {type = "item", name = "intermetallics", amount = 12}
RECIPE("portable-gasoline-generator"):add_ingredient {type = "item", name = "intermetallics", amount = 8}
RECIPE("py-construction-robot-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 3}
RECIPE("py-logistic-robot-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 5}
RECIPE("py-construction-robot-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 3}
RECIPE("py-logistic-robot-mk02"):add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}
RECIPE("py-construction-robot-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 2}:replace_ingredient("py-construction-robot-mk02", "py-construction-robot-mk03")
RECIPE("py-logistic-robot-mk04"):add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 2}:replace_ingredient("py-logistic-robot-mk02", "py-logistic-robot-mk03")
RECIPE("lithium-chloride"):remove_ingredient("reo"):add_ingredient {type = "item", name = "lithium-hydroxide", amount = 1}
RECIPE("nexelit-battery"):remove_unlock("py-accumulator-mk01"):add_unlock {"battery-mk02"}
RECIPE("nanochip"):add_ingredient {type = "item", name = "milfe", amount = 1}
RECIPE("carbon-nanotube"):add_ingredient {type = "item", name = "milfe", amount = 1}.results[1].amount = 5
RECIPE("parametric-oscilator"):add_ingredient {type = "item", name = "milfe", amount = 1}
RECIPE("quantum-well"):add_ingredient {type = "item", name = "milfe", amount = 1}
RECIPE("quantum-dots"):add_ingredient {type = "item", name = "milfe", amount = 1}
RECIPE("harmonic-absorber"):add_ingredient {type = "item", name = "cf", amount = 30}
RECIPE("var-josephson-junction"):add_ingredient {type = "item", name = "cf", amount = 30}:add_ingredient {type = "item", name = "photonic-crystal", amount = 1}:add_ingredient {type = "item", name = "gd-metal", amount = 1}
RECIPE("paradiamatic-resistor"):add_ingredient {type = "item", name = "nano-mesh", amount = 1}
--RECIPE("cage-antilope"):add_ingredient({type = "item", name = "nano-mesh", amount = 1})
RECIPE("volumetric-capacitor"):add_ingredient {type = "item", name = "nano-mesh", amount = 1}
RECIPE("pa-proton"):replace_ingredient("uranium-235", "u-235")
RECIPE("silicon-wafer"):replace_ingredient("silicon", "eg-si"):set_fields {results = {
    {type = "fluid", name = "flue-gas",      amount = 100},
    {type = "item",  name = "silicon-wafer", amount = 2}
}}
RECIPE("silicon"):remove_unlock("semiconductor-doping"):add_unlock("silicon-mk01")
RECIPE("lithium-chloride"):remove_unlock("biobattery"):add_unlock("lithium-niobate")
RECIPE("lithium-niobate"):remove_unlock("biobattery"):add_unlock("lithium-niobate")
RECIPE("regenerator"):add_ingredient {type = "item", name = "ceramic", amount = 5}
RECIPE("nuclear-reactor-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 50}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 50}:add_ingredient {type = "item", name = "aerogel", amount = 50}
RECIPE("nuclear-reactor-mk04"):add_ingredient {type = "item", name = "control-unit", amount = 20}:add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 10}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 40}
RECIPE("neutron-moderator-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 40}:add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}
RECIPE("neutron-moderator-mk04"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}
RECIPE("neutron-absorber-mk03"):add_ingredient {type = "item", name = "diamagnetic-material", amount = 20}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 15}
RECIPE("neutron-absorber-mk04"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 4}

table.insert(RECIPE("phosphoric-acid").results, {type = "fluid", name = "hydrofluoric-acid", amount = 10})

RECIPE("py-science-pack-3"):add_ingredient {type = "item", name = "re-magnet", amount = 1}

RECIPE("fiber"):set_fields {energy_required = 5}.category = "ball-mill"

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "light-n2",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "silicon-wafer", amount = 5},
        {type = "item",  name = "arsenic",       amount = 1},
        {type = "fluid", name = "phosphine-gas", amount = 30},
        {type = "fluid", name = "etching",       amount = 20}
    },
    results = {
        {type = "item", name = "light-n", amount = 20}
    },
    main_product = "light-n"
}:add_unlock("quantum-processor")

RECIPE {
    type = "recipe",
    name = "p-dope2",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "silicon-wafer", amount = 5},
        {type = "item",  name = "zinc-acetate",  amount = 1},
        {type = "item",  name = "lithium",       amount = 2},
        {type = "fluid", name = "diborane",      amount = 40},
        {type = "fluid", name = "etching",       amount = 20}
    },
    results = {
        {type = "item", name = "p-dope", amount = 20}
    },
    main_product = "p-dope"
}:add_unlock("semiconductor-doping-mk02")

--pyHT--
data.raw["assembling-machine"]["chipshooter-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["chipshooter-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["chipshooter-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["clay-pit-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["clay-pit-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["clay-pit-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["electronics-factory-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["electronics-factory-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["electronics-factory-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["fbreactor-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["fbreactor-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["fbreactor-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["moondrop-greenhouse-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["moondrop-greenhouse-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["moondrop-greenhouse-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["nano-assembler-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["nano-assembler-mk03"].energy_usage = "2MW"
--data.raw['assembling-machine']['nano-assembler-mk04'].energy_usage = "3MW"
data.raw["assembling-machine"]["pcb-factory-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["pcb-factory-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["pcb-factory-mk04"].energy_usage = "3MW"
data.raw["assembling-machine"]["pulp-mill-mk02"].energy_usage = "1MW"
data.raw["assembling-machine"]["pulp-mill-mk03"].energy_usage = "2MW"
data.raw["assembling-machine"]["pulp-mill-mk04"].energy_usage = "3MW"

RECIPE("nexelit-battery-recharge"):remove_unlock("railway-mk03"):add_unlock("battery-mk02")
RECIPE("quantum-battery-recharge"):remove_unlock("railway-mk04"):add_unlock("battery-mk04")
data.raw.recipe["quantum-battery"].results = {{type = "item", name = "used-quantum-battery", amount = 1}}

RECIPE("random-science-pack"):remove_unlock("space-science-pack").hidden = true

RECIPE("pa-diamond"):remove_unlock("nucleo-mk02"):add_unlock("nucleo-mk03").energy_required = data.raw.recipe["pa-diamond"].energy_required * 2

RECIPE("coarse-tar"):remove_ingredient("coarse"):add_ingredient {type = "item", name = "coarse", amount = 1}.energy_required = 3
RECIPE("coarse-tar").results = {{type = "fluid", name = "tar", amount = 70}}
