RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mk04",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"nuclear-reactor-mk04", 1}
    }
}

ITEM {
    type = "item",
    name = "nuclear-reactor-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "nuclear-reactor-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nuclear-reactor-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nuclear-reactor-mk04"},
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/raw.png",
                width = 480,
                height = 576,
                frame_count = 1,
                shift = util.by_pixel(0, -48)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/l.png",
                width = 480,
                height = 576,
                frame_count = 1,
                draw_as_glow = true,
                shift = util.by_pixel(0, -48)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/sh.png",
                width = 512,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(32, 16),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-96, -112),
            west_position = util.by_pixel(-96, -112),
            south_position = util.by_pixel(-96, -112),
            east_position = util.by_pixel(-96, -112),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/left.png",
                frame_count = 50,
                line_length = 10,
                width = 160,
                height = 384,
                animation_speed = 0.5,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(64, -112),
            west_position = util.by_pixel(64, -112),
            south_position = util.by_pixel(64, -112),
            east_position = util.by_pixel(64, -112),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/mid.png",
                frame_count = 50,
                line_length = 10,
                width = 160,
                height = 384,
                animation_speed = 0.5,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(192, -112),
            west_position = util.by_pixel(192, -112),
            south_position = util.by_pixel(192, -112),
            east_position = util.by_pixel(192, -112),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/right.png",
                frame_count = 50,
                line_length = 10,
                width = 96,
                height = 384,
                animation_speed = 0.5,
                draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 8.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-4.0, 8.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, 8.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.0, -8.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, -8.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk04.ogg", volume = 0.5},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk04.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
  }
