TECHNOLOGY {
    type = "technology",
    name = "antimony-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/sb-01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"machines-mk01"},
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
    name = "antimony-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/technology/sb-02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"machines-mk02", "antimony-mk01"},
    dependencies = {"antimony-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "antimony-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/technology/sb-03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"machines-mk03", "antimony-mk02"},
    dependencies = {"antimony-mk02"},
    effects = {},
    unit = {
        count = 150,
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
    name = "antimony-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/technology/sb-04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"machines-mk04", "antimony-mk03"},
    dependencies = {"antimony-mk03"},
    effects = {},
    unit = {
        count = 150,
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
