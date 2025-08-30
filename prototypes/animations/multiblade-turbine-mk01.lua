local base_path = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk01/%s%d%s.png"
for index, direction in pairs({
    "south",
    "southwest",
    "west",
    "northwest",
    "north",
    "northeast",
    "east",
    "southeast"
}) do
    data:extend({ {
        type = "animation",
        name = "multiblade-turbine-mk01-" .. direction,
        layers = {
            {
                filename = string.format(base_path, "r", index, ""),
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5
            },
            {
                filename = string.format(base_path, "s", index, ""),
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.5,
                draw_as_shadow = true
            },
            -- Second shadow layer for ne/e/se
            index > 5 and {
                filename = string.format(base_path, "s", index, "-2"),
                width = 64,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(144, 0),
                animation_speed = 0.5,
                draw_as_shadow = true
            } or nil
        }
    } })
end
