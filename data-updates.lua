local fun = require("__pyalienlife__/prototypes/functions/functions")

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

TECHNOLOGY("nuclear-fuel-reprocessing"):set_field{enabled = false} --BUG?
RECIPE('lithium-peroxide'):remove_unlock('filtration-mk02'):add_unlock('lithium-processing'):add_ingredient({type = "item", name = "lithium-hydroxide", amount = 2})
RECIPE("low-density-structure"):add_ingredient({type = "item", name = "cf", amount = 10})
RECIPE("arithmetic-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("decider-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("constant-combinator"):add_ingredient({type = "item", name = "battery", amount = 1})
RECIPE("spidertron"):add_ingredient({type = "item", name = "sc-engine", amount = 25})
RECIPE("artillery-wagon"):add_ingredient({type = "item", name = "sc-engine", amount = 8})
RECIPE("satellite"):add_ingredient({type = "item", name = "sc-engine", amount = 1}):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "solar-panel-mk04", amount = 2})
RECIPE("utility-science-pack"):add_ingredient({type = "item", name = "sc-engine", amount = 1})
RECIPE("space-science-pack"):add_ingredient({type = "item", name = "sc-engine", amount = 3}):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 1}):add_ingredient({type = "item", name = "milfe", amount = 1})
RECIPE("nv-center"):add_ingredient({type = "item", name = "mqdc", amount = 1}):add_ingredient({type = "item", name = "th-oxide", amount = 1})
RECIPE("production-science-pack"):add_ingredient({type = "item", name = "low-density-structure", amount = 3}):add_ingredient({type = "item", name = "super-steel", amount = 5}):add_ingredient({type = "item", name = "gd-metal", amount = 1})

RECIPE('py-construction-robot-01'):add_ingredient({type = 'item', name = 'gearbox-mk01', amount = 1})
RECIPE('py-construction-robot-02'):add_ingredient({type = 'item', name = 'gearbox-mk02', amount = 1}):add_ingredient({type = 'item', name = 'eva', amount = 2})
RECIPE('construction-robot-ht'):add_ingredient({type = 'item', name = 'gearbox-mk04', amount = 1}):replace_ingredient('py-construction-robot-01', 'c-pynobot-mk03'):add_ingredient({type = 'item', name = 'quantum-battery', amount = 1}):add_ingredient({type = 'item', name = 'nano-mesh', amount = 2}):add_ingredient({type = 'item', name = 'sc-engine', amount = 1})

RECIPE('py-logistic-robot-01'):add_ingredient({type = 'item', name = 'gearbox-mk01', amount = 1}):add_ingredient({type = 'item', name = 'duralumin', amount = 3})
RECIPE('py-logistic-robot-02'):add_ingredient({type = 'item', name = 'rayon', amount = 3})
RECIPE('logistic-robot-ht'):add_ingredient({type = 'item', name = 'gearbox-mk04', amount = 1}):replace_ingredient('py-logistic-robot-01', 'l-pynobot-mk03'):add_ingredient({type = 'item', name = 'quantum-battery', amount = 1}):add_ingredient({type = 'item', name = 'nano-mesh', amount = 2}):add_ingredient({type = 'item', name = 'sc-engine', amount = 1})

RECIPE('py-construction-robot-01'):add_ingredient{'battery-mk01', 2}
RECIPE('py-logistic-robot-01'):add_ingredient{'battery-mk01', 2}

ITEM("simik"):set_field{fuel_category = 'simik'}:set_field{fuel_value = '800MJ'}

RECIPE("subcritical-water-01"):change_category("heat-exchanger")
RECIPE("subcritical-water-02"):change_category("heat-exchanger")

for _, recipe in pairs(data.raw.recipe) do
    local r = RECIPE(recipe)
    r:replace_ingredient("battery", "battery-mk01")
    fun.results_replacer(r.name, "battery", "battery-mk01")

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
