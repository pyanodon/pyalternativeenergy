py.global_item_replacer("uranium-238", "u-238")
py.global_item_replacer("uranium-235", "u-235")

data.raw.recipe["neutron-pyvoid-fluid"] = nil
data.raw.recipe["vitrified-glass-pyvoid"] = nil

local deadrecipes = {}
for r, recipe in pairs(data.raw.recipe) do
    if string.match(recipe.name, "recycling") ~= nil then
        if data.raw.item[recipe.ingredients[1].name] == nil or data.raw.item[recipe.results[1].name] == nil then
            table.insert(deadrecipes, recipe.name)
        end
    end
end

for r, recipe in pairs(deadrecipes) do
    data.raw.recipe[recipe] = nil
end
local deadrecipes = {}

for t, tech in pairs(data.raw.technology) do
    for e, effect in pairs(tech.effects) do
        if effect.type == "unlock-recipe" then
            if data.raw.recipe[effect.recipe] == nil then
                data.raw.technology[tech.name].effects[e] = nil
            end
        end
    end
end
