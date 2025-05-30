RECIPE {
    type = "recipe",
    name = "py-coal-powerplant-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "py-coal-powerplant-mk03",       amount = 1},
        {type = "item", name = "small-parts-03",                amount = 300},
        {type = "item", name = "super-alloy",                   amount = 200},
        {type = "item", name = "intelligent-unit",              amount = 50},
        {type = "item", name = "metastable-quasicrystal",       amount = 20},
        {type = "item", name = "superconductor-servomechanims", amount = 50},
        {type = "item", name = "control-unit",                  amount = 20},
        {type = "item", name = "ti-n",                          amount = 100},
        {type = "item", name = "metallic-glass",                amount = 50},
        {type = "item", name = "sc-engine",                     amount = 8},
        {type = "item", name = "nbti-alloy",                    amount = 200},
        {type = "item", name = "mechanical-parts-04",           amount = 5},
    },
    results = {
        {type = "item", name = "py-coal-powerplant-mk04", amount = 1}
    }
}:add_unlock("coalplant-mk04")

ITEM {
    type = "item",
    name = "py-coal-powerplant-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/coal-powerplant-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "py-coal-powerplant-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "py-coal-powerplant-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/coal-powerplant-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "py-coal-powerplant-mk04"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"coal-powerplant-mk04"},
    crafting_speed = 4,
    energy_source =
    {
        type = "burner",
        fuel_categories = {"chemical"},
        effectivity = 1,
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0},
        },
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = {
            pollution = 21 * 30,
        },
        smoke =
        {
            {
                name = "smoke",
                north_position = util.by_pixel(128, -355),
                south_position = util.by_pixel(128, -355),
                east_position = util.by_pixel(128, -355),
                west_position = util.by_pixel(128, -355),
                frequency = 90,
                slow_down_factor = 1,
                starting_vertical_speed = 0.07,
                starting_frame_deviation = 60,
                color = {r = 0.2, g = 0.2, b = 0.2},
            },
            {
                name = "smoke",
                north_position = util.by_pixel(168, -328),
                south_position = util.by_pixel(168, -328),
                east_position = util.by_pixel(168, -328),
                west_position = util.by_pixel(168, -328),
                frequency = 90,
                slow_down_factor = 1,
                starting_vertical_speed = 0.07,
                starting_frame_deviation = 60,
                color = {r = 0.2, g = 0.2, b = 0.2},
            },
        },
    },
    energy_usage = "40MW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/bottom.png",
                    width = 416,
                    height = 128,
                    frame_count = 1,
                    repeat_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 144),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/sh.png",
                    width = 64,
                    height = 382,
                    line_length = 32,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(240, 16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/mask.png",
                    width = 416,
                    height = 128,
                    frame_count = 1,
                    repeat_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 144),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r1.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-192, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r2.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-160, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r3.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-128, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r4.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-96, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r5.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-64, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r6.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-32, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r7.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-0, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r8.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(32, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r9.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(64, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r10.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(96, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r11.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(128, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r12.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(160, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r13.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(192, -160),
                },
                --GLOW
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l1.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(-192, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l2.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(-160, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l3.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(-128, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l4.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(-96, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l5.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(-64, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l6.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(-32, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l7.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(-0, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l8.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(32, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l9.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(64, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l10.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(96, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l11.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(128, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l12.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(160, -160),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l13.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 151,
                    animation_speed = 1 / 3,
                    draw_as_glow = true,
                    shift = util.by_pixel(192, -160),
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-3.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {3.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, -6.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/coal-powerplant.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/coal-powerplant.ogg", volume = 0.1},
        apparent_volume = 0.45
    },
    fast_replaceable_group = "coal-power"
}
