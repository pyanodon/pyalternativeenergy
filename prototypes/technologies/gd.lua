TECHNOLOGY {
    type = 'technology',
    name = 'gadolinium',
    icon = '__pyalternativeenergygraphics__/graphics/technology/gd.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thorium'},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'py-science-pack-2', 1},
        },
        time = 60
    }
}
