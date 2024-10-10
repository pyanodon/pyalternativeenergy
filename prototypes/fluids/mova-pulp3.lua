RECIPE {
    type = "recipe",
    name = "mova-pulp3",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "mova-pulp2",       amount = 50},
        {type = "fluid", name = "vacuum",           amount = 100},
        {type = "item",  name = "filtration-media", amount = 2},
    },
    results = {
        {type = "fluid", name = "mova-pulp3", amount = 50},
        {type = "item",  name = "biomass",    amount = 2},
    },
    main_product = "mova-pulp3",
}:add_unlock("nanozymes")

FLUID {
    type = "fluid",
    name = "mova-pulp3",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mova-pulp3.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    --heat_capacity = "1kJ",
    base_color = {r = 0.415, g = 0.258, b = 0.513},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
