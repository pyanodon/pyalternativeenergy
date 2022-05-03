TECHNOLOGY {
    type = "technology",
    name = "coalplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/coalplant-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'nonrenewable-mk01'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'coalplant-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/coalplant-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk02','coalplant-mk01'},
    dependencies = {"coalplant-mk01"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'coalplant-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/coalplant-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk03','coalplant-mk02'},
    dependencies = {"coalplant-mk02"},
    effects = {},
    unit = {
        count = 500,
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
    name = 'coalplant-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/coalplant-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk04','coalplant-mk03'},
    dependencies = {"coalplant-mk03"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}
