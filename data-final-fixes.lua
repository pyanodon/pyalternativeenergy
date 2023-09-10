local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

FUN.global_item_replacer("uranium-238", "u-238")
FUN.global_item_replacer("uranium-235", "u-235")

--[[
local cent_recipes = {}

for r,recipe in pairs(data.raw.recipe) do
    if recipe.category == "centrifuging" then
        --cent_recipes[recipe.name] = recipe.energy_required
        table.insert(cent_recipes, "RECIPE(" .. recipe.name .. "):set_fields{energy_required = " .. recipe.energy_required * 10 .. "}")
    end
end

log(serpent.block(cent_recipes))
]]--

data.raw.recipe['neutron-pyvoid-fluid'] = nil