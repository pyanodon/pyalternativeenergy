data:extend{
    {
        name = "tidal-animation-north",
        type = "animation",
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/turbine.png",
                width = 224,
                height = 224,
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                shift = util.by_pixel(0, -90),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-land.png",
                width = 224,
                height = 192,
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                draw_as_glow = true,
                shift = util.by_pixel(-5, 122),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-turbine.png",
                width = 224,
                height = 224,
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                draw_as_glow = true,
                shift = util.by_pixel(-2, -90),
            }
        }
    },
    {
        name = "tidal-animation-east",
        type = "animation",
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/turbine.png",
                width = 224,
                height = 256,
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                shift = util.by_pixel(96, -6),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-land.png",
                width = 192,
                height = 256,
                line_length = 8,
                frame_count = 50,
                draw_as_glow = true,
                shift = util.by_pixel(-112, -6),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-turbines.png",
                width = 224,
                height = 256,
                line_length = 8,
                frame_count = 50,
                draw_as_glow = true,
                animation_speed = 1 / 5,
                shift = util.by_pixel(96, -6),
            }
        }
    },
    {
        name = "tidal-animation-south",
        type = "animation",
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/turbine.png",
                width = 224,
                height = 224,
                --priority = 'high',
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                shift = util.by_pixel(0, 70),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-land.png",
                width = 224,
                height = 192,
                --priority = 'high',
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                draw_as_glow = true,
                shift = util.by_pixel(0, -138),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-turbines.png",
                width = 224,
                height = 224,
                --priority = 'high',
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                draw_as_glow = true,
                shift = util.by_pixel(0, 70),
            }
        }
    },
    {
        name = "tidal-animation-west",
        type = "animation",
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/turbine.png",
                width = 224,
                height = 224,
                line_length = 8,
                frame_count = 50,
                animation_speed = 1 / 5,
                shift = util.by_pixel(-96, 10),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-land.png",
                width = 192,
                height = 256,
                line_length = 8,
                frame_count = 50,
                draw_as_glow = true,
                shift = util.by_pixel(112, -6),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-turbines.png",
                width = 224,
                height = 224,
                line_length = 8,
                frame_count = 50,
                draw_as_glow = true,
                animation_speed = 1 / 5,
                shift = util.by_pixel(-96, 10),
            }
        }
    }
}