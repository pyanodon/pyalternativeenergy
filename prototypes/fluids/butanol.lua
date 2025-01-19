RECIPE {
    type = "recipe",
    name = "propene-to-butanol",
    ingredients =
    {
        {type = "fluid", name = "propene",        amount = 50},
        {type = "fluid", name = "hydrogen",       amount = 50},
        {type = "fluid", name = "carbon-dioxide", amount = 25}
    },
    results =
    {
        {type = "fluid", name = "butanol", amount = 50}
    },
    main_product = "butanol",
    category = "electrolyzer"
}:add_unlock("tbp")

FLUID {
    type = "fluid",
    name = "butanol",
    icon = "__pyalternativeenergygraphics__/graphics/icons/butanol.png",
    icon_size = 64,
    default_temperature = 10,
    heat_capacity = "1kJ",
    base_color = {r = 0.807, g = 0.949, b = 0.941},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
