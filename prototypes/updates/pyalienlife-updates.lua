
table.insert(data.raw["rocket-silo"]["mega-farm"].crafting_categories, "mova-farm")
table.insert(data.raw["mining-drill"]["harvester"].resource_categories, "mova")

table.insert(data.raw["assembling-machine"]["slaughterhouse-mk01"].crafting_categories, "slaughterhouse-numal")
table.insert(data.raw["assembling-machine"]["slaughterhouse-mk02"].crafting_categories, "slaughterhouse-numal")
table.insert(data.raw["assembling-machine"]["slaughterhouse-mk03"].crafting_categories, "slaughterhouse-numal")
table.insert(data.raw["assembling-machine"]["slaughterhouse-mk04"].crafting_categories, "slaughterhouse-numal")

TECHNOLOGY("ethanol"):remove_pack("chemical-science-pack")
TECHNOLOGY("mega-farm"):remove_pack("utility-science-pack"):remove_pack("military-science-pack")

TECHNOLOGY("semiconductor-doping-mk02"):add_pack("py-science-pack-2")
TECHNOLOGY("helium-processing"):add_pack("py-science-pack-2")
TECHNOLOGY("super-steel-mk01"):add_pack("py-science-pack-2")
TECHNOLOGY("smelters-mk02"):add_pack("py-science-pack-2")
TECHNOLOGY("advanced-material-processing-2"):add_pack("py-science-pack-2")
TECHNOLOGY("electric-energy-distribution-2"):add_pack("py-science-pack-2")
TECHNOLOGY("robotics"):add_pack("py-science-pack-2")
TECHNOLOGY("small-parts-mk03"):add_pack("py-science-pack-2")
TECHNOLOGY("low-density-structure"):add_pack("py-science-pack-2")
TECHNOLOGY("rocket-silo"):add_pack("py-science-pack-2")
TECHNOLOGY("tholin-mk01"):add_pack("py-science-pack-2")
TECHNOLOGY("big-mines"):add_pack("py-science-pack-2")
TECHNOLOGY("railway-mk03"):add_pack("py-science-pack-2")

TECHNOLOGY("kerogen"):add_pack("py-science-pack-4")
TECHNOLOGY("railway-mk04"):add_pack("py-science-pack-4")
TECHNOLOGY("fracking"):add_pack("py-science-pack-4")

TECHNOLOGY("coated-container"):remove_pack("py-science-pack-3")

-- The zungror effect
TECHNOLOGY("water-animals-mk04"):add_pack("military-science-pack")
TECHNOLOGY("water-invertebrates-mk04"):add_pack("military-science-pack")
TECHNOLOGY("antitumor"):add_pack("military-science-pack")
TECHNOLOGY("nanochondria"):add_pack("military-science-pack")
TECHNOLOGY("anabolic-rna"):add_pack("military-science-pack")
TECHNOLOGY("orexigenic"):add_pack("military-science-pack")
TECHNOLOGY("reca"):add_pack("military-science-pack")
TECHNOLOGY("recombinant-ery"):add_pack("military-science-pack")
TECHNOLOGY("vonix-mk02"):add_pack("military-science-pack")
TECHNOLOGY("cottongut-mk04"):add_pack("military-science-pack")
TECHNOLOGY("organ-printing-mk03"):add_pack("military-science-pack")
TECHNOLOGY("pharmagenomics"):add_pack("military-science-pack")
TECHNOLOGY("starch-mk03"):add_pack("military-science-pack")
TECHNOLOGY("production-science-pack"):add_pack("military-science-pack")
TECHNOLOGY("cottongut-mk03"):add_pack("military-science-pack")
TECHNOLOGY("yotoi-mk02"):add_pack("military-science-pack")


RECIPE("mega-farm"):remove_ingredient("intelligent-unit"):replace_ingredient("superconductor-servomechanims", "small-parts-03")
RECIPE("mega-farm"):remove_ingredient("blanket"):replace_ingredient("divertor", "ns-material"):remove_ingredient("harmonic-absorber")
RECIPE("harvester"):replace_ingredient("botanical-nursery-mk03", "botanical-nursery-mk02"):replace_ingredient("soil-extractormk03", "soil-extractormk02")

RECIPE("atomizer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("bio-printer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("bio-reactor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
--RECIPE("biofactory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
-- RECIPE("creature-chamber-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
--RECIPE("genlab-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
--RECIPE("incubator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
--RECIPE("numal-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
--RECIPE("slaughterhouse-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("spore-collector-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("cadaveric-arum-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("fawogae-plantation-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
-- RECIPE("moondrop-greenhouse-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
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
-- RECIPE("data-array"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("generator-1"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("pyphoon-bay"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
-- RECIPE("collector"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("zungror-lair-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 5 }

RECIPE("atomizer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("bio-printer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("bio-reactor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("biofactory-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("creature-chamber-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("genlab-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("incubator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("numal-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("slaughterhouse-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("spore-collector-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("cadaveric-arum-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("fawogae-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("moondrop-greenhouse-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("navens-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("yaedols-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("bhoddos-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("arqad-hive-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("arthurian-pen-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("auog-paddock-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("compost-plant-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("cridren-enclosure-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("dhilmos-pool-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("dingrits-pack-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("ez-ranch-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("fish-farm-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("kmauts-enclosure-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("mukmoux-pasture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("phadai-enclosure-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("phagnot-corral-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("prandium-lab-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("scrondrix-pen-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("simik-den-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("sponge-culture-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("trits-reef-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("ulric-corral-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("xenopen-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("xyhiphoe-pool-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("zipir-reef-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("fwf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("grods-swamp-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("kicalk-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("ralesia-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("rennea-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("tuuphra-plantation-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("yotoi-aloe-orchard-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("vonix-den-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("plankton-farm-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("generator-2"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("vat-brain"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("micro-mine-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("research-center-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("botanical-nursery-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("vrauks-paddock-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("moss-farm-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("sap-extractor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("seaweed-crop-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("zungror-lair-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 5 }
RECIPE("fluid-drill-mk03"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("collector-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 2 }
RECIPE("rc-mk02"):add_ingredient{"eva", 100}:add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 12}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 10 }

RECIPE("atomizer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("bio-printer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("bio-reactor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("biofactory-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("creature-chamber-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("genlab-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("incubator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("numal-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("slaughterhouse-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("spore-collector-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("cadaveric-arum-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("fawogae-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("moondrop-greenhouse-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("navens-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("yaedols-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("bhoddos-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("arqad-hive-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("arthurian-pen-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("auog-paddock-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("compost-plant-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("cridren-enclosure-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("dhilmos-pool-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("dingrits-pack-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("ez-ranch-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("fish-farm-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("kmauts-enclosure-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("mukmoux-pasture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("phadai-enclosure-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("phagnot-corral-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("prandium-lab-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("scrondrix-pen-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("simik-den-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("sponge-culture-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("trits-reef-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("ulric-corral-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("xenopen-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("xyhiphoe-pool-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("zipir-reef-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("fwf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("grods-swamp-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("kicalk-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("ralesia-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("rennea-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("tuuphra-plantation-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("yotoi-aloe-orchard-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("vonix-den-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("plankton-farm-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("micro-mine-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("research-center-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("botanical-nursery-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient({type = "item", name = "acrylic", amount = 40}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("vrauks-paddock-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("moss-farm-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("sap-extractor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("seaweed-crop-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("zungror-lair-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 5 }
RECIPE("fluid-drill-mk04"):add_ingredient({type = "item", name = "ns-material", amount = 5}):replace_ingredient("electric-engine-unit", "sc-engine"):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
RECIPE("collector-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient({type = "item", name = "acrylic", amount = 20}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 2 }
RECIPE("rc-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 10 }


RECIPE("atomizer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("bio-printer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("bio-reactor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("biofactory-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("creature-chamber-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("genlab-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("incubator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("numal-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("slaughterhouse-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("spore-collector-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("cadaveric-arum-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("fawogae-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("moondrop-greenhouse-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("navens-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("yaedols-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("bhoddos-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("arqad-hive-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("arthurian-pen-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("auog-paddock-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("compost-plant-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("cridren-enclosure-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("dhilmos-pool-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("dingrits-pack-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("ez-ranch-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("fish-farm-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("kmauts-enclosure-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("mukmoux-pasture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("phadai-enclosure-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("phagnot-corral-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("prandium-lab-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("scrondrix-pen-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("simik-den-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("sponge-culture-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("trits-reef-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("ulric-corral-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("xenopen-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("xyhiphoe-pool-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("zipir-reef-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("fwf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("grods-swamp-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("kicalk-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("ralesia-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("rennea-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("tuuphra-plantation-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("yotoi-aloe-orchard-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("vonix-den-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("plankton-farm-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("micro-mine-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("research-center-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("botanical-nursery-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("vrauks-paddock-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("moss-farm-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("sap-extractor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("seaweed-crop-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("pydrive"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 20}):add_ingredient({type = "item", name = "sc-engine", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("antelope-enclosure-mk01"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 10 }
RECIPE("collector-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 2 }
RECIPE("rc-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 12 }

-----RECIPES-----
RECIPE('sb-pulp-01'):replace_ingredient("naphtha", "fish-oil")
RECIPE('sb-pulp-05'):add_ingredient({type = "item", name = "yellow-dextrine", amount = 1})
RECIPE('sodium-cyanate'):add_ingredient({type = "item", name = "urea", amount = 5})
RECIPE('oxalic-acid'):add_ingredient({type = "item", name = "sugar", amount = 5})
RECIPE('gd-metal'):add_ingredient({type = "item", name = "cobalt-extract", amount = 2})
RECIPE('chloral'):set_category("chemistry")
RECIPE('nanocarrier'):add_ingredient({type = "item", name = "metallic-glass", amount = 1})
-- RECIPE('gh'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
-- RECIPE('gh-2'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('antiviral'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('antiviral-02'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('nanochondria'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE('adam42-gen'):add_ingredient({type = "item", name = "nanocarrier", amount = 1})
RECIPE("biobattery"):remove_unlock('chitin'):add_unlock({"battery-mk03"}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE('hyaline'):add_ingredient({type = "fluid", name = "fatty-acids", amount = 30})
RECIPE('zinc-finger-proteins'):add_ingredient({type = "fluid", name = "fatty-acids", amount = 30})
RECIPE('pre-pesticide-02'):add_ingredient({type = "item", name = "dodecylamine", amount = 1})
RECIPE('korlex-food-02'):replace_ingredient("fish-oil", "fatty-acids")
RECIPE('korlex-food-02'):replace_ingredient("fish-oil", "fatty-acids")
RECIPE('dynemicin'):add_ingredient({type = "item", name = "acrylic", amount = 2})
RECIPE("cellulose-00"):remove_unlock("cellulose-mk01"):add_unlock("vacuum-tube-electronics")
RECIPE("bhoddos-mk02"):remove_ingredient("40-u-powder")
RECIPE("bhoddos-mk03"):remove_ingredient("70-u-powder")
--RECIPE("ethanol"):replace_ingredient("bacteria-1", "zogna-bacteria")
RECIPE('steam-heating'):remove_unlock('phytomining'):add_unlock('uranium-processing')
RECIPE('py-science-pack-3'):add_ingredient({type = "item", name = "bio-ore", amount = 2}):replace_ingredient("plastic-bar", "acrylic")
RECIPE("py-science-pack-4"):add_ingredient({type = "item", name = "nanozymes", amount = 1})
RECIPE("perfect-samples"):add_ingredient{type = 'item', name = 'vsk', amount = 1}
RECIPE('perfect-samples'):add_ingredient({type = "item", name = "aeroorgan", amount = 1})

ITEM("simik"):set_fields{fuel_category = "simik", fuel_value = "600MJ", burnt_result = "used-simik"}
ITEM("simik-mk02"):set_fields{fuel_category = "simik", fuel_value = "800MJ", burnt_result = "used-simik-mk02"}
ITEM("simik-mk03"):set_fields{fuel_category = "simik", fuel_value = "1100MJ", burnt_result = "used-simik-mk03"}
ITEM("simik-mk04"):set_fields{fuel_category = "simik", fuel_value = "1500MJ", burnt_result = "used-simik-mk04"}

RECIPE("nano-cellulose"):remove_ingredient('steam'):add_ingredient({type = 'fluid', name = 'pressured-steam', amount = 100})
RECIPE("zymogens"):add_ingredient{type = "item", name = "zungror-cocoon", amount = 2}

--mechanical-parts--
RECIPE("py-science-pack-2"):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 5 }
RECIPE("py-science-pack-3"):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("py-science-pack-4"):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }
