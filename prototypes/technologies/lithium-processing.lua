TECHNOLOGY {
    type = 'technology',
    name = 'lithium-processing',
    icon = '__pyalternativeenergygraphics__/graphics/technology/lithium-processing.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'geothermal-power-mk03'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 1},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1},
            --{'py-science-pack-3', 1},
        },
        time = 60
    }
}
