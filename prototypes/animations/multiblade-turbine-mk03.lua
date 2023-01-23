local base_path = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/%s%d.png'
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
        name = 'multiblade-turbine-mk03-' .. direction,
        layers = {
            {
                filename = string.format(base_path, 'r', index),
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25
            },
            {
                filename = string.format(base_path, 's', index),
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                draw_as_shadow = true
            },
            {
                filename = string.format(base_path, 'l', index),
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true
            }
        }
    }}
end