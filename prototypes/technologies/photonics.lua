TECHNOLOGY {
    type = 'technology',
    name = 'photonics',
    icon = '__pyalternativeenergygraphics__/graphics/technology/photonics.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'advanced-electronics'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 60
    }
}
