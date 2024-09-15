RECIPE {
    type = "recipe",
    name = "organic-pulp-01",
    category = "pulp",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "rennea-seeds", amount = 80},
    },
    results = {
        {type = "fluid", name = "organic-pulp", amount = 50},
    },
    main_product = "organic-pulp",
}:add_unlock("mof")

RECIPE {
    type = "recipe",
    name = "organic-pulp-03",
    category = "pulp",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "grod", amount = 120},
    },
    results = {
        {type = "fluid", name = "organic-pulp", amount = 50},
    },
    main_product = "organic-pulp",
}:add_unlock("mof")

RECIPE {
    type = "recipe",
    name = "organic-pulp-02",
    category = "pulp",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "arqad", amount = 2},
        {type = "item", name = "vrauks", amount = 2},
    },
    results = {
        {type = "fluid", name = "organic-pulp", amount = 50},
    },
    main_product = "organic-pulp",
}:add_unlock("mof")

FLUID {
    type = "fluid",
    name = "organic-pulp",
    icon = "__pyalternativeenergygraphics__/graphics/icons/organic-pulp.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    --heat_capacity = "1KJ",
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
	}
