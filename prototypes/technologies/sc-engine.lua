TECHNOLOGY {
    type = 'technology',
    name = 'sc-engine',
    icon = '__pyalternativeenergygraphics__/graphics/technology/sc-engine.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'military-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {"py-science-pack-4", 1}
        },
        time = 60
    }
}
