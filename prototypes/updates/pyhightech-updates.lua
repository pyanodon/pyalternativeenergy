
--TECHNOLOGY--
TECHNOLOGY('quantum'):add_prereq('machines-mk02')
TECHNOLOGY('nano-tech'):add_prereq('photonics'):add_prereq('battery-mk04'):add_prereq('mof')
TECHNOLOGY('ht-trains'):add_prereq('battery-mk02')

--BUILDINDS--
--RECIPE("clay-pit-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("chipshooter-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("pcb-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("fbreactor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("particle-accelerator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 20})
RECIPE("electronics-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 1})
RECIPE("pulp-mill-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("nano-assembler-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 15})
RECIPE("py-recharging-station-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("py-robotport-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})

RECIPE("clay-pit-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("chipshooter-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("pcb-factory-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("pumpjack-hightech"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("phosphate-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("fbreactor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("particle-accelerator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20})
RECIPE("electronics-factory-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 1})
RECIPE("pulp-mill-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("nano-assembler-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 15})
RECIPE("rare-earth-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})

RECIPE("clay-pit-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3})
RECIPE("chipshooter-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("pcb-factory-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("fbreactor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("particle-accelerator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 20})
RECIPE("electronics-factory-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 1})
RECIPE("pulp-mill-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("nano-assembler-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 15})
RECIPE("phosphate-mine-02"):add_ingredient({type = "item", name = "ns-material", amount = 15})

RECIPE("clay-pit-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3})
RECIPE("chipshooter-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("pcb-factory-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("fbreactor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("particle-accelerator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 20})
RECIPE("electronics-factory-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 1})
RECIPE("pulp-mill-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("nano-assembler-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 15})
RECIPE("blackhole"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 15})
RECIPE("quantum-computer"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 50})

RECIPE("centrifuge-mk03"):add_ingredient({type = "item", name = "biopolymer", amount = 50}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20}):add_ingredient({type = "item", name = "carbon-nanotubes", amount = 20})
RECIPE("centrifuge-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "quantum-dots", amount = 10}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 20})


-----RECIPES-----
RECIPE('accumulator-mk03'):add_unlock({"nano-tech"})
RECIPE('oxalic-acid'):replace_ingredient("sulfuric-acid", "cyanic-acid")

RECIPE("pa-uranium-235"):remove_unlock('nucleo')
RECIPE("sodium-silicate"):remove_unlock('nano-tech'):add_unlock({"silicon-mk01"})
RECIPE("quantum-dots"):remove_unlock('quantum'):add_unlock({"nano-tech"})
RECIPE("silica-powder"):remove_unlock('nano-tech'):add_unlock({"silicon-mk01"})
RECIPE('silicon-wafer'):remove_unlock('placeholder') -- MUST SOLVE THAT WHEN THINGS GOT FIXED
RECIPE("electronic-circuit"):add_ingredient({type = "item", name = "battery-mk01", amount = 1})
RECIPE("intelligent-unit"):add_ingredient({type = "item", name = "quantum-battery", amount = 2})
RECIPE("intelligent-unit"):add_ingredient({type = "item", name = "photonic-chip", amount = 1})
RECIPE("nanochip"):add_ingredient({type = "item", name = "quantum-dots", amount = 2}):add_ingredient({type = "item", name = "quantum-well", amount = 2}):add_ingredient({type = "item", name = "nano-wires", amount = 2})
RECIPE("kondo-processor"):add_ingredient({type = "item", name = "nano-wires", amount = 3})
RECIPE("pi-josephson-junction"):add_ingredient({type = "item", name = "mqdc", amount = 1}):add_ingredient({type = "item", name = "time-crystal", amount = 1})

RECIPE("py-construction-robot-01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("py-logistic-robot-01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("py-construction-robot-02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("py-logistic-robot-02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("construction-robot-ht"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3})
RECIPE("logistic-robot-ht"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3})
RECIPE('lithium-chloride'):remove_ingredient("reo"):add_ingredient({type = "item", name = "lithium-hydroxide", amount = 1})
RECIPE("nexelit-battery"):remove_unlock('ht-trains'):add_unlock({"battery-mk02"})
RECIPE("nexelit-battery-recharge"):remove_unlock('ht-trains'):add_unlock({"battery-mk02"})
RECIPE("nano-chip"):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("carbon-nanotube"):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("parametric-oscilator"):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("quantum-well"):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("quantum-dots"):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("harmonic-absorber"):add_ingredient({type = "item", name = "cf", amount = 30})
RECIPE("var-josephson-junction"):add_ingredient({type = "item", name = "cf", amount = 30}):add_ingredient({type = "item", name = "photonic-crystal", amount = 1}):add_ingredient({type = "item", name = "gd-metal", amount = 1})

----EXCLUSIVE RECIPES----

RECIPE {
    type = 'recipe',
    name = 'nylon3',
    category = 'rectisol',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'acrylonitrile', amount = 1},
        {type = 'fluid', name = 'sulfuric-acid', amount = 100},
        {type = 'item', name = 'sb-oxide', amount = 1},
    },
    results = {
        {type = 'item', name = 'nylon', amount = 5}
    }
}:add_unlock('placeholder')-- CHANGE LATER!