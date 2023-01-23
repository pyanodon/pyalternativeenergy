local base_path = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk04/%s%d.png'
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
        name = 'hawt-turbine-mk04-' .. direction,
        layers = {
            {
                filename = string.format(base_path, 'r', index),
                width = 352,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = string.format(base_path, 'a', index),
                width = 352,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = string.format(base_path, 's', index),
                width = 352,
                height = 256,
                frame_count = 1,
                shift = util.by_pixel(50, 25),
                draw_as_shadow = true,
            },
            {
                filename = string.format(base_path, 'l', index),
                width = 352,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(0, -64),
                draw_as_glow = true,
            },
        }
    }}
end