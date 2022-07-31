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

RECIPE("automated-screener-mk01"):remove_unlock("machines-mk01"):add_unlock("crusher")
RECIPE("agitator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("nmf-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
-- RECIPE("secondary-crusher-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("thickener-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 7})
RECIPE("gas-separator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("hydrocyclone-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
--RECIPE("automated-screener-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("centrifugal-pan-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("compressor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("jig-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("grease-table-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 7})
RECIPE("mixer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("py-heat-exchanger"):add_ingredient({type = "item", name = "intermetallics", amount = 5}):replace_ingredient('niobium-pipe', 'pipe'):remove_unlock('machines-mk02'):add_unlock('nonrenewable-mk01')


RECIPE("agitator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("vacuum-pump-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount =2})
RECIPE("nmf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("secondary-crusher-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("diamond-mine"):replace_ingredient("advanced-circuit", "electronic-circuit")
RECIPE("thickener-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7})
RECIPE("gas-separator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("hydrocyclone-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("automated-screener-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("centrifugal-pan-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("compressor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("jig-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("grease-table-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7})
RECIPE("mixer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("py-heat-exchanger-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})

RECIPE("agitator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("vacuum-pump-mk03"):add_ingredient({type = "item", name = "ns-material", amount =2})
--RECIPE("mo-mine"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("nmf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("secondary-crusher-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("thickener-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7})
RECIPE("gas-separator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("hydrocyclone-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("automated-screener-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3})
RECIPE("centrifugal-pan-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("regolite-mine"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("compressor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6})
RECIPE("jig-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("grease-table-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7})
RECIPE("mixer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("py-heat-exchanger-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "ns-material", amount = 5})

RECIPE("agitator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("vacuum-pump-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount =2}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("nmf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("secondary-crusher-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("thickener-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("gas-separator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("hydrocyclone-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("automated-screener-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("centrifugal-pan-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("compressor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("jig-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("grease-table-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("mixer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("fusion-reactor-mk02"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("py-heat-exchanger-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})

RECIPE("centrifuge-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 50}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("centrifuge-mk04"):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 10}):add_ingredient({type = "item", name = "control-unit", amount = 5})

--RECIPES

RECIPE("blanket"):add_ingredient({type = "item", name = "lithium", amount = 5})
RECIPE("magnetic-core"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("sc-unit"):add_ingredient({type = "item", name = "hts-coil", amount = 1})
RECIPE("production-science-pack"):add_ingredient{type = "item", name = "ns-material", amount = 1}

RECIPE('purified-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')
RECIPE('cool-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')
RECIPE('cold-clean-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')
RECIPE('liquid-pure-air'):remove_unlock('semiconductor-doping-mk02'):add_unlock('helium-processing')

