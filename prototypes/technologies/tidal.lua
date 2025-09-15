TECHNOLOGY {
    type = "technology",
    name = "tidal-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/tidal-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"renewable-mk01", "machine-components-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tidal-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/technology/tidal-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tidal-mk01", "renewable-mk02", "machine-components-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tidal-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/technology/tidal-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tidal-mk02", "renewable-mk03", "machine-components-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tidal-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/technology/tidal-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tidal-mk03", "renewable-mk04", "machine-components-mk04"},
    effects = {},
    unit = {
        count = 450,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"military-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 60
    }
}
