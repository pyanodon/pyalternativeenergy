local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

--TECHNOLOGY--
TECHNOLOGY("fluid-processing-machines-1"):remove_pack('logistic-science-pack'):remove_prereq('electric-engine')
TECHNOLOGY("plastics"):remove_pack('logistic-science-pack')
TECHNOLOGY("machines-mk01"):add_pack("py-science-pack-1")
TECHNOLOGY("machines-mk04"):add_pack("military-science-pack")

TECHNOLOGY("uranium-mk01"):add_pack("chemical-science-pack")

--BUILDINDS--
--RECIPE("bof-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
--RECIPE("smelter-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 15})
RECIPE("casting-unit-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("eaf-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
--RECIPE("electrolyzer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("flotation-cell-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("hydroclassifier-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("impact-crusher-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("leaching-station-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 4})
RECIPE("scrubber-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("wet-scrubber-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("salt-mine"):add_ingredient({type = "item", name = "intermetallics", amount = 20})
RECIPE("salt-mine"):remove_unlock("electrolysis"):add_unlock("energy-1")

RECIPE("bof-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("smelter-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 15})
RECIPE("casting-unit-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("eaf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("electrolyzer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("flotation-cell-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("hydroclassifier-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("impact-crusher-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("leaching-station-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 4})
RECIPE("scrubber-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("wet-scrubber-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("aluminium-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("chromium-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("coal-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("copper-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("iron-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("lead-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("nexelit-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("nickel-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("quartz-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("tin-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("uranium-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("zinc-mine"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):add_ingredient{type = "item", name = "crco-alloy", amount = 10}
RECIPE("sinter-unit"):replace_ingredient('intelligent-unit','advanced-circuit'):remove_unlock('machines-mk05'):add_unlock('smelters-mk02'):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20})
RECIPE("sinter-unit"):replace_ingredient("advanced-foundry-mk03", "advanced-foundry-mk02"):replace_ingredient("super-alloy", "stainless-steel")
RECIPE("drp"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 20}):replace_ingredient("processing-unit", "advanced-circuit")
RECIPE("drp"):remove_unlock("machines-mk04"):add_unlock("smelters-mk02")

RECIPE("bof-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("smelter-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 15})
RECIPE("casting-unit-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("eaf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6})
RECIPE("electrolyzer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("flotation-cell-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("hydroclassifier-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("impact-crusher-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6})
RECIPE("leaching-station-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 4})
RECIPE("scrubber-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("wet-scrubber-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6})

RECIPE("bof-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("smelter-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 15}):add_ingredient({type = "item", name = "sc-engine", amount = 4})
RECIPE("casting-unit-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("eaf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("electrolyzer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("flotation-cell-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("hydroclassifier-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("impact-crusher-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("leaching-station-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 4}):add_ingredient({type = "item", name = "sc-engine", amount = 2})
RECIPE("scrubber-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10}):add_ingredient({type = "item", name = "sc-engine", amount = 3})
RECIPE("wet-scrubber-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6}):add_ingredient({type = "item", name = "sc-engine", amount = 2})

--RECIPES--
RECIPE("plastic3"):replace_ingredient('nitrobenzene','aniline')
RECIPE("battery-1"):replace_ingredient("lead-plate", "pbsb-alloy"):remove_unlock("battery"):add_unlock("battery-mk02")
RECIPE("battery-2"):replace_ingredient("lead-plate", "pbsb-alloy"):remove_unlock("battery"):add_unlock("battery-mk02")

--RECIPE MOVING--
RECIPE("eaf-mk01"):remove_unlock('smelters-mk01'):add_unlock('machines-mk01')
RECIPE("zinc-plate-1"):remove_unlock("zinc-mk01"):add_unlock("vacuum-tube-electronics")
RECIPE("nickel-plate-1"):remove_unlock("nickel-mk01"):add_unlock("plastics")
RECIPE("water-saline"):remove_unlock("electrolysis"):add_unlock("energy-1")
RECIPE("gravel-saline-water"):remove_unlock("electrolysis"):add_unlock("crusher")
RECIPE("p2s5"):remove_unlock("additives"):add_unlock("intermetallics-mk02")
RECIPE("p2s5-2"):remove_unlock("additives"):add_unlock("intermetallics-mk02")

--removing old nuclear reactor fuel cells as they wont do anything now.
RECIPE("uranium-fuel-cell"):remove_unlock('uranium-mk01')--:add_unlock('uranium-processing')
RECIPE("uranium-fuel-cell-mk02"):remove_unlock('uranium-mk01')
RECIPE("uranium-fuel-cell-mk03"):remove_unlock('uranium-mk02')
RECIPE("uranium-fuel-cell-mk04"):remove_unlock('uranium-mk03')
RECIPE("uranium-fuel-cell-mk05"):remove_unlock('uranium-mk04')
RECIPE("nuclear-fuel-reprocessing-mk04"):remove_unlock('uranium-mk03')
RECIPE("nuclear-fuel-reprocessing-mk05"):remove_unlock('uranium-mk04')
RECIPE("fuelrod-mk01"):remove_unlock('fuel-production')
RECIPE("fuelrod-mk01-1"):remove_unlock('uranium-mk01')
RECIPE("fuelrod-mk01-2"):remove_unlock('uranium-mk02')
RECIPE("fuelrod-mk01-3"):remove_unlock('uranium-mk03')
RECIPE("fuelrod-mk01-4"):remove_unlock('uranium-mk01')

--tweaked by pyal from fuel production to uranium techs. now removing completely
RECIPE('fuelrod-mk02'):remove_unlock('uranium-mk01')
RECIPE('fuelrod-mk03'):remove_unlock('uranium-mk02')
RECIPE('fuelrod-mk04'):remove_unlock('uranium-mk03')
RECIPE('fuelrod-mk05'):remove_unlock('uranium-mk04')
RECIPE("nuclear-fuel-reprocessing-mk02"):remove_unlock("nuclear-fuel-reprocessing")
RECIPE("nuclear-fuel-reprocessing-mk03"):remove_unlock("nuclear-fuel-reprocessing")
--TODO:update recipes using the different rods to use different nuclear waste products. aka pu, am, cm
RECIPE("nuclear-fuel"):remove_unlock('uranium-mk04'):add_unlock('nuclear-power-mk04')

RECIPE("fuelrod-mk01-1"):replace_ingredient('20-u-powder', 'u-235'):add_unlock('uranium-processing')
RECIPE("fuelrod-mk02"):replace_ingredient('20-u-powder', 'am-243'):replace_ingredient("lead-container", "coated-container"):add_unlock('nuclear-power')
RECIPE("fuelrod-mk03"):replace_ingredient('40-u-powder', 'pu-239'):add_unlock('nuclear-power-mk02')
RECIPE("fuelrod-mk03"):replace_ingredient("lead-conatiner", "coated-container")

--need fuelrod mk04 and mk05 from thorium
--fuelrod-mk04 with use curium-250 from califorium
--fuelrod mk05 will use Polonium-210 from u234 from a series of alpha decays aka helium particles

RECIPE("fuelrod-mk04"):replace_ingredient('70-u-powder', 'cm-250'):add_unlock('nuclear-power-mk03')
RECIPE("fuelrod-mk05"):replace_ingredient('yellow-cake', 'po-210'):add_unlock('nuclear-power-mk04')

--removing old enrichement recipes
RECIPE("u-15"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-15-2"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-20"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-23"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-30"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-33"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-40"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-50"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-65"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-70"):remove_unlock('uranium-mk03'):set_fields{hidden = true, enabled = false}
RECIPE("u-73"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}
RECIPE("u-75"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}
RECIPE("u-79"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}
RECIPE("u-79-2"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}
RECIPE("u-81"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}
RECIPE("u-83"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}

RECIPE("yellow-cake"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}
RECIPE("yellow-cake-u235"):remove_unlock('uranium-mk04'):set_fields{hidden = true, enabled = false}


--move uranium ore processing recipes
RECIPE("grade-1-u"):remove_unlock('uranium-mk01'):add_unlock('uranium-processing')
RECIPE("grade-1-u-recrush"):remove_unlock('uranium-mk01'):add_unlock('uranium-processing')
RECIPE("grade-2-u-crush"):remove_unlock('uranium-mk01'):add_unlock('uranium-processing')

RECIPE("20-u-powder"):remove_unlock("uranium-mk01"):set_fields{hidden = true, enabled = false}
RECIPE("40-u-powder"):remove_unlock("uranium-mk02"):set_fields{hidden = true, enabled = false}
RECIPE("70-u-powder"):remove_unlock("uranium-mk03"):set_fields{hidden = true, enabled = false}
--RECIPE("u-pulp-01"):remove_ingredient('20-u-powder'):add_ingredient({type = "item", name = "powdered-u", amount = 5}):replace_ingredient('sulfuric-acid','hydrogen-peroxide'):remove_unlock('uranium-mk02'):add_unlock('uranium-mk01')
--TODO:look into uranium issues with pyro changes
RECIPE("u-pulp-01"):remove_unlock('uranium-mk01'):add_unlock('uranium-processing')
RECIPE("u235-pulp-01"):remove_unlock('uranium-mk01')
RECIPE("u-pulp-02"):remove_unlock('uranium-mk02'):add_unlock('uranium-processing')
RECIPE("u-pulp-03"):remove_unlock('uranium-mk02'):add_unlock('uranium-processing')

RECIPE("pregnant-solution-01"):remove_unlock('uranium-mk04')
RECIPE("vanadium-mixture"):remove_unlock('uranium-mk04')

RECIPE("heavy-fermion"):remove_ingredient("40-u-powder")

RECIPE("space-science-pack"):replace_ingredient("yellow-cake", "pu-238")

RECIPE("casting-lead-container"):add_ingredient{"sb-oxide", 4}
RECIPE("hotair-casting-lead-container"):add_ingredient{"sb-oxide", 4}

FUN.results_replacer("u-rich-pulp","u-rich-pulp", "yellow-cake", 15)
RECIPE("u-rich-pulp"):remove_unlock('uranium-mk02'):add_unlock('uranium-processing')

RECIPE {
  type = "recipe",
  name = "uranium-fuel-cell",
  enabled = false,
  energy_required = 15,
  ingredients =
    {
      {"aluminium-plate", 5},
      {"u-235", 2},
      {"u-238", 15}
    },
  results = {
      {"uranium-fuel-cell", 1}
  },
}--:add_unlock('uranium-processing')

--[[
RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk02",
    enabled = false,
    energy_required = 15,
    ingredients =
      {
        {"aluminium-plate", 5},
        {"pu-239", 5},
        {"u-238", 10}
      },
    results = {
        {"uranium-fuel-cell-mk02", 1}
    },
  }--:add_unlock('uranium-processing')
]]--

  RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk03",
    enabled = false,
    energy_required = 15,
    ingredients =
      {
        {"aluminium-plate", 5},
        {"u-233", 20},
      },
    results = {
        {"uranium-fuel-cell-mk03", 1}
    },
  }:add_unlock('nuclear-power-mk04')--returns 2

  RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk04",
    enabled = false,
    energy_required = 15,
    ingredients =
      {
        {"aluminium-plate", 5},
        {"u-235", 20},
      },
    results = {
        {"uranium-fuel-cell-mk04", 1}
    },
  }:add_unlock('nuclear-power-mk04')--returns 3

--TODO:deal with u-waste vanadium

--replacing pyros uranium isotope seperation with new system
local total_recipes = 20
local starting_enrichment = 0.7
local recipe_num = 1
local enrichment = starting_enrichment
local multiplier = (100 / starting_enrichment)^(1 / total_recipes)
-- log("Multiplier: " .. multiplier)

while enrichment < 100 do

    local u235 = enrichment * multiplier
    local u238 = enrichment / multiplier

    if u235 > 100 then
        break
    end

    local name = string.format( "%.2f", tostring(u235))
    local recipe_name = "uf6-" .. string.gsub(name, "%.", ",") .. "%"

    RECIPE {
        type = "recipe",
        name = recipe_name,
        category = "gas-separator",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "uf6", amount = 400, minimum_temperature = math.floor(enrichment*100), maximum_temperature = math.floor(u235*100) - 1}
        },
        results = {
            {type = "fluid", name = "uf6", amount = 200, temperature = math.floor(u235*100)},
            {type = "fluid", name = "uf6", amount = 200, temperature = math.floor(u238*100)},
        },
        main_product = "uf6",
        subgroup = "py-rawores-uranium",
        order = string.format("uranium-%02u", recipe_num),
        localised_name = {"recipe-name.uf6", name}
    }--:add_unlock("uranium-mk01")

    -- log(serpent.block(data.raw.recipe[recipe_name]))

    if u235 < 2.5 then
        RECIPE(recipe_name):add_unlock('uranium-mk01')
    elseif u235 >= 2.5 and u235 < 10 then
        RECIPE(recipe_name):add_unlock('uranium-mk02')
    elseif u235 >= 10 and u235 < 30 then
        RECIPE(recipe_name):add_unlock('uranium-mk03')
    elseif u235 >= 30 then
        RECIPE(recipe_name):add_unlock('uranium-mk04')
    end

    enrichment = u235
    recipe_num = recipe_num + 1
end

local duf_min = 0.1
local depleted_recipes = 5
local depleted_multiplier = (starting_enrichment / duf_min)^(1 / math.floor(depleted_recipes + 1))
-- log("Depleted multiplier: " .. multiplier)
local duf = starting_enrichment / multiplier
recipe_num = 1

while duf > duf_min do
    local u235 = duf * depleted_multiplier
    local u238 = duf / depleted_multiplier

    if recipe_num == 1 then
        u235 = starting_enrichment
    elseif recipe_num == depleted_recipes then
        u238 = duf_min
    end

    local name = string.format( "%.2f", tostring(u238))

    RECIPE {
        type = "recipe",
        name = "depleted-uf6-" .. string.gsub(name, "%.", ",") .. "%",
        category = "gas-separator",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "uf6", amount = 400, minimum_temperature = math.floor(duf*100), maximum_temperature = math.floor(u235*100) - 1}
        },
        results = {
            {type = "fluid", name = "uf6", amount = 200, temperature = math.floor(u235*100)},
            {type = "fluid", name = "uf6", amount = 200, temperature = math.floor(u238*100)},
        },
        main_product = "uf6",
        subgroup = "py-rawores-uranium-depleted",
        order = string.format("depleted-uranium-%02u", recipe_num),
        localised_name = {"recipe-name.depleted-uf6", name}
    }:add_unlock("uranium-mk01")

    duf = u238
    recipe_num = recipe_num + 1
end

RECIPE {
    type = "recipe",
    name = "Depleted-uf6-to-u-oxide",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "uf6", amount = 400, maximum_temperature = math.floor(duf_min*100)}
    },
    results = {
        {type = "item", name = "u-238", amount = 20},
    },
    -- main_product = "u-238",
    subgroup = "py-rawores-uranium",
    order = "depleted-uranium-" .. recipe_num
}:add_unlock("uranium-mk01")
