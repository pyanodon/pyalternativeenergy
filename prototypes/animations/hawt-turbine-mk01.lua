local base_path = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk01/%s%d.png"
for index, direction in pairs {
    "south",
    "southwest",
    "west",
    "northwest",
    "north",
    "northeast",
    "east",
    "southeast"
} do
    data:extend {{
        type = "animation",
        name = "hawt-turbine-mk01-" .. direction,
        layers = {
            {
                filename = string.format(base_path, "r", index),
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            },
            {
                filename = string.format(base_path, "a", index),
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4
            },
            {
                filename = string.format(base_path, "s", index),
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.4,
                draw_as_shadow = true
            },
            {
                filename = string.format(base_path, "l", index),
                width = 224,
                height = 288,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -20),
                animation_speed = 0.13,
                draw_as_glow = true
            },
        }
    }}
end
