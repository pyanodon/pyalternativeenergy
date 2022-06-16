TECHNOLOGY {
    type = "technology",
    name = "numal-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/numal-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01",'machines-mk01'},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'numal-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/numal-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {"water-animals-mk02",'numal-mk01'},
    dependencies = {"numal-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'numal-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/numal-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {"water-animals-mk03",'numal-mk02'},
    dependencies = {"numal-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'numal-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/numal-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {"water-animals-mk04",'numal-mk03'},
    dependencies = {"numal-mk03"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
            --{'production-science-pack', 1},
            {"py-science-pack-3", 1},
            {"py-science-pack-4", 1},
        },
        time = 60
    }
}
