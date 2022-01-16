RECIPE {
    type = "recipe",
    name = "simik-boiler",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"super-steel", 15},
        {"niobium-pipe", 10},
        {"processing-unit", 10},
        {"simik", 1},
        {"electric-engine-unit", 15},
        {"nbfe-alloy", 20},
        {"nbti-alloy", 10},
        {"tin-plate", 20},
        {'ns-material', 20},
        {"small-parts-03", 80}
    },
    results = {
        {"simik-boiler", 1}
    }
}:add_unlock("domestication-mk02")

ITEM {
    type = "item",
    name = "simik-boiler",
    icon = "__pyalternativeenergygraphics__/graphics/icons/generator-3.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-generators",
    order = "a",
    place_result = "simik-boiler",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "simik-boiler",
    icon = "__pyalternativeenergygraphics__/graphics/icons/generator-3.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "simik-boiler"},
    fast_replaceable_group = "simik-boiler",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"simik-boiler"},
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "simik",
      effectivity = 1,
      light_flicker =
      {
        minimum_intensity = 0,
        maximum_intensity = 0,
        light_intensity_to_size_coefficient = 0,
        color = {0,0,0},
      },
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = 0.0,
    },
    energy_usage = "4000kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/1.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(-160, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/2.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(-128, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/3.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(-96, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/4.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(-64, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/5.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(-32, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/l.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                draw_as_glow = true,
                shift = util.by_pixel(-32, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/6.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(-0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/7.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(32, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/8.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(64, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/9.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(96, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/10.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(128, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/11.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(160, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/12.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                shift = util.by_pixel(192, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/sh1.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(192, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/sh2.png",
                width = 32,
                height = 512,
                line_length = 64,
                frame_count = 135,
                animation_speed = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(224, -80),
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -6.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/simik-boiler.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/simik-boiler.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
