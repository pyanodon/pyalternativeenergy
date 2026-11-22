RECIPE {
    type = "recipe",
    name = "nickel-carbonyl",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
        {type = "item",  name = "nickel-plate",   amount = 5},
        {type = "item",  name = "chromium",       amount = 2},
        {type = "fluid", name = "carbon-dioxide", amount = 60},
    },
    results =
    {
        {type = "fluid", name = "nickel-carbonyl", amount = 50}
    },
    --main_product = "butanol",
}:add_unlock("biofet")

FLUID {
    type = "fluid",
    name = "nickel-carbonyl",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nickel-carbonyl.png",
    icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.807, g = 0.1, b = 0.1},
    flow_color = {r = 1, g = 1, b = 1},
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
