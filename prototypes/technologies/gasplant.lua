TECHNOLOGY {
    type = "technology",
    name = "gasplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/gasplant-mk01.png",
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
    name = 'gasplant-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/gasplant-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk02','gasplant-mk01'},
    dependencies = {"gasplant-mk01"},
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
    name = 'gasplant-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/gasplant-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk03','gasplant-mk02'},
    dependencies = {"gasplant-mk02"},
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
    name = 'gasplant-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/gasplant-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nonrenewable-mk04','gasplant-mk03'},
    dependencies = {"gasplant-mk03"},
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
