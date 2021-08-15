TECHNOLOGY {
    type = "technology",
    name = "solar-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/solar-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'solar-power-mk01'},
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
    name = 'solar-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/solar-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solar-mk01','solar-power-mk02'},
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
    name = 'solar-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/solar-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solar-mk02','solar-power-mk03'},
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
    name = 'solar-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/solar-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solar-mk03','solar-power-mk04'},
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
