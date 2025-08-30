TECHNOLOGY({
    type = "technology",
    name = "nuclear-power",
    icon_size = 128,
    icon = "__pyalternativeenergygraphics__/graphics/technology/nuclear-mk01.png",
    effects = {},
    prerequisites = { "uranium-mk01", "nonrenewable-mk01" },
    unit =
    {
        ingredients =
        {
            { "automation-science-pack", 1 },
            { "py-science-pack-1",       1 },
            { "logistic-science-pack",   1 },
            { "py-science-pack-2",       1 },
            { "chemical-science-pack",   1 },
            --{'py-science-pack-3', 1},
        },
        time = 30,
        count = 800
    },
    order = "e-p-b-c"
})

TECHNOLOGY({
    type = "technology",
    name = "nuclear-power-mk02",
    icon_size = 128,
    icon = "__pyalternativeenergygraphics__/graphics/technology/nuclear-mk02.png",
    effects = {},
    prerequisites = { "uranium-mk02", "nonrenewable-mk02", "nuclear-power" },
    dependencies = { "nuclear-power" },
    unit =
    {
        ingredients =
        {
            { "automation-science-pack", 1 },
            { "py-science-pack-1",       1 },
            { "logistic-science-pack",   1 },
            { "py-science-pack-2",       1 },
            { "chemical-science-pack",   1 },
            { "production-science-pack", 1 }
        },
        time = 30,
        count = 800
    },
    order = "e-p-b-c"
})

TECHNOLOGY({
    type = "technology",
    name = "nuclear-power-mk03",
    icon_size = 128,
    icon = "__pyalternativeenergygraphics__/graphics/technology/nuclear-mk03.png",
    effects = {},
    prerequisites = { "uranium-mk03", "nonrenewable-mk03", "nuclear-power-mk02" },
    dependencies = { "nuclear-power-mk02" },
    unit =
    {
        ingredients =
        {
            { "automation-science-pack", 1 },
            { "py-science-pack-1",       1 },
            { "logistic-science-pack",   1 },
            { "military-science-pack",   1 },
            { "py-science-pack-2",       1 },
            { "chemical-science-pack",   1 },
            { "production-science-pack", 1 },
            { "utility-science-pack",    1 }
        },
        time = 30,
        count = 800
    },
    order = "e-p-b-c"
})

TECHNOLOGY({
    type = "technology",
    name = "nuclear-power-mk04",
    icon_size = 128,
    icon = "__pyalternativeenergygraphics__/graphics/technology/nuclear-mk04.png",
    effects = {},
    prerequisites = { "uranium-mk04", "nonrenewable-mk04", "nuclear-power-mk03" },
    dependencies = { "nuclear-power-mk03" },
    unit =
    {
        ingredients =
        {
            { "automation-science-pack", 1 },
            { "py-science-pack-1",       1 },
            { "logistic-science-pack",   1 },
            { "military-science-pack",   1 },
            { "py-science-pack-2",       1 },
            { "chemical-science-pack",   1 },
            { "production-science-pack", 1 },
            { "utility-science-pack",    1 },
            { "space-science-pack",      1 }
        },
        time = 30,
        count = 800
    },
    order = "e-p-b-c"
})
