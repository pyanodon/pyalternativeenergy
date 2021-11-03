TECHNOLOGY {
    type = 'technology',
    name = 'mof',
    icon = '__pyalternativeenergygraphics__/graphics/technology/mof.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biotech-mk03'},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 1},
            {'py-science-pack-2', 1},
        },
        time = 60
    }
}
