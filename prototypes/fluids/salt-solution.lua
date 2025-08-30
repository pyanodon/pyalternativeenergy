RECIPE({
    type = "recipe",
    name = "salt-solution",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients = {
        { type = "item",  name = "sb-silicate",      amount = 1 },
        { type = "fluid", name = "geothermal-water", amount = 150 },
    },
    results = {
        { type = "item",  name = "pu-238",        amount = 1,  probability = 0.01 },
        { type = "fluid", name = "salt-solution", amount = 100 },
    },
    main_product = "salt-solution",
}):add_unlock("lithium-processing")

FLUID({
    type = "fluid",
    name = "salt-solution",
    icon = "__pyalternativeenergygraphics__/graphics/icons/salt-solution.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = { r = 0.439, g = 0.639, b = 0.576 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
})
