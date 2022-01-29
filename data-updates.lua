if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
end
if mods["pyalienlife"] then
    require("prototypes/updates/pyalienlife-updates")
end
if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end
if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end
if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end
if mods["pypetroleumhandling"] then
    require("prototypes/updates/pypetroleumhandling-updates")
end

--disable combustion recipes--
RECIPE('acetylene-combustion'):set_fields{hidden = true}
RECIPE('coalgas-combustion'):set_fields{hidden = true}
RECIPE('syngas-combustion'):set_fields{hidden = true}
RECIPE('supercritical-combustion'):set_fields{hidden = true}
RECIPE('ultrasupercritical-combustion'):set_fields{hidden = true}
RECIPE('diesel-combustion'):set_fields{hidden = true}
RECIPE('gasoline-combustion'):set_fields{hidden = true}
RECIPE('heavy-oil-combustion'):set_fields{hidden = true}
RECIPE('light-oil-combustion'):set_fields{hidden = true}
RECIPE('methanol-combustion'):set_fields{hidden = true}
RECIPE('olefin-combustion'):set_fields{hidden = true}
RECIPE('combustion-olefin'):set_fields{hidden = true}
RECIPE('petgas-combustion'):set_fields{hidden = true}
RECIPE('refsyngas-combustion'):set_fields{hidden = true}
RECIPE('hydrogen-combustion'):set_fields{hidden = true}
RECIPE('lard-combustion'):set_fields{hidden = true}
RECIPE('bio-oil-combustion'):set_fields{hidden = true}
RECIPE('fuel-oil-combustion'):set_fields{hidden = true}
RECIPE('natural-gas-combustion'):set_fields{hidden = true}
RECIPE('aromatics-combustion'):set_fields{hidden = true}
RECIPE('scrude-combustion'):set_fields{hidden = true}
RECIPE('crude-oil-combustion'):set_fields{hidden = true}
RECIPE('naphtha-combustion'):set_fields{hidden = true}
RECIPE('tall-oil-combustion'):set_fields{hidden = true}
RECIPE('coalslurry-combustion'):set_fields{hidden = true}
RECIPE('ethanol-combustion'):set_fields{hidden = true}
RECIPE('fish-oil-combustion'):set_fields{hidden = true}
RECIPE('methane-combustion'):set_fields{hidden = true}
RECIPE('oleochemical-combustion'):set_fields{hidden = true}
RECIPE('diborane-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk02-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk03-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk04-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk05-combustion'):set_fields{hidden = true}
RECIPE('kerosene-combustion'):set_fields{hidden = true}
RECIPE('lubricant-combustion'):set_fields{hidden = true}
RECIPE('xylenol-combustion'):set_fields{hidden = true}
RECIPE('benzene-combustion'):set_fields{hidden = true}

--disable biomass combustion recipes--
RECIPE('acetylene-combustion-biomass'):set_fields{hidden = true}
RECIPE('coalgas-combustion-biomass'):set_fields{hidden = true}
RECIPE('syngas-combustion-biomass'):set_fields{hidden = true}
RECIPE('supercritical-combustion-biomass'):set_fields{hidden = true}
RECIPE('ultrasupercritical-combustion-biomass'):set_fields{hidden = true}
RECIPE('diesel-combustion-biomass'):set_fields{hidden = true}
RECIPE('gasoline-combustion-biomass'):set_fields{hidden = true}
RECIPE('heavy-oil-combustion-biomass'):set_fields{hidden = true}
RECIPE('light-oil-combustion-biomass'):set_fields{hidden = true}
RECIPE('methanol-combustion-biomass'):set_fields{hidden = true}
RECIPE('olefin-combustion-biomass'):set_fields{hidden = true}
RECIPE('combustion-olefin-biomass'):set_fields{hidden = true}
RECIPE('petgas-combustion-biomass'):set_fields{hidden = true}
RECIPE('refsyngas-combustion-biomass'):set_fields{hidden = true}
RECIPE('hydrogen-combustion-biomass'):set_fields{hidden = true}
RECIPE('lard-combustion-biomass'):set_fields{hidden = true}
RECIPE('bio-oil-combustion-biomass'):set_fields{hidden = true}
RECIPE('fuel-oil-combustion-biomass'):set_fields{hidden = true}
RECIPE('natural-gas-combustion-biomass'):set_fields{hidden = true}
RECIPE('aromatics-combustion-biomass'):set_fields{hidden = true}
RECIPE('scrude-combustion-biomass'):set_fields{hidden = true}
RECIPE('crude-oil-combustion-biomass'):set_fields{hidden = true}
RECIPE('naphtha-combustion-biomass'):set_fields{hidden = true}
RECIPE('tall-oil-combustion-biomass'):set_fields{hidden = true}
RECIPE('coalslurry-combustion-biomass'):set_fields{hidden = true}
RECIPE('ethanol-combustion-biomass'):set_fields{hidden = true}
RECIPE('fish-oil-combustion-biomass'):set_fields{hidden = true}
RECIPE('methane-combustion-biomass'):set_fields{hidden = true}
RECIPE('oleochemical-combustion-biomass'):set_fields{hidden = true}
RECIPE('diborane-combustion-biomass'):set_fields{hidden = true}
RECIPE('fuelrodmk02-combustion-biomass'):set_fields{hidden = true}
RECIPE('fuelrodmk03-combustion-biomass'):set_fields{hidden = true}
RECIPE('fuelrodmk04-combustion-biomass'):set_fields{hidden = true}
RECIPE('fuelrodmk05-combustion-biomass'):set_fields{hidden = true}
RECIPE('kerosene-combustion-biomass'):set_fields{hidden = true}
RECIPE('lubricant-combustion-biomass'):set_fields{hidden = true}
RECIPE('xylenol-combustion-biomass'):set_fields{hidden = true}
RECIPE('benzene-combustion-biomass'):set_fields{hidden = true}


--MOVED RECIPES CATEGORIES
RECIPE('aromatic-organic'):set_category("centrifuging")
RECIPE('ash-separation'):set_category("centrifuging")
RECIPE('honey-comb'):set_category("centrifuging")
RECIPE('nickel-tailings'):set_category("centrifuging")
RECIPE('xylenol-2'):set_category("centrifuging")
RECIPE('coal-slurry'):set_category("centrifuging")
RECIPE('solvent-separation'):set_category("centrifuging")
RECIPE('al-tailings-separation'):set_category("centrifuging")
RECIPE('simik-blood-to-oleochemicals'):set_category("centrifuging")
RECIPE('chromite-concentrate'):set_category("centrifuging")
RECIPE('vanabins'):set_category("centrifuging")
RECIPE('clean-rf-gel'):set_category("centrifuging")
RECIPE('heavy-water'):set_category("centrifuging")
RECIPE('gold-precipitate'):set_category("centrifuging")
RECIPE('unslimed-iron-2'):set_category("centrifuging")
RECIPE('serine'):set_category("centrifuging")
RECIPE('albumin-1'):set_category("centrifuging")
RECIPE('outlet-gas-02'):set_category("centrifuging")
RECIPE('serine'):set_category("centrifuging")
RECIPE('tar-to-nickel'):set_category("centrifuging")
RECIPE('bitumen-to-nickel'):set_category("centrifuging")
RECIPE('nickel-prepared-solution'):set_category("centrifuging")
RECIPE('chromium-rejects'):set_category("centrifuging")
RECIPE('extract-sulfur'):set_category("chemistry")

RECIPE('low-density-structure'):add_ingredient({type = "item", name = "nxsb-alloy", amount = 25})

RECIPE("electric-engine-unit"):remove_ingredient("copper-cable"):replace_ingredient("iron-stick", "rotor"):remove_ingredient("duralumin"):add_ingredient({type = "item", name = "stator", amount = 1})

RECIPE("locomotive"):add_ingredient({type = "item", name = "shaft-mk01", amount = 4}):add_ingredient({type = "item", name = "gearbox-mk01", amount = 1}):add_ingredient({type = "item", name = "intermetallics", amount = 5}):add_ingredient({type = "item", name = "brake-mk01", amount = 4})
RECIPE("cargo-wagon"):add_ingredient({type = "item", name = "shaft-mk01", amount = 2}):add_ingredient({type = "item", name = "duralumin", amount = 10}):add_ingredient({type = "item", name = "intermetallics", amount = 5}):add_ingredient({type = "item", name = "brake-mk01", amount = 2})
RECIPE("fluid-wagon"):add_ingredient({type = "item", name = "shaft-mk01", amount = 2}):add_ingredient({type = "item", name = "duralumin", amount = 10}):add_ingredient({type = "item", name = "intermetallics", amount = 5}):add_ingredient({type = "item", name = "brake-mk01", amount = 2})
RECIPE("py-roboport-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5}):add_ingredient({type = "item", name = "battery-mk01", amount = 2})

RECIPE("mk02-locomotive"):add_ingredient({type = "item", name = "shaft-mk02", amount = 4}):add_ingredient({type = "item", name = "gearbox-mk02", amount = 1}):add_ingredient({type = "item", name = "small-parts-02", amount = 50}):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5}):add_ingredient({type = "item", name = "brake-mk02", amount = 4})
RECIPE("mk02-wagon"):add_ingredient({type = "item", name = "shaft-mk02", amount = 2}):add_ingredient({type = "item", name = "aluminium-plate", amount = 20}):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3}):add_ingredient({type = "item", name = "brake-mk02", amount = 1})
RECIPE("mk02-fluid-wagon"):add_ingredient({type = "item", name = "shaft-mk02", amount = 2}):add_ingredient({type = "item", name = "stainless-steel", amount = 10}):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3}):add_ingredient({type = "item", name = "brake-mk02", amount = 1})

RECIPE("ht-locomotive"):add_ingredient({type = "item", name = "ns-material", amount = 5}):add_ingredient({type = "item", name = "electronics-mk03", amount = 1}):add_ingredient({type = "item", name = "utility-box-mk03", amount = 1}):add_ingredient({type = "item", name = "hydraulic-system-mk01", amount = 1})
RECIPE("ht-generic-wagon"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient({type = "item", name = "super-steel", amount = 10})
RECIPE("ht-generic-fluid-wagon"):add_ingredient({type = "item", name = "ns-material", amount = 2}):add_ingredient({type = "item", name = "super-steel", amount = 10})

TECHNOLOGY("nuclear-fuel-reprocessing"):set_field{enabled = false}
RECIPE('lithium-peroxide'):remove_unlock('filtration-mk02'):add_unlock('filtration-1'):add_ingredient({type = "item", name = "lithium-hydroxide", amount = 2})
RECIPE("low-density-structure"):add_ingredient({type = "item", name = "cf", amount = 10})
RECIPE("arithmetic-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("decider-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("constant-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("spidertron"):add_ingredient({type = "item", name = "sc-engine", amount = 25})
RECIPE("artillery-wagon"):add_ingredient({type = "item", name = "sc-engine", amount = 8})
RECIPE("satellite"):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("utility-science-pack"):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("space-science-pack"):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 1}):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("nv-center"):add_ingredient({type = "item", name = "mqdc", amount = 1}):add_ingredient({type = "item", name = "th-oxide", amount = 1})
RECIPE("production-science-pack"):add_ingredient({type = "item", name = "low-density-structure", amount = 3}):add_ingredient({type = "item", name = "super-steel", amount = 5}):add_ingredient({type = "item", name = "gd-metal", amount = 1})

ITEM("simik"):set_field{fuel_category = 'simik'}:set_field{fuel_value = '800MJ'}
