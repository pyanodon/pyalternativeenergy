TECHNOLOGY {
    type = "technology",
    name = "biofet",
    icon = "__pyalternativeenergygraphics__/graphics/technology/biofet.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tholin-mk01", "rare-earth-tech"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"military-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 60
    }
}
