TECHNOLOGY {
    type = 'technology',
    name = 'anti-solar',
    icon = '__pyalternativeenergygraphics__/graphics/technology/anti-solar.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solar-mk03','renewable-mk03'},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'py-science-pack-4', 1},
        },
        time = 60
    }
}
