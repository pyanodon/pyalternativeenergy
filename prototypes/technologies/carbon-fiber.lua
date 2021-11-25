TECHNOLOGY {
    type = 'technology',
    name = 'carbon-fiber',
    icon = '__pyalternativeenergygraphics__/graphics/technology/carbon-fiber.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thorium','mof'},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'py-science-pack-2', 1},
            {'production-science-pack', 1},
        },
        time = 60
    }
}
