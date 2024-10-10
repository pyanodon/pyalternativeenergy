RECIPE {
    type = "recipe",
    name = "mother-liquor",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "r4",               amount = 100},
        {type = "item",  name = "sodium-carbonate", amount = 1},
        {type = "item",  name = "flask",            amount = 1},
    },
    results = {
        {type = "fluid", name = "mother-liquor",     amount = 100},
        {type = "item",  name = "lithium-carbonate", amount = 1},
    },
    main_product = "lithium-carbonate",
}:add_unlock("lithium-processing")

RECIPE {
    type = "recipe",
    name = "mother-liquor-prime",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hot-solution", amount = 100},
        {type = "item",  name = "chromium",     amount = 5},
    },
    results = {
        {type = "fluid", name = "mother-liquor", amount = 20},
    },
    --main_product = "r2",
}:add_unlock("lithium-processing")

FLUID {
    type = "fluid",
    name = "mother-liquor",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mother-liquor.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.278, g = 0.643, b = 0.243},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
