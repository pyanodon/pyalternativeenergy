RECIPE {
    type = "recipe",
    name = "dcm",
    category = "fbreactor", --chemical plant later
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "chlorine", amount = 50},
        {type = "fluid", name = "chloromethane", amount = 100},
        {type = "fluid", name = "hot-air", amount = 100},
    },
    results = {
        {type = "fluid", name = "dcm", amount = 50},
    },
    main_product = "dcm",
}:add_unlock("battery-mk04")

FLUID {
    type = "fluid",
    name = "dcm",
    icon = "__pyalternativeenergygraphics__/graphics/icons/dcm.png",
    icon_size = 64,
    default_temperature = 15,
    base_flow_rate = 100,
    --heat_capacity = "1KJ",
    base_color = {r = 0.0, g = 0.0, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
	}
