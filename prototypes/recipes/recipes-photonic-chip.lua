RECIPE {
    type = "recipe",
    name = "photonic-chip",
    category = "electronic",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fdtd", amount = 1},
        {type = "item", name = "fbg", amount = 2},
        {type = "item", name = "anti-reflex-glass", amount = 2},
        {type = "item", name = "biopolymer", amount = 3},
        {type = "item", name = "optical-fiber", amount = 3},
        {type = "item", name = "lithium-niobate", amount = 5},
        {type = "item", name = "colloidal-silica", amount = 2},
        {type = "fluid", name = "vacuum", amount = 500},
    },
    results = {
        {type = "item", name = "photonic-chip", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")
