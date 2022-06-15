TECHNOLOGY {
    type = "technology",
    name = "intermetallics-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/intermetallics-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'machines-mk01'},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'intermetallics-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/intermetallics-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','intermetallics-mk01'},
    dependencies = {"intermetallics-mk01"},
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
    name = 'intermetallics-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/intermetallics-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','intermetallics-mk02','mof','carbon-fiber'},
    dependencies = {"intermetallics-mk02"},
    effects = {},
    unit = {
        count = 350,
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
    name = 'intermetallics-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/intermetallics-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','intermetallics-mk03'},
    dependencies = {"intermetallics-mk03"},
    effects = {},
    unit = {
        count = 450,
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
