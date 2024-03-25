RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mox-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"nuclear-reactor-mk02", 1},
    },
    results = {
        {"nuclear-reactor-mox-mk02", 1}
    }
}:add_unlock("nuclear-power-mk02")

ITEM {
    type = "item",
    name = "nuclear-reactor-mox-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "a",
    place_result = "nuclear-reactor-mox-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nuclear-reactor-mox-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nuclear-reactor-mox-mk02"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    crafting_categories = {"nuclear-mox-fission"},
    crafting_speed = 2,
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
          {type = "input-output", position = {-3.0, 7.0}},
          {type = "input-output", position = {-3.0, -7.0}}
        },
        pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        pipe_covers = DATA.Pipes.covers(false, true, true, true),
        production_type = "input-output",
        filter = "puo2"
      },
      burns_fluid = false,
      scale_fluid_usage = false,
    --   fluid_usage_per_tick = (2/60),
      maximum_temperature = 1000,
    },
    energy_usage = "750KW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk02/off.png",
                width = 416,
                height = 576,
                frame_count = 1,
                shift = util.by_pixel(0, -80)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk02/sh.png",
                width = 480,
                height = 384,
                frame_count = 1,
                shift = util.by_pixel(32, -16),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-0, -16),
            west_position = util.by_pixel(-0, -16),
            south_position = util.by_pixel(-0, -16),
            east_position = util.by_pixel(-0, -16),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk02/l1.png",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 256,
                animation_speed = 0.5,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-176, -192),
            west_position = util.by_pixel(-176, -192),
            south_position = util.by_pixel(-176, -192),
            east_position = util.by_pixel(-176, -192),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk02/l2.png",
                frame_count = 50,
                line_length = 10,
                width = 64,
                height = 160,
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
            pipe_connections = {{type = "input", position = {0.0, 7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, 7.0}}}
        },
        --[[
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, 7.0}}}
        },
        ]]--
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -7.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk02.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk02.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
  }
