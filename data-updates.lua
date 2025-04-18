require "prototypes.decay.decay-updates"

--MOVED RECIPES CATEGORIES
RECIPE("honey-comb").category = "centrifuging"
RECIPE("honey-comb-buffed").category = "centrifuging"
RECIPE("nickel-tailings").category = "centrifuging"
RECIPE("xylenol-2").category = "centrifuging"
RECIPE("al-tailings-separation").category = "centrifuging"
RECIPE("simik-blood-to-oleochemicals").category = "centrifuging"
RECIPE("chromite-concentrate").category = "centrifuging"
RECIPE("vanabins").category = "centrifuging"
RECIPE("clean-rf-gel").category = "centrifuging"
RECIPE("gold-precipitate").category = "centrifuging"
RECIPE("serine").category = "centrifuging"
RECIPE("albumin-1").category = "centrifuging"
RECIPE("outlet-gas-02").category = "centrifuging"
RECIPE("serine").category = "centrifuging"
RECIPE("tar-to-nickel").category = "centrifuging"
RECIPE("bitumen-to-nickel").category = "centrifuging"
RECIPE("nickel-prepared-solution").category = "centrifuging"
RECIPE("chromium-rejects").category = "centrifuging"
RECIPE("nuclear-fuel-reprocessing-mk02").category = "centrifuging"
RECIPE("nuclear-fuel-reprocessing-mk03").category = "centrifuging"
RECIPE("nuclear-fuel-reprocessing-mk04").category = "centrifuging"
RECIPE("nuclear-fuel-reprocessing-mk05").category = "centrifuging"
RECIPE("plutonium-fuel-reprocessing").category = "centrifuging"

--adjusting all centrifudge recipe speeds
RECIPE("uranium-processing"):set_fields {energy_required = 40}
RECIPE("kovarex-enrichment-process"):set_fields {energy_required = 10}
RECIPE("serine"):set_fields {energy_required = 50}
RECIPE("vanabins"):set_fields {energy_required = 5}
RECIPE("chromite-concentrate"):set_fields {energy_required = 10}
RECIPE("chromium-rejects"):set_fields {energy_required = 5}
RECIPE("outlet-gas-02"):set_fields {energy_required = 2}
RECIPE("nickel-tailings"):set_fields {energy_required = 10}
RECIPE("nickel-prepared-solution"):set_fields {energy_required = 10}
RECIPE("gold-precipitate"):set_fields {energy_required = 10}
RECIPE("nuclear-fuel-reprocessing"):set_fields {energy_required = 100}
RECIPE("nuclear-fuel-reprocessing-mk02"):set_fields {energy_required = 100}
RECIPE("nuclear-fuel-reprocessing-mk03"):set_fields {energy_required = 100}
RECIPE("nuclear-fuel-reprocessing-mk04"):set_fields {energy_required = 100}
RECIPE("nuclear-fuel-reprocessing-mk05"):set_fields {energy_required = 100}
RECIPE("al-tailings-separation"):set_fields {energy_required = 10}
RECIPE("clean-rf-gel"):set_fields {energy_required = 20}
RECIPE("albumin-1"):set_fields {energy_required = 5}
RECIPE("simik-blood-to-oleochemicals"):set_fields {energy_required = 20}
RECIPE("bitumen-to-nickel"):set_fields {energy_required = 10}
RECIPE("tar-to-nickel"):set_fields {energy_required = 10}
RECIPE("honey-comb"):set_fields {energy_required = 1}
RECIPE("honey-comb-buffed"):set_fields {energy_required = 3}

RECIPE {
    type = "recipe",
    name = "solvent-separation",
    category = "centrifuging",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "used-solvent", amount = 500}
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 500},
        {type = "fluid", name = "blue-liquor",     amount = 250}
    },
    main_product = "organic-solvent",
    icon = "__pyfusionenergygraphics__/graphics/icons/used-solvent.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "d"
}

RECIPE("low-density-structure"):add_ingredient {type = "item", name = "nxsb-alloy", amount = 25}

RECIPE("electric-engine-unit"):remove_ingredient("copper-cable"):replace_ingredient("iron-stick", "rotor"):remove_ingredient("duralumin"):add_ingredient {type = "item", name = "stator", amount = 1}
RECIPE("splitter"):remove_ingredient("electronic-circuit"):add_ingredient {type = "item", name = "electronic-circuit", amount = 1}


RECIPE("locomotive"):add_ingredient {type = "item", name = "shaft-mk01", amount = 4}:add_ingredient {type = "item", name = "gearbox-mk01", amount = 1}:add_ingredient {type = "item", name = "intermetallics", amount = 5}:add_ingredient {type = "item", name = "brake-mk01", amount = 4}
RECIPE("cargo-wagon"):add_ingredient {type = "item", name = "shaft-mk01", amount = 2}:add_ingredient {type = "item", name = "duralumin", amount = 10}:add_ingredient {type = "item", name = "intermetallics", amount = 5}:add_ingredient {type = "item", name = "brake-mk01", amount = 2}
RECIPE("fluid-wagon"):add_ingredient {type = "item", name = "shaft-mk01", amount = 2}:add_ingredient {type = "item", name = "duralumin", amount = 10}:add_ingredient {type = "item", name = "intermetallics", amount = 5}:add_ingredient {type = "item", name = "brake-mk01", amount = 2}
RECIPE("py-roboport-mk01"):add_ingredient {type = "item", name = "intermetallics", amount = 5}:add_ingredient {type = "item", name = "battery-mk01", amount = 2}

RECIPE("mk02-locomotive"):add_ingredient {type = "item", name = "shaft-mk02", amount = 4}:add_ingredient {type = "item", name = "gearbox-mk02", amount = 1}:add_ingredient {type = "item", name = "small-parts-02", amount = 50}:add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 5}:add_ingredient {type = "item", name = "brake-mk02", amount = 4}
RECIPE("mk02-wagon"):add_ingredient {type = "item", name = "shaft-mk02", amount = 2}:add_ingredient {type = "item", name = "aluminium-plate", amount = 20}:add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 3}:add_ingredient {type = "item", name = "brake-mk02", amount = 1}
RECIPE("mk02-fluid-wagon"):add_ingredient {type = "item", name = "shaft-mk02", amount = 2}:add_ingredient {type = "item", name = "stainless-steel", amount = 10}:add_ingredient {type = "item", name = "self-assembly-monolayer", amount = 3}:add_ingredient {type = "item", name = "brake-mk02", amount = 1}

RECIPE("ht-locomotive"):add_ingredient {type = "item", name = "ns-material", amount = 5}:add_ingredient {type = "item", name = "electronics-mk03", amount = 1}:add_ingredient {type = "item", name = "utility-box-mk03", amount = 1}:add_ingredient {type = "item", name = "hydraulic-system-mk01", amount = 1}
RECIPE("ht-generic-wagon"):add_ingredient {type = "item", name = "ns-material", amount = 2}:add_ingredient {type = "item", name = "super-steel", amount = 10}
RECIPE("ht-generic-fluid-wagon"):add_ingredient {type = "item", name = "ns-material", amount = 2}:add_ingredient {type = "item", name = "super-steel", amount = 10}

TECHNOLOGY("nuclear-fuel-reprocessing"):set_fields {enabled = false, hidden = true}
RECIPE("lithium-peroxide"):remove_unlock("filtration-mk02"):add_unlock("lithium-processing"):add_ingredient {type = "item", name = "lithium-hydroxide", amount = 2}
RECIPE("low-density-structure"):add_ingredient {type = "item", name = "cf", amount = 10}
RECIPE("arithmetic-combinator"):add_ingredient {type = "item", name = "battery", amount = 1}
RECIPE("decider-combinator"):add_ingredient {type = "item", name = "battery", amount = 1}
RECIPE("constant-combinator"):add_ingredient {type = "item", name = "battery", amount = 1}
--RECIPE("artillery-wagon"):add_ingredient({type = "item", name = "sc-engine", amount = 8})
RECIPE("satellite"):add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 4}:add_ingredient {type = "item", name = "solar-panel-mk04", amount = 2}:replace_ingredient("fusion-reactor-mk01", "py-rtg"):add_ingredient {type = "item", name = "fuelrod-mk04", amount = 2}
RECIPE("utility-science-pack"):add_ingredient {type = "item", name = "sc-engine", amount = 1}:add_ingredient {type = "item", name = "photosensitive-dye", amount = 1}
RECIPE("space-science-pack"):add_ingredient {type = "item", name = "sc-engine", amount = 3}:add_ingredient {type = "item", name = "metastable-quasicrystal", amount = 1}:add_ingredient {type = "item", name = "milfe", amount = 1}
RECIPE("nv-center"):add_ingredient {type = "item", name = "mqdc", amount = 1}:add_ingredient {type = "item", name = "th-oxide", amount = 1}
RECIPE("production-science-pack"):add_ingredient {type = "fluid", name = "tholins", amount = 100}:add_ingredient {type = "item", name = "super-steel", amount = 5}:add_ingredient {type = "item", name = "gd-metal", amount = 1}

RECIPE("py-construction-robot-mk01"):add_ingredient {type = "item", name = "gearbox-mk01", amount = 1}
RECIPE("py-construction-robot-mk02"):add_ingredient {type = "item", name = "gearbox-mk02", amount = 1}:add_ingredient {type = "item", name = "eva", amount = 2}
RECIPE("py-construction-robot-mk04"):add_ingredient {type = "item", name = "gearbox-mk04", amount = 1}:replace_ingredient("py-construction-robot-mk01", "py-construction-robot-mk03"):add_ingredient {type = "item", name = "quantum-battery", amount = 1}:add_ingredient {type = "item", name = "nano-mesh", amount = 2}:add_ingredient {type = "item", name = "sc-engine", amount = 1}

RECIPE("py-logistic-robot-mk01"):add_ingredient {type = "item", name = "gearbox-mk01", amount = 1}
RECIPE("py-logistic-robot-mk02"):add_ingredient {type = "item", name = "gearbox-mk02", amount = 1}:add_ingredient {type = "item", name = "rayon", amount = 3}
RECIPE("py-logistic-robot-mk04"):add_ingredient {type = "item", name = "gearbox-mk04", amount = 1}:replace_ingredient("py-logistic-robot-mk01", "py-logistic-robot-mk03"):add_ingredient {type = "item", name = "quantum-battery", amount = 1}:add_ingredient {type = "item", name = "nano-mesh", amount = 2}:add_ingredient {type = "item", name = "sc-engine", amount = 1}

RECIPE("py-construction-robot-mk01"):add_ingredient {type = "item", name = "battery-mk01", amount = 2}
RECIPE("py-logistic-robot-mk01"):add_ingredient {type = "item", name = "battery-mk01", amount = 2}

RECIPE("subcritical-water-01").category = "heat-exchanger"
RECIPE("subcritical-water-02").category = "heat-exchanger"

for _, recipe in pairs(data.raw.recipe) do
    recipe:replace_ingredient("battery", "battery-mk01")
    recipe:replace_result("battery", "battery-mk01")

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
for name, variance in pairs(require "scripts.wind.variation") do
    variance = {"entity-description.variance", tostring(variance * 100)}
    -- Handle the surrogate items that show in electric stats, too
    for _, suffix in pairs {"", "-blank"} do
        local entity = data.raw["electric-energy-interface"][name .. suffix]
        if entity then
            if entity.localised_description then
                entity.localised_description = {"", entity.localised_description, "\n", variance}
            else
                entity.localised_description = {"?", {"", {"entity-description." .. name}, "\n", variance}, variance}
            end
        end
    end
end

local electric_energy_interfaces = {
    "hawt-turbine-mk01",
    "hawt-turbine-mk02",
    "hawt-turbine-mk03",
    "hawt-turbine-mk04",
    "vawt-turbine-mk01",
    "vawt-turbine-mk02",
    "vawt-turbine-mk03",
    "vawt-turbine-mk04",
    "tidal-mk01",
    "tidal-mk02",
    "tidal-mk03",
    "tidal-mk04",
    "multiblade-turbine-mk01",
    "multiblade-turbine-mk03",
    "solar-panel-mk02",
    "solar-panel-mk03",
    "anti-solar"
}

for _, name in pairs(electric_energy_interfaces) do
    local item = data.raw.item[name]
    local entity = data.raw["electric-energy-interface"][name]
    local output = {"entity-description.max-output", tostring(entity.energy_production)}
    if item.localised_description then
        item.localised_description = {"", item.localised_description, "\n", (output)}
    elseif entity.localised_description then
        item.localised_description = {"", entity.localised_description, "\n", output}
    else
        item.localised_description = {"?", {"", {"entity-description." .. name}, "\n", output}, output}
    end
    entity.energy_source.buffer_capacity = entity.energy_production
end

for _, resource in pairs(data.raw.resource) do
    if not resource.selection_priority then
        resource.selection_priority = 40
    end
end

if feature_flags.space_travel and not data.raw.armor["mech-armor"] then
    data.raw.armor["power-armor"].provides_flight = true
    data.raw.armor["power-armor-mk2"].provides_flight = true
end

--gather recipes for module changes
local recipes_list =
{
    "3-diethylaminophenol",
    "acetaldehyde-1",
    "acetaldehyde-2",
    "acrylic",
    "acrylonitrile-2",
    "acrylonitrile-3",
    "acrylonitrile",
    "advanced-substrate",
    "air-duct",
    "alag-grid",
    "ammonium-mixture",
    "ammonium-oxalate",
    "anemometer-mk01",
    "anemometer-mk02",
    "anemometer-mk03",
    "anemometer-mk04",
    "animal-reflectors",
    "aptes",
    "axis-tracker",
    "battery-mk00",
    "battery-mk01",
    "bio-ore",
    "biofet",
    "bioreceptor",
    "blade-mk01",
    "blade-mk02",
    "blade-mk03",
    "blade-mk04",
    "brake-mk01",
    "brake-mk02",
    "brake-mk03",
    "brake-mk04",
    "butynediol",
    "cerium-oxide",
    "cf",
    -- "citric-acid-01", https://github.com/pyanodon/pybugreports/issues/938
    "citric-acid-02",
    "conductive-sheet",
    "control-rod",
    "controler-mk01",
    "controler-mk02",
    "controler-mk03",
    "controler-mk04",
    "crude-salt",
    "crude-top-layer",
    "cryocooler",
    "cryostat",
    "cyanoacetate",
    "cyanoacrylate",
    "czts-plate",
    "dbr",
    "denatured-seismite-2-80-20",
    "denatured-seismite-2",
    "diamond-wire",
    "dieletric-layer",
    "diethylaniline",
    "dodecanoic-acid",
    "dodecylamine",
    "dsnc-cell",
    "electronic-circuit-2",
    "electronics-mk01",
    "electronics-mk02",
    "electronics-mk03",
    "electronics-mk04",
    "enriched-ash",
    "er-oxalate",
    "erbium",
    "exoskeleton-equipment",
    "fan",
    "numal-food-01",
    "numal-food-02",
    "fbg",
    "fes",
    "flo",
    "fluorine-gas",
    "fluorophore",
    "gaas",
    "gbl",
    "gd-crystal",
    "gd-metal",
    "gd-mixture",
    "gd-oxalate",
    "gd-stripped-solution",
    "microwave-satellite",
    "gearbox-mk01",
    "gearbox-mk02",
    "gearbox-mk03",
    "gearbox-mk04",
    "glycidylamine",
    "hardener",
    "hbr",
    "heating-system",
    "hexafluoroacetone",
    "hfip",
    "hts-coil",
    "hydraulic-system-mk01",
    "hydraulic-system-mk02",
    "inside-turbine",
    "intermetallics",
    "inverse-opal",
    "iron-nanoparticles",
    "lead-acetate",
    "libr",
    "lithium-hydroxide",
    "lithium-niobate-nano",
    "lithium",
    "magnetic-ring",
    "mechanical-parts-01",
    "mechanical-parts-02",
    "mechanical-parts-03",
    "mechanical-parts-04",
    "metallic-core",
    "methyl-acrylate-2",
    "micro-cavity-core",
    "monocrystalline-cell",
    "monocrystalline-plate",
    "nacelle-mk01",
    "nacelle-mk02",
    "nacelle-mk03",
    "nacelle-mk04",
    "nano-mesh",
    "nanocarrier",
    "neodymium-nitrate",
    "ometad",
    "oxalic-acid-2",
    "oxalic-acid",
    "oxidized-pan-fiber",
    "passivation-layer",
    "perovskite-nickelate",
    "photonic-chip",
    "photonic-crystal",
    "photosensitive-dye",
    "phthalic-anhydride",
    "polished-glass-surface",
    "polishing-wheel",
    "polycrystalline-cell",
    "polycrystalline-plate",
    "pre-carbon-fiber",
    "pre-fiber-1-buffed",
    "pre-fiber-1",
    "processed-fatty-acids",
    "ptcda",
    "pvp",
    "pyridine",
    "quasicrystal",
    "rhodamine-b",
    "rotor-m",
    "rotor-mk01",
    "rotor-mk02",
    "rotor-mk03",
    "rotor-mk04",
    "rotor",
    "sb-oxide-01",
    "sb-oxide-02",
    "sb-oxide-02a",
    "sb-oxide-04",
    "sb-silicate",
    "sc-engine",
    "sc-stator",
    "self-assembly-monolayer",
    "shaft-mk01",
    "silica-shell",
    "silicon-wafer-2",
    "silicon-wafer-3",
    "silver-nitrate",
    "sodium-citrate",
    "sodium-cyanate",
    "stannous-chloride",
    "stator",
    "stripped-th",
    "th-oxalate",
    "time-crystal",
    "triethoxysilane",
    "triphenylanime",
    "utility-box-mk01",
    "utility-box-mk02",
    "utility-box-mk03",
    "utility-box-mk04",
    "vane-mk01",
    "vane-mk02",
    "vane-mk03",
    "vane-mk04",
    "yaw-drive-mk01",
    "yaw-drive-mk02",
    "yaw-drive-mk03",
    "yaw-drive-mk04",
    "yellow-dextrine",
    "replicator-mova",

    "light-n2",
    "p-dope2",

    -- Fluids
    "allylamine",
    "aniline-01",
    "aniline-02",
    "bca",
    "buffer-solution",
    "hot-solution",
    "hydrofluoric-acid",
    "jacket-bio-oil",
    "jacket-bio-ore",
    "liquid-manure-oxygen",
    "organic-acid-anhydride",
    "perylene",
    "phosphorus-tricloride",
    "silicate-solution",
}

--adding to module limitation list
py.allow_productivity(recipes_list)

if register_cache_file ~= nil then
    register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pyrawores", "pyhightech", "pypetroleumhandling", "pyalienlife", "pyalternativeenergy"}, "__pyalternativeenergy__/cached-configs/pyalienlife+pyalternativeenergy+pycoalprocessing+pyfusionenergy+pyhightech+pyindustry+pypetroleumhandling+pyrawores")
end
