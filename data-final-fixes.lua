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

--[[
local com_recipes = {}

for r, recipe in pairs(data.raw.recipe) do
    if recipe.category == "combustion" then
        local tech_name
        for t, tech in pairs(data.raw.technology) do
            if tech.effects ~= nil then
                for e, effect in pairs(tech.effects) do
                    if effect.type == "unlock-recipe" then
                        if effect.recipe == recipe.name then
                            tech_name = tech.name
                        end
                    end
                end
            end
        end
        table.insert(com_recipes, "RECIPE('" .. recipe.name .. "'):remove_unlock('" .. tech_name .. "')")
    end
end

log(serpent.block(com_recipes))
]]--
