TECHNOLOGY {
    type = "technology",
    name = "renewable-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/renewable-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'energy-1'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'renewable-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/renewable-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'renewable-mk01','energy-2'},
    dependencies = {"renewable-mk01"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'renewable-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/renewable-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'renewable-mk02','energy-3'},
    dependencies = {"renewable-mk02"},
    effects = {},
    unit = {
        count = 400,
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
    name = 'renewable-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/renewable-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'renewable-mk03'},
    dependencies = {"renewable-mk03"},
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
