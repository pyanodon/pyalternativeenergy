--TECHNOLOGY--
TECHNOLOGY('filtration-mk02'):add_prereq('lithium-processing')

TECHNOLOGY("nexelit-mk01"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1")

TECHNOLOGY("energy-2"):remove_pack("chemical-science-pack")
--BUILDINDS--


--RECIPE--
RECIPE("equipment-chassi"):replace_ingredient("duralumin", { type = "item", name = "fenxsb-alloy", amount = 1})

--remove combustion mix stuff
RECIPE("power-house"):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE("power-house-mk02"):remove_unlock('machines-mk03'):set_fields{hidden = true}
RECIPE("power-house-mk03"):remove_unlock('machines-mk04'):set_fields{hidden = true}
RECIPE("power-house-mk04"):remove_unlock('machines-mk05'):set_fields{hidden = true}

RECIPE("gasturbinemk01"):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE("gasturbinemk02"):remove_unlock('machines-mk03'):set_fields{hidden = true}
RECIPE("gasturbinemk03"):remove_unlock('machines-mk04'):set_fields{hidden = true}

--RECIPE("evaporator"):remove_ingredient('chemical-plant-mk01'):remove_unlock("fluid-processing-machines-2"):add_unlock("nexelit-mk01")
--RECIPE("quenching-tower"):remove_unlock("machines-mk01"):add_unlock("nexelit-mk01")
RECIPE("methanol-reactor"):remove_ingredient('gasturbinemk01')
RECIPE("co2-absorber"):remove_ingredient('gasturbinemk01')
--RECIPE("bio-reactor"):remove_ingredient('gasturbinemk02')

--RECIPE("advanced-foundry-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("automated-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 2}):remove_ingredient("small-parts"):remove_ingredient("steam-engine"):add_ingredient({type = "item", name = "shaft-mk01", amount = 2}):add_ingredient({type = "item", name = "gearbox-mk01", amount = 2})
RECIPE("ground-borer"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
-- RECIPE("wpu"):add_ingredient({type = "item", name = "intermetallics", amount = 1})
RECIPE("ball-mill-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4}):remove_unlock("crusher-2"):add_unlock("machines-mk01")
RECIPE("chemical-plant-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5}):remove_unlock('filtration'):add_unlock('machines-mk01')
RECIPE("carbon-filter"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("classifier"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("desulfurizator-unit"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
--RECIPE("evaporator"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("fluid-separator"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("fts-reactor"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
--RECIPE("gasifier"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("methanol-reactor"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
--RECIPE("olefin-plant"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
--RECIPE("jaw-crusher"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("power-house"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("rectisol"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
-- RECIPE("solid-separator"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
--RECIPE("tar-processing-unit"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("cooling-tower-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
--RECIPE("gasturbinemk01"):add_ingredient({type = "item", name = "intermetallics", amount = 15})
RECIPE("sand-extractor"):add_ingredient({type = "item", name = "intermetallics", amount = 5})

RECIPE("advanced-foundry-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("automated-factory-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("ground-borer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("wpu-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("ball-mill-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("chemical-plant-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("carbon-filter-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("classifier-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("desulfurizator-unit-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("evaporator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("fluid-separator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("fts-reactor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("niobium-mine"):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("gasifier-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("methanol-reactor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("olefin-plant-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("jaw-crusher-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("power-house-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("quenching-tower-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("rectisol-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("solid-separator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("tar-processing-unit-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("cooling-tower-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("gasturbinemk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 15}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("sand-extractormk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("glassworks-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("distilator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("hpf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("washer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("borax-mine-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("soil-extractormk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-01", amount = 1 }
RECIPE("py-roboport-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient({type = "item", name = "tower-mk02", amount = 1}):add_ingredient({type = "item", name = "eva", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }

RECIPE("advanced-foundry-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("automated-factory-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("ground-borer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("wpu-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("ball-mill-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("carbon-filter-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("classifier-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("desulfurizator-unit-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("evaporator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("fluid-separator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("fts-reactor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("gasifier-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("methanol-reactor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("olefin-plant-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("jaw-crusher-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("power-house-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("quenching-tower-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("rectisol-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("solid-separator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("tar-processing-unit-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("cooling-tower-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("gasturbinemk03"):add_ingredient({type = "item", name = "ns-material", amount = 15}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("sand-extractormk03"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("glassworks-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("distilator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("hpf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("washer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("borax-mine-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("soil-extractormk03"):add_ingredient({type = "item", name = "ns-material", amount = 8}):add_ingredient { type = "item", name = "mechanical-parts-02", amount = 1 }
RECIPE("py-roboport-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient({type = "item", name = "electronics-mk03", amount = 1}):add_ingredient({type = "item", name = "biopolymer", amount = 5}):add_ingredient({type = "item", name = "cf", amount = 15}):add_ingredient({type = "item", name = "biobattery", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-03", amount = 1 }

RECIPE("advanced-foundry-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("automated-factory-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("ground-borer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("wpu-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 1}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("ball-mill-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("chemical-plant-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("carbon-filter-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("classifier-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("desulfurizator-unit-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("evaporator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("fluid-separator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("fts-reactor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("gasifier-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("methanol-reactor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("olefin-plant-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("jaw-crusher-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("power-house-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("quenching-tower-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("rectisol-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("solid-separator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("tar-processing-unit-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("cooling-tower-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3}):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("gasturbinemk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 15}):add_ingredient({type = "item", name = "sc-engine", amount = 4}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("sand-extractormk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("glassworks-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("distilator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("hpf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("washer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("borax-mine-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }
RECIPE("soil-extractormk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient { type = "item", name = "mechanical-parts-04", amount = 1 }

-----RECIPES-----
RECIPE("nas-battery"):replace_ingredient("lead-plate", "pbsb-alloy"):remove_unlock("battery"):add_unlock("battery-mk02")

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "mining-antimony",
    category = "ground-borer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 100},
        {type = "fluid", name = "syngas", amount = 100},
        {type = "item", name = "drill-head", amount = 2}
    },
    results = {
        {type = "item", name = "antimonium-ore", amount = 15}
    },
    main_product = "antimonium-ore",
    icon = "__pyalternativeenergygraphics__/graphics/icons/drilling-antimony.png",
    icon_size = 64,
    subgroup = "py-drilling",
    order = "c"
}:add_unlock("excavation-2")

FLUID("dirty-water-light"):subgroup_order("py-alternativeenergy-fluids", "c")

--pycp
data.raw['assembling-machine']['advanced-foundry-mk02'].energy_usage = "5.4MW"
data.raw['assembling-machine']['advanced-foundry-mk03'].energy_usage = "8MW"
data.raw['assembling-machine']['advanced-foundry-mk04'].energy_usage = "10MW"
data.raw['assembling-machine']['automated-factory-mk02'].energy_usage = "6MW"
data.raw['assembling-machine']['automated-factory-mk03'].energy_usage = "8MW"
data.raw['assembling-machine']['automated-factory-mk04'].energy_usage = "10MW"
data.raw['assembling-machine']['ball-mill-mk02'].energy_usage = "2.4MW"
data.raw['assembling-machine']['ball-mill-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['ball-mill-mk04'].energy_usage = "4MW"
data.raw['mining-drill']['borax-mine-mk02'].energy_usage = "2.55MW"
data.raw['mining-drill']['borax-mine-mk03'].energy_usage = "3MW"
data.raw['mining-drill']['borax-mine-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['botanical-nursery-mk02'].energy_usage = "2.4MW"
data.raw['assembling-machine']['botanical-nursery-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['botanical-nursery-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['carbon-filter-mk02'].energy_usage = "2.4MW"
data.raw['assembling-machine']['carbon-filter-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['carbon-filter-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['chemical-plant-mk02'].energy_usage = "4MW"
data.raw['assembling-machine']['chemical-plant-mk03'].energy_usage = "5MW"
data.raw['assembling-machine']['chemical-plant-mk04'].energy_usage = "6MW"
data.raw['assembling-machine']['classifier-mk02'].energy_usage = "2.4MW"
data.raw['assembling-machine']['classifier-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['classifier-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['desulfurizator-unit-mk02'].energy_usage = "2.4MW"
data.raw['assembling-machine']['desulfurizator-unit-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['desulfurizator-unit-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['distilator-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['distilator-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['distilator-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['evaporator-mk02'].energy_usage = "3MW"
data.raw['assembling-machine']['evaporator-mk03'].energy_usage = "4MW"
data.raw['assembling-machine']['evaporator-mk04'].energy_usage = "5MW"
data.raw['assembling-machine']['fawogae-plantation-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['fawogae-plantation-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['fawogae-plantation-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['fluid-separator-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['fluid-separator-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['fluid-separator-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['fts-reactor-mk02'].energy_usage = "4MW"
data.raw['assembling-machine']['fts-reactor-mk03'].energy_usage = "5MW"
data.raw['assembling-machine']['fts-reactor-mk04'].energy_usage = "6MW"
data.raw['assembling-machine']['gasifier-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['gasifier-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['gasifier-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['ground-borer-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['ground-borer-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['ground-borer-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['jaw-crusher-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['jaw-crusher-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['jaw-crusher-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['methanol-reactor-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['methanol-reactor-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['methanol-reactor-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['olefin-plant-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['olefin-plant-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['olefin-plant-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['quenching-tower-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['quenching-tower-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['quenching-tower-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['ralesia-plantation-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['ralesia-plantation-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['ralesia-plantation-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['rectisol-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['rectisol-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['rectisol-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['sand-extractor-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['sand-extractor-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['sand-extractor-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['soil-extractormk02'].energy_usage = "2MW"
data.raw['assembling-machine']['soil-extractormk03'].energy_usage = "3MW"
data.raw['assembling-machine']['soil-extractormk04'].energy_usage = "4MW"
data.raw['assembling-machine']['tar-processing-unit-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['tar-processing-unit-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['tar-processing-unit-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['washer-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['washer-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['washer-mk04'].energy_usage = "4MW"
data.raw['assembling-machine']['wpu-mk02'].energy_usage = "2MW"
data.raw['assembling-machine']['wpu-mk03'].energy_usage = "3MW"
data.raw['assembling-machine']['wpu-mk04'].energy_usage = "4MW"