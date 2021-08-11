local fun = require("__pyrawores__/prototypes/functions/functions")

RECIPE("20-u-powder"):remove_unlock("uranium-mk01")
RECIPE("u-pulp-01"):remove_ingredient('20-u-powder'):add_ingredient({type = "item", name = "powdered-u", amount = 5}):replace_ingredient('sulfuric-acid','hydrogen-peroxide')
fun.results_replacer("u-rich-pulp","u-rich-pulp", "yellow-cake", 15)

RECIPE {
    type = "recipe",
    name = "yellow-cake-uf6",
    category = "hydroclassifier", --pyfe screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "yellow-cake", amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 100}
    },
    results = {
        {type = "fluid", name = "uf6", amount = 100, temperature = 0.7},
    },
    main_product = "uf6",
    icon = "__pyraworesgraphics__/graphics/icons/powdered-u-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

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

    local name = string.format( "%.2f", tostring(u235))

    RECIPE {
        type = "recipe",
        name = "uf6-" .. string.gsub(name, "%.", ",") .. "%",
        category = "gas-separator",
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

    local name = string.format( "%.2f", tostring(u235))

    RECIPE {
        type = "recipe",
        name = "Depleted-uf6-" .. string.gsub(name, "%.", ",") .. "%",
        category = "gas-separator",
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

end

RECIPE {
    type = "recipe",
    name = "Depleted-uf6-to-u-oxide",
    category = "evaporator",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "uf6", amount = 100, maximum_temperature = 0.15}
    },
    results = {
        {type = "item", name = "uranium-238", amount = 10},
    },
    main_product = "uranium-238",
    subgroup = "py-rawores-uranium",
    order = "depleted-uranium-" .. recipe_num
}--:add_unlock("uranium-mk03")
