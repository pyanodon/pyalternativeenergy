local fun = require("__pyrawores__/prototypes/functions/functions")

--replacing pyros uranium isotope seperation with new system
local previous_enrichment = 0.7
local recipe_num = 1
local enrichment = 0.7
local duf = 0.1

while enrichment < 100 do

    local u_shift = enrichment * 0.25
    local u235 = enrichment + u_shift
    local u238 = enrichment - u_shift

    if u235 > 100 then
        break
    end

    RECIPE {
        type = "recipe",
        name = "uf6-" .. math.floor(u235 * 100) .. "%",
        category = "evaporator",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type = "fluid", name = "uf6", amount = 100, minimum_temperature = previous_enrichment}
        },
        results = {
            {type = "fluid", name = "uf6", amount = 50, temperature = u235},
            {type = "fluid", name = "uf6", amount = 50, temperature = u238},
        },
        main_product = "uf6",
        subgroup = "py-rawores-uranium",
        order = "uranium-" .. recipe_num
    }--:add_unlock("uranium-mk03")

    previous_enrichment = u235
    enrichment = u235

    recipe_num = recipe_num + 1

end

previous_enrichment = duf

while duf < 0.7 do
    local u_shift = duf * 0.125
    local u235 = duf + (u_shift * 2)
    local u238 = duf - u_shift

    RECIPE {
        type = "recipe",
        name = "Depleted-uf6-" .. math.floor(u235 * 100) .. "%",
        category = "evaporator",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type = "fluid", name = "uf6", amount = 100, minimum_temperature = previous_enrichment}
        },
        results = {
            {type = "fluid", name = "uf6", amount = 50, temperature = u235},
            {type = "fluid", name = "uf6", amount = 50, temperature = u238},
        },
        main_product = "uf6",
        subgroup = "py-rawores-uranium",
        order = "depleted-uranium-" .. recipe_num
    }--:add_unlock("uranium-mk03")

    previous_enrichment = u235
    duf = u235

    recipe_num = recipe_num + 1

    log(serpent.block(data.raw.recipe["Depleted-uf6-" .. math.floor(u235 * 100) .. "%"]))

end
