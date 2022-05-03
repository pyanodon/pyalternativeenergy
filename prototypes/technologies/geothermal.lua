TECHNOLOGY {
    type = "technology",
    name = "geothermal-power-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/geothermal-mk01.png",
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
    name = 'geothermal-power-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/geothermal-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'geothermal-power-mk01','renewable-mk01'},
    dependencies = {"geothermal-power-mk01"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'geothermal-power-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/geothermal-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'geothermal-power-mk02','renewable-mk02'},
    dependencies = {"geothermal-power-mk02"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'geothermal-power-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/geothermal-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'geothermal-power-mk03','renewable-mk03'},
    dependencies = {"geothermal-power-mk03"},
    effects = {},
    unit = {
        count = 450,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 60
    }
}
