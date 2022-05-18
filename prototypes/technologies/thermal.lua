TECHNOLOGY {
    type = "technology",
    name = "thermal-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/thermal-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'solar-power-mk01'},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'thermal-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/thermal-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk01','solar-power-mk02'},
    dependencies = {"thermal-mk01"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'military-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'thermal-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/thermal-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk02','solar-power-mk03'},
    dependencies = {"thermal-mk02"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'military-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'thermal-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/thermal-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk03'},
    dependencies = {"thermal-mk03"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'military-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 60
    }
}
