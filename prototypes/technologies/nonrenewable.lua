TECHNOLOGY {
    type = "technology",
    name = "nonrenewable-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/non-renewable-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'energy-1'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nonrenewable-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/non-renewable-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk01','energy-2'},
    dependencies = {"nonrenewable-mk01"},
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
    name = 'nonrenewable-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/non-renewable-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk02','energy-3'},
    dependencies = {"nonrenewable-mk02"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {'automation-science-pack', 1},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 1},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nonrenewable-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/non-renewable-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk03'},
    dependencies = {"nonrenewable-mk03"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 1},
            {'military-science-pack', 1},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}
