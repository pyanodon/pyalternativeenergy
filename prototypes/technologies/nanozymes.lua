TECHNOLOGY {
    type = "technology",
    name = "nanozymes",
    icon = "__pyalternativeenergygraphics__/graphics/technology/nanozymes.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mega-farm-mova"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack",   3},
            {"chemical-science-pack",   2},
            {"production-science-pack", 1},
        },
        time = 45
    }
}
