local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

require("prototypes/updates/base-updates")

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

ITEM("space-science-pack", "tool"):set("icon", "__pyalternativeenergygraphics__/graphics/icons/space-science-pack.png")
ITEM("space-science-pack", "tool"):set("icon_size", 64)
ITEM("space-science-pack", "tool"):set("icon_mipmaps", nil)

--MOVED RECIPES CATEGORIES
RECIPE('aromatic-organic'):set_category("centrifuging")
RECIPE('honey-comb'):set_category("centrifuging")
RECIPE('honey-comb-buffed'):set_category("centrifuging")
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
--RECIPE('extract-sulfur'):set_category("chemistry")

RECIPE('low-density-structure'):add_ingredient({type = "item", name = "nxsb-alloy", amount = 25})

RECIPE("electric-engine-unit"):remove_ingredient("copper-cable"):replace_ingredient("iron-stick", "rotor"):remove_ingredient("duralumin"):add_ingredient({type = "item", name = "stator", amount = 1})
RECIPE("splitter"):remove_ingredient("electronic-circuit"):add_ingredient({type = "item", name = "electronic-circuit", amount = 1})


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

TECHNOLOGY("nuclear-fuel-reprocessing"):set_fields{enabled = false, hidden = true}
RECIPE('lithium-peroxide'):remove_unlock('filtration-mk02'):add_unlock('lithium-processing'):add_ingredient({type = "item", name = "lithium-hydroxide", amount = 2})
RECIPE("low-density-structure"):add_ingredient({type = "item", name = "cf", amount = 10})
RECIPE("arithmetic-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("decider-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("constant-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("spidertron"):add_ingredient({type = "item", name = "sc-engine", amount = 25})
--RECIPE("artillery-wagon"):add_ingredient({type = "item", name = "sc-engine", amount = 8})
RECIPE("satellite"):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "solar-panel-mk04", amount = 2}):replace_ingredient("fusion-reactor-mk01", "rtg"):add_ingredient({type = "item", name = "fuelrod-mk04", amount = 2})
RECIPE("utility-science-pack"):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient({type = "item", name = "photosensitive-dye", amount = 1})
RECIPE("space-science-pack"):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 1}):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("nv-center"):add_ingredient({type = "item", name = "mqdc", amount = 1}):add_ingredient({type = "item", name = "th-oxide", amount = 1})
RECIPE("production-science-pack"):add_ingredient({type = "fluid", name = "tholins", amount = 100}):add_ingredient({type = "item", name = "super-steel", amount = 5}):add_ingredient({type = "item", name = "gd-metal", amount = 1})

RECIPE('py-construction-robot-01'):add_ingredient({type = 'item', name = 'gearbox-mk01', amount = 1})
RECIPE('py-construction-robot-02'):add_ingredient({type = 'item', name = 'gearbox-mk02', amount = 1}):add_ingredient({type = 'item', name = 'eva', amount = 2})
RECIPE('construction-robot-ht'):add_ingredient({type = 'item', name = 'gearbox-mk04', amount = 1}):replace_ingredient('py-construction-robot-01', 'c-pynobot-mk03'):add_ingredient({type = 'item', name = 'quantum-battery', amount = 1}):add_ingredient({type = 'item', name = 'nano-mesh', amount = 2}):add_ingredient({type = 'item', name = 'sc-engine', amount = 1})

RECIPE('py-logistic-robot-01'):add_ingredient({type = 'item', name = 'gearbox-mk01', amount = 1})
RECIPE('py-logistic-robot-02'):add_ingredient({type = 'item', name = 'gearbox-mk02', amount = 1}):add_ingredient({type = 'item', name = 'rayon', amount = 3})
RECIPE('logistic-robot-ht'):add_ingredient({type = 'item', name = 'gearbox-mk04', amount = 1}):replace_ingredient('py-logistic-robot-01', 'l-pynobot-mk03'):add_ingredient({type = 'item', name = 'quantum-battery', amount = 1}):add_ingredient({type = 'item', name = 'nano-mesh', amount = 2}):add_ingredient({type = 'item', name = 'sc-engine', amount = 1})

RECIPE('py-construction-robot-01'):add_ingredient{'battery-mk01', 2}
RECIPE('py-logistic-robot-01'):add_ingredient{'battery-mk01', 2}

ITEM("simik"):set_field{fuel_category = 'simik'}:set_field{fuel_value = '800MJ'}

RECIPE("subcritical-water-01"):change_category("heat-exchanger")
RECIPE("subcritical-water-02"):change_category("heat-exchanger")

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient("battery", "battery-mk01")
    FUN.results_replacer(r.name, "battery", "battery-mk01")

    if recipe.category == "combustion" then
        recipe.hidden = true
        for t, tech in pairs(data.raw.technology) do
            if tech.effects ~= nil then
                for e, effect in pairs(tech.effects) do
                    if effect.type == "unlock-recipe" then
                        if effect.recipe == recipe.name then
                            RECIPE(recipe.name):remove_unlock(tech.name)
                        end
                    end
                end
            end
        end
    end
end

--ENERGY COSTS--

--ENERGY PRODUCTION DESCRIPTION --
for name, variance in pairs(require('scripts/wind/variation')) do
  local entity = data.raw['electric-energy-interface'][name]
  variance = {'entity-description.variance', variance * 100}
  if entity.localised_description then
    entity.localised_description = {'', entity.localised_description, '\n', variance}
  else
    entity.localised_description = {'?', {'', {'entity-description.' .. name}, '\n', variance}, variance}
  end
end

local electric_energy_interfaces = {
  'hawt-turbine-mk01',
  'hawt-turbine-mk02',
  'hawt-turbine-mk03',
  'hawt-turbine-mk04',
  'vawt-turbine-mk01',
  'vawt-turbine-mk02',
  'vawt-turbine-mk03',
  'vawt-turbine-mk04',
  'tidal-mk01',
  'tidal-mk02',
  'tidal-mk03',
  'tidal-mk04',
  'multiblade-turbine-mk01',
  'multiblade-turbine-mk03',
  'solar-panel-mk02',
  'solar-panel-mk03',
  'anti-solar'
}

for _, name in pairs(electric_energy_interfaces) do
  local item = data.raw.item[name]
  local entity = data.raw['electric-energy-interface'][name]
  local output = {'entity-description.max-output', entity.energy_production}
  if item.localised_description then
    item.localised_description = {'', item.localised_description, '\n', output}
  elseif entity.localised_description then
    item.localised_description = {'', entity.localised_description, '\n', output}
  else
    item.localised_description = {'?', {'', {'entity-description.' .. name}, '\n', output}, output}
  end
  entity.energy_source.buffer_capacity = entity.energy_production
end

--gather recipes for module changes
local recipes_list =
	{
  "triethoxysilane",
  "neodymium-nitrate",
  "pvp",
  "gbl",
  "butynediol",
  "perovskite-nickelate",
  "bioreceptor",
  "aptes",
  "biofet",
  "cerium-oxide",
  "polishing-wheel",
  "polished-glass-surface",
  "stannous-chloride",
  "silver-nitrate",
  "axis-tracker",
  "acrylic",
  "ometad",
  "libr",
  "hbr",
  "crude-salt",
  "ammonium-mixture",
  "hexafluoroacetone",
  "hfip",
  "pre-fiber-1",
  "pre-fiber-1-buffed",
  "nano-mesh",
  "acrylonitrile",
  "acrylonitrile-2",
  "acrylonitrile-3",
  "methyl-acrylate-2",
  "oxidized-pan-fiber",
  "pre-carbon-fiber",
  "cf",
  "er-oxalate",
  "erbium",
  "fan",
  "air-duct",
  "cryostat",
  "cryocooler",
  "sc-engine",
  "rotor-m",
  "magnetic-ring",
  "sc-stator",
  "hts-coil",
  "processed-fatty-acids",
  "fluorine-gas",
  "stripped-th",
  "th-oxalate",
  "gd-mixture",
  "gd-oxalate",
  "gd-crystal",
  "gd-stripped-solution",
  "gd-metal",
  "intermetallics",
  "self-assembly-monolayer",
  "ptcda",
  "citric-acid-01",
  "citric-acid-02",
  "sodium-citrate",
  "metallic-core",
  "silica-shell",
  "diethylaniline",
  "3-diethylaminophenol",
  "phthalic-anhydride",
  "rhodamine-b",
  "fluorophore",
  "lithium-niobate-nano",
  "dieletric-layer",
  "time-crystal",
  "quasicrystal",
  "acetaldehyde-1",
  "acetaldehyde-2",
  "pyridine",
  "sb-silicate",
  "lithium-hydroxide",
  "lithium",
  "dodecanoic-acid",
  "dodecylamine",
  "iron-nanoparticles",
  "nanocarrier",
  "control-rod",
  "photonic-chip",
  "fbg",
  "animal-reflectors",
  "photonic-crystal",
  "inverse-opal",
  "hardener",
  "glycidylamine",
  "sb-oxide-01",
  "sb-oxide-02",
  "sb-oxide-02a",
  "sb-oxide-04",
  "polycrystalline-plate",
  "silicon-wafer-2",
  "monocrystalline-plate",
  "silicon-wafer-3",
  "blade-mk01",
  "blade-mk02",
  "blade-mk03",
  "blade-mk04",
  "yaw-drive-mk01",
  "yaw-drive-mk02",
  "yaw-drive-mk03",
  "yaw-drive-mk04",
  "vane-mk01",
  "vane-mk02",
  "vane-mk03",
  "vane-mk04",
  "utility-box-mk01",
  "utility-box-mk02",
  "utility-box-mk03",
  "utility-box-mk04",
  "rotor-mk01",
  "rotor-mk02",
  "rotor-mk03",
  "rotor-mk04",
  "nacelle-mk01",
  "nacelle-mk02",
  "nacelle-mk03",
  "nacelle-mk04",
  "gearbox-mk01",
  "gearbox-mk02",
  "gearbox-mk03",
  "gearbox-mk04",
  "electronics-mk01",
  "electronics-mk02",
  "electronics-mk03",
  "electronics-mk04",
  "controler-mk01",
  "controler-mk02",
  "controler-mk03",
  "controler-mk04",
  "brake-mk01",
  "brake-mk02",
  "brake-mk03",
  "brake-mk04",
  "anemometer-mk01",
  "anemometer-mk02",
  "anemometer-mk03",
  "anemometer-mk04",
  "shaft-mk01",
  "hydraulic-system-mk01",
  "hydraulic-system-mk02",
  "inside-turbine",
  "fes",
  "heating-system",
  "lead-acetate",
  "sodium-cyanate",
  "ammonium-oxalate",
  "oxalic-acid",
  "diamond-wire",
  "passivation-layer",
  "polycrystalline-cell",
  "monocrystalline-cell",
  "battery-mk01",
  "battery-mk00",
  "flo",
  "dbr",
  "micro-cavity-core",
  "dsnc-cell",
  "crude-top-layer",
  "photosensitive-dye",
  "triphenylanime",
  "cyanoacrylate",
  "cyanoacetate",
  "conductive-sheet",
  "czts-plate",
  "gaas",
  "alag-grid",
  "rotor",
  "stator",
  "yellow-dextrine",
  "oxalic-acid-2",
  "denatured-seismite-2",
  "denatured-seismite-2-80-20",
  "enriched-ash",
  "advanced-substrate",
  "bio-ore",
  "mechanical-parts-01",
  "mechanical-parts-02",
  "mechanical-parts-03",
  "mechanical-parts-04",
  "exoskeleton-equipment",

  -- Fluids
  "allylamine",
  "aniline-01",
  "aniline-02",
  
  "bca",
  "buffer-solution",
  "hot-solution",
  "hydrofluoric-acid",
  "organic-acid-anhydride",
  "perylene",
  "phosphorus-tricloride",
  "silicate-solution",
  "liquid-manure-oxygen",
  "jacket-bio-ore",
  "jacket-bio-oil",
}

--adding to module limitation list
FUN.productivity(recipes_list)