RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mox-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "nuclear-reactor-mk03", amount = 1},

    },
    results = {
        {type = "item", name = "nuclear-reactor-mox-mk03", amount = 1}
    }
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mox-mk03-uncraft",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"nuclear-reactor-mox-mk03", 1}
    },
    results = {
        {"nuclear-reactor-mk03", 1},
    }
}:add_unlock("nuclear-power-mk03")

ITEM {
    type = "item",
    name = "nuclear-reactor-mox-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "nuclear-reactor-mox-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nuclear-reactor-mox-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nuclear-reactor-mox-mk03"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    match_animation_speed_to_activity = false,
    module_slots = 0,
    allowed_effects = {},
    crafting_categories = {"nuclear-mox-fission"},
    crafting_speed = 3,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      emissions_per_minute = {
          pollution = 0
      },
      destroy_non_fuel_fluid = false,
      fluid_box =
      {
        volume = 200,
        pipe_connections = {
          {flow_direction = "input-output", position = {-4.0, 7.3}, direction = defines.direction.south},
          {flow_direction = "input-output", position = {-4.0, -7.3}, direction = defines.direction.north}
        },
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        pipe_covers = py.pipe_covers(false, true, true, true),
        production_type = "input-output",
        filter = "puo2"
      },
      burns_fluid = false,
      scale_fluid_usage = false,
    --   fluid_usage_per_tick = (2/60),
      maximum_temperature = 3000,
    },
    energy_usage = "1500kW",
    graphics_set = {
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
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 7.3}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.0, 7.3}, direction = defines.direction.south}}
        },
        --[[
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {4.0, 7.3}, direction = defines.direction.south}}
        },
        ]]--
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, -7.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, -7.3}, direction = defines.direction.north}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk03.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk03.ogg", volume = 0.1},
        apparent_volume = 2.5
    },
    fast_replaceable_group = "reactor"
  }
