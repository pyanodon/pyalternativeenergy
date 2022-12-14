RECIPE {
    type = "recipe",
    name = "lrf-building-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"iron-plate", 600},
        {"steel-plate", 200},
        {"glass", 200},
        {"pipe", 100},
        {"small-parts-01", 1000},
        {"steam-engine", 10},
        {"electronic-circuit", 100},
        {'intermetallics', 50},
        {"mechanical-parts-01", 5},
    },
    results = {
        {"lrf-building-mk01", 1}
    }
}:add_unlock("thermal-mk01")

ITEM {
    type = "item",
    name = "lrf-building-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lrf-building-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-thermosolar",
    order = "aa",
    place_result = "lrf-building-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "lrf-building-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lrf-building-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "lrf-building-mk01"},
    fast_replaceable_group = "lrf",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.8, -7.8}, {7.8, 7.8}},
    selection_box = {{-8.0, -8.0}, {8.0, 8.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed", "consumption"},
    crafting_categories = {"lrf"},
    crafting_speed = 1,
    energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = 0,
        destroy_non_fuel_fluid = false,
        fluid_box =
        {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_connections =
          {
            {type = "input-output", position = {1.5, -8.5}},
            {type = "input-output", position = {1.5, 8.5}}
          },
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          production_type = "input-output",
          filter = "molten-salt"
        },
        burns_fluid = false,
        scale_fluid_usage = false,
        fluid_usage_per_tick = (50/60),
        maximum_temperature = 2000,
        minimum_temperature = 1000
      },
    energy_usage = "10MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/r.png",
                width = 512,
                height = 608,
                frame_count = 1,
                shift = util.by_pixel(0, -48)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/r-mask.png",
                width = 512,
                height = 608,
                frame_count = 1,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                shift = util.by_pixel(0, -48)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/l.png",
                width = 512,
                height = 608,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                draw_as_glow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(140, 17),
            west_position = util.by_pixel(140, 17),
            south_position = util.by_pixel(140, 17),
            east_position = util.by_pixel(140, 17),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/tela.png",
                frame_count = 200,
                line_length = 25,
                width = 64,
                height = 32,
                animation_speed = 0.5,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(49, 112),
            west_position = util.by_pixel(49, 112),
            south_position = util.by_pixel(49, 112),
            east_position = util.by_pixel(49, 112),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/part.png",
                frame_count = 36,
                line_length = 6,
                width = 96,
                height = 96,
                animation_speed = 0.4,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-192, -64),
            west_position = util.by_pixel(-192, -64),
            south_position = util.by_pixel(-192, -64),
            east_position = util.by_pixel(-192, -64),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/smoke.png",
                frame_count = 50,
                line_length = 10,
                width = 128,
                run_mode = "backward",
                height = 320,
                animation_speed = 0.4,
                --draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        --[[
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -8.5}}}
        },
        ]]--
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -8.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, -8.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, -8.5}}}
        },
        --[[
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 8.5}}}
        },
        ]]--
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 8.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.5, 8.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.5, 8.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 0.70},
        apparent_volume = 2.5
    }
}
