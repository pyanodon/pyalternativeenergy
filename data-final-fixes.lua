
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
