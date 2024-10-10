RECIPE {
    type = "recipe",
    name = "aniline-01",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nxsb-alloy",   amount = 2},
        {type = "fluid", name = "nitrobenzene", amount = 100},
    },
    results = {
        {type = "fluid", name = "aniline", amount = 50},
    },
    main_product = "aniline",
}:add_unlock("additives")

RECIPE {
    type = "recipe",
    name = "aniline-02",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "phenol",  amount = 10},
        {type = "fluid", name = "ammonia", amount = 100},
    },
    results = {
        {type = "fluid", name = "aniline", amount = 50},
    },
    main_product = "aniline",
}:add_unlock("additives")

FLUID {
    type = "fluid",
    name = "aniline",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aniline.png",
    icon_size = 64,
    default_temperature = 15,
    base_flow_rate = 100,
    --heat_capacity = "1kJ",
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
}
