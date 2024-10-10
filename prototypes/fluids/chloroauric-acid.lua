RECIPE {
    type = "recipe",
    name = "chloroauric-acid",
    category = "electrolyzer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "gold-plate",        amount = 2},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
        {type = "item",  name = "graphite",          amount = 3},
    },
    results = {
        {type = "fluid", name = "chloroauric-acid", amount = 50},
    },
    main_product = "chloroauric-acid",
}:add_unlock("intermetallics-mk03")

FLUID {
    type = "fluid",
    name = "chloroauric-acid",
    icon = "__pyalternativeenergygraphics__/graphics/icons/chloroauric-acid.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    --heat_capacity = "1kJ",
    base_color = {r = 0.996, g = 0.831, b = 0.313},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
