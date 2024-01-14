local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

data.raw.fluid["pressured-steam"].heat_capacity = "2KJ"

RECIPE("nuclear-sample"):replace_ingredient('plutonium', {'pu-238', 1}):remove_unlock('production-science-pack'):add_unlock('chemical-science-pack')

-- TECHNOLOGY('diamond-mining'):remove_pack('chemical-science-pack'):remove_pack('py-science-pack-2'):remove_prereq('excavation-2'):add_prereq('machines-mk02'):remove_prereq('filtration-mk02')
TECHNOLOGY("kovarex-enrichment-process-2"):set_fields({enabled = false, hidden = true})

TECHNOLOGY("helium-processing"):remove_pack("production-science-pack")
TECHNOLOGY("boron-mk02"):remove_pack("production-science-pack")

RECIPE("grease-table-mk01"):remove_unlock('diamond-mining'):add_unlock('machines-mk03')
RECIPE("py-turbine"):remove_unlock('fusion-mk01')
RECIPE("lead-container"):replace_ingredient("lead-plate", {"pbsb-alloy", 4})
RECIPE("methyl-acrylate"):remove_unlock("ethanolamine"):add_unlock("acrylic")

--BUILDINDS--
RECIPE("particle-accelerator-mk01"):remove_ingredient('gasturbinemk02')
RECIPE("fusion-reactor-mk01"):remove_ingredient('gasturbinemk03')
RECIPE("py-turbine"):remove_ingredient('gasturbinemk03') -- TODO: replace with something

RECIPE("automated-screener-mk01"):remove_unlock("machines-mk01"):add_unlock("copper-mk01")
RECIPE("agitator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("nmf-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("secondary-crusher-mk01"):remove_unlock("machines-mk01"):add_unlock("crusher-2")--:add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("thickener-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 7})
RECIPE("gas-separator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("hydrocyclone-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
--RECIPE("automated-screener-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("centrifugal-pan-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("compressor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("jig-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("grease-table-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 7})
RECIPE("mixer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("py-heat-exchanger"):add_ingredient({type = "item", name = "intermetallics", amount = 5}):replace_ingredient('niobium-pipe', 'pipe'):remove_unlock('machines-mk02'):add_unlock('nonrenewable-mk01'):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }


RECIPE("agitator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("vacuum-pump-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount =2}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("nmf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("secondary-crusher-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("diamond-mine"):replace_ingredient("advanced-circuit", "electronic-circuit"):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 2 }
RECIPE("thickener-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("gas-separator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("hydrocyclone-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("automated-screener-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("centrifugal-pan-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("compressor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("jig-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("grease-table-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("mixer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("py-heat-exchanger-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})

RECIPE("agitator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("vacuum-pump-mk03"):add_ingredient({type = "item", name = "ns-material", amount =2}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("mo-mine"):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("nmf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("secondary-crusher-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("thickener-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("gas-separator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("hydrocyclone-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("automated-screener-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("centrifugal-pan-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("regolite-mine"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 2 }
RECIPE("compressor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("jig-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("grease-table-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("mixer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("py-heat-exchanger-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 5 }

RECIPE("agitator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("vacuum-pump-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount =2}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("nmf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("secondary-crusher-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("thickener-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("gas-separator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("hydrocyclone-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("automated-screener-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("centrifugal-pan-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("compressor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("jig-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("grease-table-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("mixer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("fusion-reactor-mk02"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 5 }
RECIPE("py-heat-exchanger-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})

RECIPE("centrifuge-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 50}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("centrifuge-mk04"):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 10}):add_ingredient({type = "item", name = "control-unit", amount = 5})

--RECIPES

RECIPE("control-unit"):add_ingredient({type = "item", name = "mechanical-parts-02", amount = 1}):replace_ingredient("fuelrod-mk01", "fuelrod-mk02")
RECIPE("sc-unit"):add_ingredient({type = "item", name = "mechanical-parts-03", amount = 1})
RECIPE("blanket"):add_ingredient({type = "item", name = "lithium", amount = 5})
RECIPE("magnetic-core"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("sc-unit"):add_ingredient({type = "item", name = "hts-coil", amount = 6})
RECIPE("production-science-pack"):add_ingredient{type = "item", name = "ns-material", amount = 1}

RECIPE('purified-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')
RECIPE('cool-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')
RECIPE('cold-clean-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')
RECIPE('liquid-pure-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')

FUN.results_replacer("dt-fusion", "critical-steam", "neutron", 1000)
FUN.remove_ingredient("dt-fusion", "pressured-water")
FUN.results_replacer("dt-he3", "critical-steam", "neutron", 1000)
FUN.results_replacer("b-h", "critical-steam", "neutron", 1000)
FUN.results_replacer("antimatter-fusion", "critical-steam", "neutron", 1000)

--pyFE--
data.raw['assembling-machine']['agitator-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['agitator-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['agitator-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['agitator-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['automated-screener-mk02'].energy_usage = "1MW"
data.raw['assembling-machine']['automated-screener-mk03'].energy_usage = "2MW"
data.raw['assembling-machine']['automated-screener-mk04'].energy_usage = "3MW"
data.raw['assembling-machine']['compressor-mk02'].energy_usage = "1MW"
data.raw['assembling-machine']['compressor-mk03'].energy_usage = "2MW"
data.raw['assembling-machine']['compressor-mk04'].energy_usage = "3MW"
data.raw['assembling-machine']['gas-separator-mk02'].energy_usage = "1MW"
data.raw['assembling-machine']['gas-separator-mk03'].energy_usage = "2MW"
data.raw['assembling-machine']['gas-separator-mk04'].energy_usage = "3MW"
data.raw['assembling-machine']['genlab-mk02'].energy_usage = "1MW"
data.raw['assembling-machine']['genlab-mk03'].energy_usage = "2MW"
data.raw['assembling-machine']['genlab-mk04'].energy_usage = "3MW"
data.raw['assembling-machine']['grease-table-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['grease-table-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['grease-table-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['grease-table-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['hydrocyclone-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['hydrocyclone-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['hydrocyclone-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['hydrocyclone-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['jig-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['jig-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['jig-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['jig-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['kmauts-enclosure-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['kmauts-enclosure-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['kmauts-enclosure-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['kmauts-enclosure-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['mixer-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['mixer-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['mixer-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['mixer-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['nmf-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['nmf-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['nmf-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['nmf-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['plankton-farm-mk02'].energy_usage = "1MW"
data.raw['assembling-machine']['plankton-farm-mk03'].energy_usage = "2MW"
data.raw['assembling-machine']['plankton-farm-mk04'].energy_usage = "3MW"
data.raw['assembling-machine']['secondary-crusher-mk02'].energy_usage = "1MW"
data.raw['assembling-machine']['secondary-crusher-mk03'].energy_usage = "2MW"
data.raw['assembling-machine']['secondary-crusher-mk04'].energy_usage = "3MW"
data.raw['assembling-machine']['thickener-mk02'].energy_usage = "1MW"
data.raw['assembling-machine']['thickener-mk03'].energy_usage = "2MW"
data.raw['assembling-machine']['thickener-mk04'].energy_usage = "3MW"
data.raw['assembling-machine']['xyhiphoe-pool-mk01'].energy_usage = "1MW"
data.raw['assembling-machine']['xyhiphoe-pool-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['xyhiphoe-pool-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['xyhiphoe-pool-mk04'].energy_usage = "4MW"
