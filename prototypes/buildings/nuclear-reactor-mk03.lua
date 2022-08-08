RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"nuclear-reactor-mk02", 1},
        {"processing-unit", 200},
        {"low-density-structure", 100},
        {"small-parts-03", 700},
        {"refined-concrete", 200},
        {"super-steel", 1000},
        {"electric-engine-unit", 10},
        {"glass", 1000},
        {"nxsb-alloy", 50},
        {'ns-material', 50},
        {"py-heat-exchanger", 1},
        {"ticocr-alloy", 50},
        {"mechanical-parts-03", 5},

    },
    results = {
        {"nuclear-reactor-mk03", 1}
    }
}:add_unlock("nuclear-power-mk03")

ITEM {
    type = "item",
    name = "nuclear-reactor-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "nuclear-reactor-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nuclear-reactor-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nuclear-reactor-mk03"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    crafting_categories = {"nuclear-fission"},
    crafting_speed = 10,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source =
    {
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
          {type = "input-output", position = {-4.0, 8.0}},
          {type = "input-output", position = {-4.0, -8.0}}
        },
        pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        pipe_covers = DATA.Pipes.covers(false, true, true, true),
        production_type = "input-output",
        filter = "uf6"
      },
      burns_fluid = false,
      scale_fluid_usage = false,
    --   fluid_usage_per_tick = (2/60),
      maximum_temperature = 3000,
    },
    energy_usage = "300kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk03/off.png",
                width = 480,
                height = 576,
                frame_count = 1,
                shift = util.by_pixel(0, -48)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk03/sh.png",
                width = 544,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(32, 16),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-112, -80),
            west_position = util.by_pixel(-112, -80),
            south_position = util.by_pixel(-112, -80),
            east_position = util.by_pixel(-112, -80),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk03/la1.png",
                frame_count = 30,
                line_length = 8,
                width = 256,
                height = 512,
                animation_speed = 0.8,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(128, -80),
            west_position = util.by_pixel(128, -80),
            south_position = util.by_pixel(128, -80),
            east_position = util.by_pixel(128, -80),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk03/la2.png",
                frame_count = 30,
                line_length = 8,
                width = 224,
                height = 512,
                animation_speed = 0.8,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-96, -32),
            west_position = util.by_pixel(-96, -32),
            south_position = util.by_pixel(-96, -32),
            east_position = util.by_pixel(-96, -32),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk03/lb1.png",
                frame_count = 30,
                line_length = 8,
                width = 224,
                height = 288,
                animation_speed = 0.8,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(112, -32),
            west_position = util.by_pixel(112, -32),
            south_position = util.by_pixel(112, -32),
            east_position = util.by_pixel(112, -32),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk03/lb2.png",
                frame_count = 30,
                line_length = 8,
                width = 192,
                height = 288,
                animation_speed = 0.8,
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
            pipe_connections = {{type = "input", position = {-3.0, 8.0}}}
        },
        --[[
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, 8.0}}}
        },
        ]]--
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
        sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk03.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk03.ogg", volume = 0.1},
        apparent_volume = 2.5
    },
    fast_replaceable_group = "reactor"
  }
