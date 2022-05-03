TECHNOLOGY {
    type = "technology",
    name = "wind-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/wind-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'renewable-mk01'},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'wind-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/wind-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'wind-mk01','renewable-mk02'},
    dependencies = {"wind-mk01"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'wind-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/wind-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'wind-mk02','renewable-mk03'},
    dependencies = {"wind-mk02"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'wind-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/wind-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'wind-mk03','renewable-mk04','intermetallics-mk04'},
    dependencies = {"wind-mk03"},
    effects = {},
    unit = {
        count = 450,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}
