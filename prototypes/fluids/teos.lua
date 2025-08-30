RECIPE({
    type = "recipe",
    name = "teos",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item",  name = "silicon",  amount = 5 },
        { type = "fluid", name = "chlorine", amount = 30 },
        { type = "fluid", name = "ethanol",  amount = 100 },
    },
    results = {
        { type = "fluid", name = "teos",              amount = 50 },
        { type = "fluid", name = "hydrogen-chloride", amount = 30 },
    },
    main_product = "teos",
}):add_unlock("sb-silicate")

FLUID({
    type = "fluid",
    name = "teos",
    icon = "__pyalternativeenergygraphics__/graphics/icons/teos.png",
    icon_size = 64,
    default_temperature = 10,
    --heat_capacity = "1kJ",
    base_color = { r = 1, g = 1, b = 1 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "a",
})
