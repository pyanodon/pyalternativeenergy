TECHNOLOGY {
    type = "technology",
    name = "advanced-robotics",
    icon = "__pyalternativeenergygraphics__/graphics/technology/advanced-robotics.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"construction-robotics", "logistic-robotics"},
    effects = {
        {type = "unlock-recipe", recipe = "py-logistic-robot-mk03"},
        {type = "unlock-recipe", recipe = "py-construction-robot-mk03"},
        {type = "unlock-recipe", recipe = "py-roboport-mk03"},
    },
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 30
    }
}
