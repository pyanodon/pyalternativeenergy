FLUID {
    type = "fluid",
    name = "organic-acid-anhydride",
    icon = "__pyalternativeenergygraphics__/graphics/icons/organic-acid-anhydride.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 1.0, g = 1.0, b = 1.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}

RECIPE {
    type = "recipe",
    name = "organic-acid-anhydride",
    category = "mixer", --change for future chemical plant
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "phosphoric-acid", amount = 100},
        {type = "item", name = "p2s5", amount = 5},
        {type = "fluid", name = "geothermal-water", amount = 100},
        {type = "fluid", name = "fatty-acids", amount = 100},
    },
    results = {
        {type = "fluid", name = "organic-acid-anhydride", amount = 100},
    },
    --main_product = "eg-si",
}:add_unlock("intermetallics-mk02")