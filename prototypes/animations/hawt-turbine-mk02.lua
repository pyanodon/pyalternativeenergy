local base_path = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk02/%s%d.png'
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
        name = 'hawt-turbine-mk02-' .. direction,
        layers = {
            {
                filename = string.format(base_path, 'r', index),
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35
            },
            {
                filename = string.format(base_path, 'a', index),
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35
            },
            {
                filename = string.format(base_path, 's', index),
                width = 256,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(16, 0),
                animation_speed = 0.35,
                draw_as_shadow = true
            },
            {
                filename = string.format(base_path, 'l', index),
                width = 224,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -64),
                animation_speed = 0.35,
                draw_as_glow = true
            },
        }
    }}
end