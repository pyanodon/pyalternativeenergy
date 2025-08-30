TECHNOLOGY({
    type = "technology",
    name = "eva",
    icon = "__pyalternativeenergygraphics__/graphics/technology/eva.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "renewable-mk02" },
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            { "automation-science-pack", 1 },
            { "py-science-pack-1",       1 },
            { "logistic-science-pack",   1 },
            { "py-science-pack-2",       1 },
        },
        time = 60
    }
})
