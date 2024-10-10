FLUID {
    type = "fluid",
    name = "perylene",
    icon = "__pyalternativeenergygraphics__/graphics/icons/perylene.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
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
    name = "perylene",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "tar",           amount = 100},
        {type = "item",  name = "nexelit-plate", amount = 2},
        {type = "item",  name = "navens",        amount = 5},
        {type = "item",  name = "p2s5",          amount = 5},
        {type = "fluid", name = "benzene",       amount = 150},
    },
    results = {
        {type = "fluid", name = "perylene", amount = 50},
    },
    --main_product = "eg-si",
}:add_unlock("intermetallics-mk02")
