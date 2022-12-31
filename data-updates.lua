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
RECIPE("utility-science-pack"):add_ingredient({type = "item", name = "sc-engine", amount = 1})
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
end

--gather recipes for module changes
local recipes_list =
	{
  ---- biofet ----
--   "nickel-nitrate",
  "triethoxysilane",
--   "pre-phenothiazine",
--   "phenothiazine",
  "neodymium-nitrate",
  "pvp",
  "gbl",
  "butynediol",
  "perovskite-nickelate",
  "bioreceptor",
  "aptes",
  "biofet",

  ---- mirrors ----
  -- "mirror-mk01",
  "cerium-oxide",
  "polishing-wheel",
  "polished-glass-surface",
  "clean-glass-sheet",
  "stannous-chloride",
  "silver-nitrate",
  "prepared-glass",
  "crude-mirror",
  "crude-mirror-2",
  "axis-tracker",
  -- "mirror-mk02",
  "acrylic",
  -- "mirror-mk03",
  "ometad",
--   "mirror-mk04",

  ---- nano mesh ----
  "libr",
  "hbr",
  "crude-salt",
  -- "guhcl",
  "ammonium-mixture",
  "hexafluoroacetone",
  "hfip",
  "pre-fiber-1",
--   "pre-fiber-2",
--   "pre-fiber-3",
--   "rpc-mesh",
  "nano-mesh",

  ---- biomassplant ----
  -- "biomass-molten-salt-01",
  -- "biomass-molten-salt-02",
  -- "biomass-molten-salt-03",
  -- "biomass-molten-salt-04",

  ---- Carbon Fiber Chain ----
  "acrylonitrile",
  "acrylonitrile-2",
  "acrylonitrile-3",
  "methyl-acrylate-2",
--   "pan",
  "oxidized-pan-fiber",
  "pre-carbon-fiber",
--   "cf1",
--   "cf2",
--   "dry-cf",
  "cf",

  ---- coalplant ----
  -- "coal-molten-salt-01",
  -- "coal-molten-salt-02",
  -- "coal-molten-salt-03",
  -- "coal-molten-salt-04",

  ---- erbium ----
  "er-oxalate",
--   "impure-er-oxide",
--   "er-oxide",
  "erbium",
--   "ernico",
--   "ernico-2",
--   "ybco-monocrystal",
  "fan",
  "air-duct",
  "cryostat",
  "cryocooler",
  "sc-engine",
  "rotor-m",
  "magnetic-ring",
  "sc-stator",
  "hts-coil",

  ---- eva ----
--   "middle-processed-lard",
--   "fatty-acids",
--   "fatty-acids-2",
  "processed-fatty-acids",
  -- "vinyl-acetate",
--   "eva",

  ---- eyes ----
  -- "extract-auog-eye",
  -- "extract-ulric-eye",
  -- "extract-mukmoux-eye",
  -- "extract-scrondrix-eye",
  -- "extract-dhilmos-eye",
  ---- Fluorine ----
  "fluorine-gas",

  ---- gasplant ----
  -- "gas-molten-salt-01",
  -- "gas-molten-salt-02",
  -- "gas-molten-salt-03",
  -- "gas-molten-salt-04",

  ---- Gadolinium ----
--   "re-pulp-01",
--   "re-precipitate-01",
--   "re-pulp-02",
--   "re-precipitate-02",
--   "re-pulp-03",
--   "re-pulp-04",
  "stripped-th",
  "th-dust",
  "th-oxalate",
--   "th-oxide",
  "gd-mixture",
  "gd-oxalate",
  "gd-crystal",
  "gd-stripped-solution",
--   "crystalized-gd",
--   "impure-gd",
--   "gd-oxide",
  "gd-metal",

  ---- Heat Exchanger ----
  -- "he-01",
  -- "he-02",
  -- "he-03",
  -- "he-04",
  -- "he-05",
  -- "geo-he-00",
  -- "geo-he-01",
  -- "geo-he-02",
  -- "geo-he-03",

  ---- Intermetallics ----
--   "fenxsb-alloy-2",
--   "vitreloy",
  "intermetallics",
  "self-assembly-monolayer",
  "ptcda",
--   "nbalti",
--   "crmoni",
  "citric-acid-01",
  "citric-acid-02",
  "sodium-citrate",
  "metallic-core",
  "silica-shell",
--   "plasmonic-core",
  "diethylaniline",
  "3-diethylaminophenol",
  "phthalic-anhydride",
  "rhodamine-b",
  "fluorophore",
  "lithium-niobate-nano",
  "dieletric-layer",
--   "core-shell",
--   "mositial-nx",
--   "ns-material",
--   "metastable-quasicrystal",
  "time-crystal",
  "quasicrystal",
--   "nxzngd",
--   "molten-nxzngd",
--   "photon-deposited-quartz",

  ---- Lithium ----
  "acetaldehyde-1",
  "acetaldehyde-2",
  "pyridine",
--   "tbp",
  "sb-silicate",
  "lithium-hydroxide",
  "lithium",

  ---- LRF ----
  -- "lrf-salt-heating-*""
  -- "lrf-salt-heating-mk02-*""
  -- "lrf-steam-1",
  -- "lrf-steam-2",

  ---- MOF ----
  "dodecanoic-acid",
  "dodecylamine",
  "iron-nanoparticles",
--   "milfe",
  "nanocarrier",

  ---- Nuclear Thorium ----
  -- "molten-thorium"
  -- "nuclear-molten-thorium-reactor",
  -- "pa-233-seperation",
  -- "pa233-u233"

  ---- Nuclear ----
  "control-rod",
  -- "neutron-absorbston",
  -- "neutron-moderation",
  -- "tbp-2",
  -- "lithium-salt-fuel-seperation",
  -- "waste-uranium-disolving",
  -- "purex-washing-1",
  -- "purex-washing-2",
  -- "purex-washing-3",
  -- "purex-washing-4",
  -- "purex-waste-washing-1",
  -- "purex-waste-washing-2",
  -- "purex-waste-vitrification",
  -- "plutonium-washing-1",
  -- "plutonium-washing-2",
  -- "plutonium-washing-3",
  -- "plutonium-peroxide",
  -- "plutonium",
  -- "uranium-washing-1",
  -- "uranium-washing-2",
  -- "uranium",
  -- "purex-raffinate-1",
  -- "purex-raffinate-2",
  -- "purex-raffinate-3",
  -- "ac-oxygenated",
  -- "americium-reduction",
  -- "curium-reduction",
  -- "sb-chloride-to-ore",
  -- "split-yellowcake",
  -- "fuel-cell-dissolve",
  -- "antimony-phosphate",
  -- "plutonium-oxidation",
  -- "antimony-phosphate-2",
  -- "plutonium-oxidation-2",
  -- "yellow-cake-uf6",

  ---- NuclearPlant ----
  -- "nuclear-molten-salt-01"
  -- "nuclear-molten-salt-02"

  ---- OilPlant ----
  -- "oil-molten-salt-01",
  -- "oil-molten-salt-02",
  -- "oil-molten-salt-03",
  -- "oil-molten-salt-04",

  ---- Photonic Chip ----
  "photonic-chip",
  "fbg",
  -- "fdtd",
  -- "dieletric-mirror",
  -- "ti-n",
  "animal-reflectors",
  "photonic-crystal",
  "inverse-opal",
  "hardener",
  "glycidylamine",

  ---- RadioIsotopes ----
  -- "uranium-seperation",
  -- "u232-u233",
  -- "u234-u235",
  -- "u236-u237",
  -- "u237-pu238",
  -- "u234-po210",
  -- "fuel-cell-mk03-dissolve",
  -- "fuel-cell-mk04-dissolve",
  -- "plutonium-fuel-cell",
  -- "plutonium-fuel-reprocessing",
  -- "plutonium-seperation",
  -- "pu-238-transmutation",
  -- "pu-239-transmutation",
  -- "pu-240-transmutation",
  -- "pu-241-transmutation",
  -- "pu-242-transmutation",
  -- "americium-seperation",
  -- "am-241-transmutation",
  -- "am-243-transmutation",
  -- "am-243-transmutation-2",

  ---- Antimony ----
  -- "sb-grade-01",
  -- "sb-grade-02",
  -- "sb-grade-03",
  -- "sb-grade-04",
  "sb-oxide-01",
  -- "sb-crushed",
  -- "sb-dust",
  -- "sb-pulp-01",
  -- "sb-pulp-02",
  "sb-oxide-02",
  "sb-oxide-02a",
  -- "sb-pulp-03",
  -- "sb-pulp-04",
  -- "sb-low-conc",
  -- "sb-11-conc",
  -- "sb-58-conc",
  -- "sb-pulp-05",
  -- "sb-final-conc",
  -- "sb-conc",
  -- "high-purified-sb",
  "sb-oxide-04",

  ---- Silicon Chain ----
  -- "crucible",
  -- "polycrystalline-slab",
  "polycrystalline-plate",
  "silicon-wafer-2",
  -- "quartz-crucible",
  -- "monocrystalline-slab",
  "monocrystalline-plate",
  "silicon-wafer-3",

  ---- Simik Boiler ----
  -- "steam-250",
  -- "steam-500",
  -- "pressured-steam-1",
  -- "pressured-steam-2",
  -- "pressured-steam-3",
  -- "pressured-steam-4",
  -- "simik-hot-air-boiler",

  ---- wind ----
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
  -- "shaft-mk02", casting unit doesn't use prod
  -- "shaft-mk03",
  -- "shaft-mk04",
  "hydraulic-system-mk01",
  "hydraulic-system-mk02",
  "inside-turbine",
  "fes",
  "heating-system",

  ---- Other Recipes ----
  "lead-acetate",
  "sodium-cyanate",
  "ammonium-oxalate",
  "oxalic-acid",
  "diamond-wire",
  -- "anti-reflex-glass",
  -- "agal-alloy",
  -- "agal-alloy-2",
  "passivation-layer",
  "polycrystalline-cell",
  "monocrystalline-cell",
  "battery-mk01",
  "battery-mk00",
  "flo",
  -- "chemistry",
  "dbr",
--   "1d-photonic-crystal",
  "micro-cavity-core",
  -- "nxsb-alloy",
  -- "quantum-battery",
  -- "organi-solvent-pyae",
  "dsnc-cell",
--   "transparent-anode",
  --   "tio2",
  "crude-top-layer",
  "photosensitive-dye",
  "triphenylanime",
  -- "bt",
  "cyanoacrylate",
  "cyanoacetate",
  "conductive-sheet",
  -- "czts-slab",
  "czts-plate",
  -- "mqdc",
  "gaas",
  -- "arsenic",
  -- "ingap",
  -- "ingaas",
  -- "quantum-well",
  "alag-grid",
  -- "microwave-satellite",
  -- "molten-salt",
  -- "pbsb-alloy",
  -- "pbsb-alloy-2",
  "rotor",
  "stator",
  -- "oleochemicals-to-fatty-acids",
  -- 'replicator-mova',
  -- 'quantum-battery-recharge',
  "yellow-dextrine",
  "oxalic-acid-2",
  "denatured-seismite-2",
  -- "stirling-engine",
  -- "heatsink",
  -- "displacer",
  -- "regenerator",
  "enriched-ash",
  -- "washed-ash",
  -- "processed-ash",
  "advanced-substrate",
  "bio-ore",
  "mechanical-parts-01",
  "mechanical-parts-02",
  "mechanical-parts-03",
  "mechanical-parts-04",
  -- "steam-into-pressured-steam",

  -- Fluids
  "allylamine",
  "aniline-01",
  "aniline-02",
  -- "anolyte",
  "bca",
  "buffer-solution",
  -- "butanol",
  -- "chloroauric-acid",
  -- "clean-organic-pulp",
  -- "crude-enzyme",
  -- "dcm",
  -- "filtered-silicate-solution",
  "hot-solution",
  "hydrofluoric-acid",
  -- "mother-liquor",
  -- "mother-liquor-prime",
  -- "mova-pulp1",
  -- "mova-pulp2",
  -- "mova-pulp3",
  -- "nickel-carbonyl",
  "organic-acid-anhydride",
  "organic-pulp-01",
  "organic-pulp-02",
  "organic-pulp-03",
  "perylene",
  "phosphorus-tricloride",
  -- "phosphoryl-chloride",
  -- "pre-enzyme",
  -- "pure-trichlorosilane",
  "r1",
  -- "r2",
  -- "r3",
  -- "r4",
  -- "salt-solution",
  "silicate-solution",
  -- "teos",
  -- "tributyl-phosphate",
  -- "trichlorosilane",
}

--adding to module limitation list
FUN.productivity(recipes_list)