
RECIPE {
    type = "recipe",
    name = "hydrofluoric-acid",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 75},
        {type = "item", name = "powdered-phosphate-rock", amount = 5},
        {type = "fluid", name = "prepared-quartz", amount = 50},
    },
    results = {
        {type = "fluid", name = "hydrofluoric-acid", amount = 200}
    },
    main_product = "hydrofluoric-acid",
}:add_unlock("uranium-mk01")

FLUID {
    type = "fluid",
    name = "hydrofluoric-acid",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hydrogen-fluoride.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.431, g = 0.556, b = 0.627},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
