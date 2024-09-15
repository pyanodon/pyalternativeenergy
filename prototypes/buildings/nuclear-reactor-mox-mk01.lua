RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mox-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"nuclear-reactor-mk01", 1},
    },
    results = {
        {"nuclear-reactor-mox-mk01", 1}
    }
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mox-mk01-uncraft",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"nuclear-reactor-mox-mk01", 1}
    },
    results = {
        {"nuclear-reactor-mk01", 1},
    }
}:add_unlock("nuclear-power")

ITEM {
    type = "item",
    name = "nuclear-reactor-mox-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "nuclear-reactor-mox-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nuclear-reactor-mox-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nuclear-reactor-mox-mk01"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    crafting_categories = {"nuclear-mox-fission"},
    crafting_speed = 1,
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
        volume = 200,
        base_level = -1,
        pipe_connections =
        {
          {type = "input-output", position = {0, 6}},
          {type = "input-output", position = {0, -6}}
        },
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        pipe_covers = py.pipe_covers(false, true, true, true),
        production_type = "input-output",
        filter = "puo2"
      },
      burns_fluid = false,
      scale_fluid_usage = false,
    --   fluid_usage_per_tick = (2/60),
      maximum_temperature = 250,
    },
    energy_usage = "300kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk01/off.png",
                width = 352,
                height = 576,
                frame_count = 1,
                shift = util.by_pixel(0, -112)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk01/sh.png",
                width = 416,
                height = 320,
                frame_count = 1,
                shift = util.by_pixel(32, 16),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            effect = "uranium-glow",
            fadeout = true,
            light = {intensity = 1.3, size = 20, shift = {0.0, 0.0}, color = {r = 0.584, g = 0.8, b = 1.0}}
        },
        {
            north_position = util.by_pixel(-0, -208),
            west_position = util.by_pixel(-0, -208),
            south_position = util.by_pixel(-0, -208),
            east_position = util.by_pixel(-0, -208),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk01/l.png",
                frame_count = 20,
                line_length = 5,
                width = 352,
                height = 384,
                animation_speed = 0.3,
                draw_as_glow = true,
                effect = "uranium-glow",
                fadeout = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2, 5.3}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, 5.3}, direction = defines.direction.south}}
        },
        --[[
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, 5.3}, direction = defines.direction.south}}
        },
        ]]--
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {1.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-1.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-3.0, -5.3}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk01.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk01.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
  }
