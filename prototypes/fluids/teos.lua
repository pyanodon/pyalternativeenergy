RECIPE {
    type = "recipe",
    name = "teos",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "ticl4", amount = 2},
        {type = "fluid", name = "ethanol", amount = 100},
    },
    results = {
        {type = "fluid", name = "teos", amount = 50},
        {type = "fluid", name = "hydrogen-chloride", amount = 30},
    },
    main_product = "teos",
}:add_unlock("intermetallics-mk03")

FLUID {
    type = "fluid",
    name = "teos",
    icon = "__pyalternativeenergygraphics__/graphics/icons/teos.png",
    icon_size = 64,
    default_temperature = 15,
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
