local fun = require("__pyrawores__/prototypes/functions/functions")

--removing old nuclear reactor fuel cells as they wont do anything now.
RECIPE("uranium-fuel-cell"):remove_unlock('uranium-processing')
RECIPE("fuelrod-mk01"):remove_unlock('fuel-production')
RECIPE("fuelrod-mk01-2"):remove_unlock('uranium-mk03')
RECIPE("fuelrod-mk01-3"):remove_unlock('uranium-mk02')
RECIPE("fuelrod-mk01-4"):remove_unlock('uranium-mk01')

--tweaked by pyal from fuel production to uranium techs. now removing completely
RECIPE('fuelrod-mk02'):remove_unlock('uranium-mk02')
RECIPE('fuelrod-mk03'):remove_unlock('uranium-mk03')
RECIPE('fuelrod-mk04'):remove_unlock('uranium-mk04')
RECIPE('fuelrod-mk05'):remove_unlock('uranium-mk04')
--TODO:update recipes using the different rods to use different nuclear waste products. aka pu, am, cm

--removing old enrichement recipes
RECIPE("u-15"):remove_unlock('uranium-mk03')
RECIPE("u-15-2"):remove_unlock('uranium-mk03')
RECIPE("u-20"):remove_unlock('uranium-mk03')
RECIPE("u-23"):remove_unlock('uranium-mk03')
RECIPE("u-30"):remove_unlock('uranium-mk03')
RECIPE("u-33"):remove_unlock('uranium-mk03')
RECIPE("u-40"):remove_unlock('uranium-mk03')
RECIPE("u-50"):remove_unlock('uranium-mk03')
RECIPE("u-65"):remove_unlock('uranium-mk03')
RECIPE("u-70"):remove_unlock('uranium-mk03')
RECIPE("u-73"):remove_unlock('uranium-mk04')
RECIPE("u-75"):remove_unlock('uranium-mk04')
RECIPE("u-79-2"):remove_unlock('uranium-mk04')
RECIPE("u-81"):remove_unlock('uranium-mk04')
RECIPE("u-83"):remove_unlock('uranium-mk04')


RECIPE("20-u-powder"):remove_unlock("uranium-mk01")
RECIPE("u-pulp-01"):remove_ingredient('20-u-powder'):add_ingredient({type = "item", name = "powdered-u", amount = 5}):replace_ingredient('sulfuric-acid','hydrogen-peroxide'):remove_unlock('uranium-mk02'):add_unlock('uranium-mk01')
RECIPE("u-pulp-02"):remove_unlock('uranium-mk02'):add_unlock('uranium-mk01')
RECIPE("u-pulp-03"):remove_unlock('uranium-mk02'):add_unlock('uranium-mk01')
fun.results_replacer("u-rich-pulp","u-rich-pulp", "yellow-cake", 15):remove_unlock('uranium-mk02'):add_unlock('uranium-mk01')

--TODO:deal with u-waste vanadium

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
