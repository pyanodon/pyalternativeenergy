
require("prototypes/buildings/multiblade-turbine-mk01")
--TECHNOLOGY--
require("prototypes.technologies.numal")
--BUILDINDS--
require("prototypes/buildings/numal-mk01")
--RECIPES--
require("prototypes/recipes/numal/recipes-numal")

table.insert(data.raw["rocket-silo"]["mega-farm"].crafting_categories, "mova-farm")
table.insert(data.raw["mining-drill"]["harvester"].resource_categories, "mova")

RECIPE("atomizer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("bio-printer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("bio-reactor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
--RECIPE("biofactory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("creature-chamber-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
--RECIPE("genlab-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
--RECIPE("incubator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("numal-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
--RECIPE("slaughterhouse-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("spore-collector-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("cadaveric-arum-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("fawogae-plantation-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("moondrop-greenhouse-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("navens-culture-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("yaedols-culture-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("bhoddos-culture-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("arqad-hive-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("arthurian-pen-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("auog-paddock-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("compost-plant-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("cridren-enclosure-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("dhilmos-pool-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("dingrits-pack-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("ez-ranch-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("fish-farm-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("kmauts-enclosure-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("mukmoux-pasture-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("phadai-enclosure-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("phagnot-corral-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("prandium-lab-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("scrondrix-pen-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("simik-den-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("sponge-culture-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("trits-reef-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("ulric-corral-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("xenopen-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("xyhiphoe-pool-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("zipir-reef-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
--RECIPE("fwf-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("grods-swamp-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("kicalk-plantation-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("ralesia-plantation-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("rennea-plantation-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("tuuphra-plantation-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("yotoi-aloe-orchard-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("vonix-den-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("plankton-farm-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 7})
RECIPE("data-array"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("generator-1"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("pyphoon-bay"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("collector"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("zungror-lair-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})

RECIPE("atomizer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("bio-printer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("bio-reactor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("biofactory-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("creature-chamber-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("genlab-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("incubator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("numal-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("slaughterhouse-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("spore-collector-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("cadaveric-arum-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2})
RECIPE("fawogae-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2})
RECIPE("moondrop-greenhouse-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("navens-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("yaedols-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("bhoddos-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("arqad-hive-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("arthurian-pen-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("auog-paddock-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("compost-plant-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("cridren-enclosure-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("dhilmos-pool-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("dingrits-pack-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("ez-ranch-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("fish-farm-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2})
RECIPE("kmauts-enclosure-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("mukmoux-pasture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("phadai-enclosure-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("phagnot-corral-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("prandium-lab-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("scrondrix-pen-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("simik-den-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("sponge-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("trits-reef-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("ulric-corral-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("xenopen-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("xyhiphoe-pool-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("zipir-reef-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("fwf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("grods-swamp-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("kicalk-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("ralesia-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("rennea-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("tuuphra-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("yotoi-aloe-orchard-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("vonix-den-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("plankton-farm-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7})
RECIPE("generator-2"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2})
RECIPE("vat-brain"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("micro-mine-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("research-center-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("botanical-nursery-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("vrauks-paddock-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("moss-farm-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7})
RECIPE("sap-extractor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("seaweed-crop-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("zungror-lair-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})

RECIPE("atomizer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("bio-printer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("bio-reactor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("biofactory-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("creature-chamber-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("genlab-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("incubator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("numal-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("slaughterhouse-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("spore-collector-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("cadaveric-arum-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2})
RECIPE("fawogae-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2})
RECIPE("moondrop-greenhouse-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3})
RECIPE("navens-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("yaedols-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("bhoddos-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("arqad-hive-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("arthurian-pen-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("auog-paddock-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("compost-plant-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("cridren-enclosure-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6})
RECIPE("dhilmos-pool-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("dingrits-pack-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("ez-ranch-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("fish-farm-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("kmauts-enclosure-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6})
RECIPE("mukmoux-pasture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("phadai-enclosure-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("phagnot-corral-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3})
RECIPE("prandium-lab-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("scrondrix-pen-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("simik-den-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("sponge-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("trits-reef-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("ulric-corral-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("xenopen-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("xyhiphoe-pool-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("zipir-reef-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("fwf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("grods-swamp-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("kicalk-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("ralesia-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("rennea-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("tuuphra-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("yotoi-aloe-orchard-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("vonix-den-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("plankton-farm-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7})
RECIPE("micro-mine-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("research-center-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("botanical-nursery-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40})
RECIPE("vrauks-paddock-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("moss-farm-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7})
RECIPE("sap-extractor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("seaweed-crop-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("zungror-lair-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})

RECIPE("atomizer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("bio-printer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("bio-reactor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("biofactory-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("creature-chamber-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("genlab-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("incubator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("numal-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("slaughterhouse-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("spore-collector-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("cadaveric-arum-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("fawogae-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("moondrop-greenhouse-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("navens-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("yaedols-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("bhoddos-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("arqad-hive-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("arthurian-pen-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("auog-paddock-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("compost-plant-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("cridren-enclosure-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("dhilmos-pool-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("dingrits-pack-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("ez-ranch-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("fish-farm-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("kmauts-enclosure-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("mukmoux-pasture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("phadai-enclosure-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("phagnot-corral-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("prandium-lab-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("scrondrix-pen-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("simik-den-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("sponge-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("trits-reef-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("ulric-corral-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("xenopen-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("xyhiphoe-pool-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("zipir-reef-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("fwf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("grods-swamp-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("kicalk-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("ralesia-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("rennea-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("tuuphra-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("yotoi-aloe-orchard-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("vonix-den-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("plankton-farm-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("micro-mine-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("research-center-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("botanical-nursery-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("vrauks-paddock-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("moss-farm-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("sap-extractor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("seaweed-crop-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1})

-----RECIPES-----
RECIPE('sb-pulp-01'):replace_ingredient("naphtha", "fish-oil")
RECIPE('sb-pulp-05'):add_ingredient({type = "item", name = "yellow-dextrine", amount = 1})
RECIPE('sodium-cyanate'):add_ingredient({type = "item", name = "urea", amount = 5})
RECIPE('oxalic-acid'):add_ingredient({type = "item", name = "sugar", amount = 5})
RECIPE('gd-metal'):add_ingredient({type = "item", name = "cobalt-extract", amount = 2})
RECIPE('chloral'):set_category("chemistry")
RECIPE('nanocarrier'):add_ingredient({type = "item", name = "metallic-glass", amount = 1})
RECIPE('gh'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('gh-2'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('antiviral'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('antiviral-02'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('nanochondria'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('adam42-gen'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE("biobattery"):remove_unlock('chitin'):add_unlock({"battery-mk03"})
RECIPE("nanofibrils"):remove_unlock('chitin'):add_unlock({"battery-mk03"})
RECIPE('hyaline'):add_ingredient({type = "fluid", name = "fatty-acids", amount = 30})
RECIPE('zinc-finger-proteins'):add_ingredient({type = "fluid", name = "fatty-acids", amount = 30})
RECIPE('pre-pesticide-02'):add_ingredient({type = "item", name = "dodecylamine", amount = 1})
RECIPE('korlex-food-02'):replace_ingredient("fish-oil", "fatty-acids")
RECIPE('korlex-food-02'):replace_ingredient("fish-oil", "fatty-acids")
RECIPE('dynemicin'):add_ingredient({type = "item", name = "acrylic", amount = 2})

ITEM("simik"):set_fields{fuel_category = "simik", fuel_value = "600MJ", burnt_result = "used-simik"}
ITEM("simik-mk02"):set_fields{fuel_category = "simik", fuel_value = "800MJ", burnt_result = "used-simik-mk02"}
ITEM("simik-mk03"):set_fields{fuel_category = "simik", fuel_value = "1100MJ", burnt_result = "used-simik-mk03"}
ITEM("simik-mk04"):set_fields{fuel_category = "simik", fuel_value = "1500MJ", burnt_result = "used-simik-mk04"}

RECIPE("nano-cellulose"):remove_ingredient('steam'):add_ingredient({type = 'fluid', name = 'pressured-steam', amount = 100})
----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "yellow-dextrine",
    category = "fbreactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "starch", amount = 5},
        {type = "fluid", name = "hot-air", amount = 150},
        {type = "item", name = "nexelit-plate", amount = 10},
    },
    results = {
        {type = "item", name = "yellow-dextrine", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("antimony-mk04")

RECIPE {
    type = "recipe",
    name = "oxalic-acid-2",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood", amount = 100},
        {type = "item", name = "plastic-bar", amount = 1},
    },
    results = {
        {type = "item", name = "oxalic-acid", amount = 1},
    },
    --main_product = "sb-dust",
}:add_unlock("carbon-fiber")

RECIPE {
    type = "recipe",
    name = "denatured-seismite-2",
    category = "biofactory",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "mutant-enzymes", amount = 100},
        {type = "fluid", name = "formic-acid", amount = 200},
        {type = "item", name = "zymogens", amount = 1},
        {type = "item", name = "lithium", amount = 10},
        {type = "item", name = "lithium-hydroxide", amount = 4},
        {type = "item", name = "adrenal-cortex", amount = 1},
        {type = "item", name = "dhilmos-egg", amount = 5},
        {type = "item", name = "cottongut", amount = 50},
        {type = "item", name = "cdna", amount = 5},
        {type = "item", name = "bio-sample01", amount = 10},
        {type = "item", name = "hyaline", amount = 2},
        {type = "item", name = "nanofibrils", amount = 1},
        {type = "item", name = "xeno-egg", amount = 5},
    },
    results = {
        {type = "item", name = "denatured-seismite", amount = 3},
    },
    --main_product = "sb-dust",
}:add_unlock("pharmagenomics")

--------------NUMAL-------------------

ITEM {
    type = "module",
    name = "numal",
    icons =
	{
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
        --{icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
    icon_size = 64,
	category = "numal",
	tier = 1,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "q-a",
    stack_size = 500,
	effect = { speed = {bonus = 3.75}, productivity = {bonus = -1}},
	limitation = {},
	limitation_message_key = "numal"
}

ITEM {
    type = "module",
    name = "numal-mk02",
    icons =
	{
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
    icon_size = 64,
	category = "numal",
	tier = 2,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "q-b",
    stack_size = 500,
	effect = { speed = {bonus = 5}, productivity = {bonus = -1}},
	limitation = {},
	limitation_message_key = "numal"
}

ITEM {
    type = "module",
    name = "numal-mk03",
    icons =
	{
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    },
    icon_size = 64,
	category = "numal",
	tier = 3,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "q-c",
    stack_size = 500,
	effect = { speed = {bonus = 6.25}, productivity = {bonus = -1}},
	limitation = {},
	limitation_message_key = "numal"
}

ITEM {
    type = "module",
    name = "numal-mk04",
    icons =
	{
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
    icon_size = 64,
	category = "numal",
	tier = 4,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "q-d",
    stack_size = 500,
	effect = { speed = {bonus = 7.5}, productivity = {bonus = -1}},
	limitation = {},
	limitation_message_key = "numal"
}

RECIPE {
    type = 'recipe',
    name = 'art-numal',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'fluid', name = 'artificial-blood', amount = 100},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'item', name = 'tissue-engineered-fat', amount = 1},
        {type = 'item', name = 'scafold-free-bones', amount = 1},
        {type = 'item', name = 'laboratory-grown-brain', amount = 1},
        {type = 'item', name = 'in-vitro-meat', amount = 1},
        {type = 'item', name = 'biomimetic-skin', amount = 1},
        {type = 'item', name = 'bioartificial-guts', amount = 1},
    },
    results = {
        {type = 'item', name = 'numal', amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = 'recipe',
    name = 'numal-ink-to-antimony',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'numal-ink', amount = 50},
    },
    results = {
        {type = 'item', name = 'antimonium-ore', amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

ITEM {
    type = "item",
    name = "numal-egg",
    icon = "__pyalternativeenergygraphics__/graphics/icons/numal-egg.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "numal-food-01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/numal-food-01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "numal-food-02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/numal-food-02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "a",
    stack_size = 500
}

ITEM {
    type = "item",
    name = "numal-codex",
    icon = "__pyalternativeenergygraphics__/graphics/icons/numal-codex.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 500
}
