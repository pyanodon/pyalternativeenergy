TECHNOLOGY {
    type = "technology",
    name = "battery-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/battery-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"machines-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "battery-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/technology/battery-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"basic-electronics", "battery-mk01"},
    dependencies = {"battery-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "battery-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/technology/battery-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"chitin", "battery-mk02"},
    dependencies = {"battery-mk02"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "battery-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/technology/battery-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"advanced-circuit", "battery-mk03"},
    dependencies = {"battery-mk03"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"military-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 60
    }
}
