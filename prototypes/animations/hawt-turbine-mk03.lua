local base_path = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/%s%d.png'
for index, direction in pairs({
    'south',
    'southwest',
    'west',
    'northwest',
    'north',
    'northeast',
    'east',
    'southeast'
}) do
    data:extend{{
        type = 'animation',
        name = 'hawt-turbine-mk03-' .. direction,
        layers = {
            {
                filename = string.format(base_path, 'r', index),
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1
            },
            {
                filename = string.format(base_path, 's', index),
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true
            },
            {
                filename = string.format(base_path, 'l', index),
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true
            },
        }
    }}
end