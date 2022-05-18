TECHNOLOGY {
    type = 'technology',
    name = 'nano-mesh',
    icon = '__pyalternativeenergygraphics__/graphics/technology/nano-mesh.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'zungror', 'intermetallics-mk03', 'aluminium-mk03', 'lithium-processing'},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'military-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 60
    }
}
