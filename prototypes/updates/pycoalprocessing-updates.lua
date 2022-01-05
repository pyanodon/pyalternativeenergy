--TECHNOLOGY--
TECHNOLOGY('filtration-2'):add_prereq('lithium-processing')
--BUILDINDS--

--RECIPE--

--remove combustion mix stuff
RECIPE("power-house"):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE("power-house-mk02"):remove_unlock('machines-mk02'):set_fields{hidden = true}
RECIPE("power-house-mk03"):remove_unlock('machines-mk03'):set_fields{hidden = true}
RECIPE("power-house-mk04"):remove_unlock('machines-mk04'):set_fields{hidden = true}

RECIPE("gasturbinemk01"):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE("gasturbinemk02"):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE("gasturbinemk03"):remove_unlock('energy-3'):set_fields{hidden = true}

--disabling all combustion recipes
RECIPE('coalgas-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('coalslurry-combustion'):remove_unlock('fluid-separation'):set_fields{hidden = true}
RECIPE('syngas-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('diborane-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('heavy-oil-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('light-oil-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('petgas-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('methanol-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('refsyngas-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('olefin-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('supercritical-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('ultrasupercritical-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('methane-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('benzene-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('tall-oil-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('hydrogen-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('subcritical-water-01'):remove_unlock('biotech-mk01'):set_fields{hidden = true}
RECIPE('subcritical-water-02'):remove_unlock('biotech-mk02'):set_fields{hidden = true}
RECIPE('oleochemical-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('fish-oil-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('lard-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('ethanol-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('bio-oil-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('acetylene-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('gasoline-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('kerosene-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('fuelrodmk02-combustion'):remove_unlock('fuel-production'):set_fields{hidden = true}
RECIPE('fuelrodmk03-combustion'):remove_unlock('fuel-production'):set_fields{hidden = true}
RECIPE('fuelrodmk04-combustion'):remove_unlock('fuel-production'):set_fields{hidden = true}
RECIPE('fuelrodmk05-combustion'):remove_unlock('fuel-production'):set_fields{hidden = true}
RECIPE('diesel-combustion'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('fuel-oil-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('natural-gas-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('aromatics-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('scrude-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('crude-oil-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('naphtha-combustion'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('lubricant-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('xylenol-combustion'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('methane-combustion-biomass'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('benzene-combustion-biomass'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('tall-oil-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('hydrogen-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('oleochemical-combustion-biomass'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('fish-oil-combustion-biomass'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('lard-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('ethanol-combustion-biomass'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('bio-oil-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('acetylene-combustion-biomass'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('gasoline-combustion-biomass'):remove_unlock('energy-3'):set_fields{hidden = true}
RECIPE('fuel-oil-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('natural-gas-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('aromatics-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('scrude-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('crude-oil-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('naphtha-combustion-biomass'):remove_unlock('energy-1'):set_fields{hidden = true}
RECIPE('lubricant-combustion-biomass'):remove_unlock('energy-2'):set_fields{hidden = true}
RECIPE('xylenol-combustion-biomass'):remove_unlock('energy-2')

RECIPE("evaporator"):remove_ingredient('gasturbinemk01')
RECIPE("methanol-reactor"):remove_ingredient('gasturbinemk01')

--RECIPE("advanced-foundry-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("automated-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("ground-borer"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("wpu"):add_ingredient({type = "item", name = "intermetallics", amount = 1})
RECIPE("ball-mill-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("chemical-plant-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("carbon-filter"):add_ingredient({type = "item", name = "intermetallics", amount = 2})
RECIPE("classifier"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("desulfurizator-unit"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
--RECIPE("evaporator"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("fluid-separator"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("fts-reactor"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
--RECIPE("gasifier"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("methanol-reactor"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("olefin-plant"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
--RECIPE("jaw-crusher"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("power-house"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
--RECIPE("quenching-tower"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("rectisol"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("solid-separator"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
--RECIPE("tar-processing-unit"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("cooling-tower-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
--RECIPE("gasturbinemk01"):add_ingredient({type = "item", name = "intermetallics", amount = 15})
RECIPE("sand-extractor"):add_ingredient({type = "item", name = "intermetallics", amount = 5})

RECIPE("advanced-foundry-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("automated-factory-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2})
RECIPE("ground-borer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("wpu-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 1})
RECIPE("ball-mill-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("chemical-plant-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("carbon-filter-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2})
RECIPE("classifier-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("desulfurizator-unit-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("evaporator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("fluid-separator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("fts-reactor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("niobium-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("gasifier-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("methanol-reactor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("olefin-plant-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("jaw-crusher-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("power-house-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("quenching-tower-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("rectisol-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("solid-separator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("tar-processing-unit-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("cooling-tower-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("gasturbinemk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 15})
RECIPE("sand-extractormk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("glassworks-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("distilator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("hpf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("washer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("borax-mine-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("soil-extractormk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("py-roboport-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 2}):add_ingredient({type = "item", name = "tower-mk02", amount = 1}):add_ingredient({type = "item", name = "eva", amount = 3})

RECIPE("advanced-foundry-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("automated-factory-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2})
RECIPE("ground-borer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("wpu-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 1})
RECIPE("ball-mill-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("carbon-filter-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2})
RECIPE("classifier-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3})
RECIPE("desulfurizator-unit-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("evaporator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("fluid-separator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("fts-reactor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("gasifier-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("methanol-reactor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("olefin-plant-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("jaw-crusher-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("power-house-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("quenching-tower-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("rectisol-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("solid-separator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("tar-processing-unit-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("cooling-tower-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3})
RECIPE("gasturbinemk03"):add_ingredient({type = "item", name = "ns-material", amount = 15})
RECIPE("sand-extractormk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("glassworks-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("distilator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("hpf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("washer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("borax-mine-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("soil-extractormk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("py-roboport-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient({type = "item", name = "electronics-mk03", amount = 1}):add_ingredient({type = "item", name = "biopolymer", amount = 5}):add_ingredient({type = "item", name = "cf", amount = 15}):add_ingredient({type = "item", name = "biobattery", amount = 3})

RECIPE("advanced-foundry-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("automated-factory-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2})
RECIPE("ground-borer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("wpu-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 1})
RECIPE("ball-mill-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4})
RECIPE("chemical-plant-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("carbon-filter-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 2})
RECIPE("classifier-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3})
RECIPE("desulfurizator-unit-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4})
RECIPE("evaporator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4})
RECIPE("fluid-separator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("fts-reactor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("gasifier-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("methanol-reactor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4})
RECIPE("olefin-plant-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("jaw-crusher-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("power-house-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("quenching-tower-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("rectisol-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("solid-separator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("tar-processing-unit-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("cooling-tower-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3})
RECIPE("gasturbinemk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 15})
RECIPE("sand-extractormk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("glassworks-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("distilator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("hpf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("washer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("borax-mine-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("soil-extractormk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})

-----RECIPES-----
RECIPE("drill-head"):remove_unlock('niobium'):add_unlock('machines-mk01')
RECIPE("nas-battery"):replace_ingredient("lead-plate", "pbsb-alloy")

----EXCLUSIVE RECIPES----
RECIPE("lithium-peroxide"):add_ingredient({type = "item", name = "lithium", amount = 3})

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