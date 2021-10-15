TECHNOLOGY {
    type = 'technology',
    name = 'microwave-receiver',
    icon = '__pyalternativeenergygraphics__/graphics/technology/microwave-receiver.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solar-mk02','renewable-mk02'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 60
    }
}
