TECHNOLOGY {
    type = 'technology',
    name = 'thorium',
    icon = '__pyalternativeenergygraphics__/graphics/technology/thorium.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'rare-earth-tech','vanadium-processing'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 60
    }
}
