RECIPE {
    type = "recipe",
    name = "py-oil-powerplant-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"steel-plate", 100},
        {"small-parts-01", 200},
        {"duralumin", 50},
        {"pipe", 200},
        {"gas-refinery-mk01", 1},
        {"electronic-circuit", 100},
        {"distilator", 1},
        {"intermetallics", 40},
        {'steam-engine', 20},
        {"mechanical-parts-01", 3},
    },
    results = {
        {"py-oil-powerplant-mk01", 1}
    }
}:add_unlock("oilplant-mk01")

ITEM {
    type = "item",
    name = "py-oil-powerplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/oil-powerplant-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "py-oil-powerplant-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "py-oil-powerplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/oil-powerplant-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "py-oil-powerplant-mk01"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"oil-powerplant"},
    crafting_speed = 1,
    energy_source =
    {
        type = "fluid",
        emissions_per_minute = 15,
        destroy_non_fuel_fluid = false,
        fluid_box =
          {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_connections =
          {
              {type = "input", position = {0, 7.0}}
          },
          pipe_covers = py.pipe_covers(false, true, true, true),
          pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          production_type = "input",
          filter = "kerosene"
          },
      effectivity = 1,
      burns_fluid = true,
      scale_fluid_usage = true,
      light_flicker =
      {
        minimum_intensity = 0,
        maximum_intensity = 0,
        light_intensity_to_size_coefficient = 0,
        color = {0,0,0},
      },
        smoke =
        {
          {
            name = "fire-smoke-on-adding-fuel",
            north_position = util.by_pixel(-16, -432),
            south_position = util.by_pixel(-16, -432),
            east_position = util.by_pixel(-16, -432),
            west_position = util.by_pixel(-16, -432),
            frequency = 25,
            slow_down_factor = 0.1,
            starting_vertical_speed = 0.16,
            starting_frame_deviation = 10
          },
        }
      },
    energy_usage = "10MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/off.png",
                width = 416,
                height = 768,
                frame_count = 1,
                --repeat_count = 151,
                shift = util.by_pixel(0, -176),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/mask.png",
                width = 416,
                height = 768,
                frame_count = 1,
                --repeat_count = 151,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                shift = util.by_pixel(0, -176),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/sh.png",
                width = 480,
                height = 384,
                frame_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(32, 16),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/beams.png",
                width = 416,
                height = 768,
                frame_count = 1,
                draw_as_light = true,
                shift = util.by_pixel(0, -176),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/beams.png",
                width = 416,
                height = 768,
                frame_count = 1,
                draw_as_light = true,
                shift = util.by_pixel(0, -176),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/static-glow.png",
                width = 416,
                height = 768,
                frame_count = 1,
                draw_as_glow = true,
                shift = util.by_pixel(0, -176),
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(32, -256),
            west_position = util.by_pixel(32, -256),
            south_position = util.by_pixel(32, -256),
            east_position = util.by_pixel(32, -256),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/reds.png",
                frame_count = 75,
                line_length = 15,
                width = 96,
                height = 160,
                repeat_count = 2,
                animation_speed = 1/3,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-128, -64),
            west_position = util.by_pixel(-128, -64),
            south_position = util.by_pixel(-128, -64),
            east_position = util.by_pixel(-128, -64),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-bot.png",
                frame_count = 150,
                line_length = 12,
                width = 160,
                height = 96,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(-128, -160),
            west_position = util.by_pixel(-128, -160),
            south_position = util.by_pixel(-128, -160),
            east_position = util.by_pixel(-128, -160),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-mid.png",
                frame_count = 150,
                line_length = 12,
                width = 160,
                height = 96,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(-128, -272),
            west_position = util.by_pixel(-128, -272),
            south_position = util.by_pixel(-128, -272),
            east_position = util.by_pixel(-128, -272),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-top.png",
                frame_count = 150,
                line_length = 12,
                width = 160,
                height = 128,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(128, -160),
            west_position = util.by_pixel(128, -160),
            south_position = util.by_pixel(128, -160),
            east_position = util.by_pixel(128, -160),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-right-bot.png",
                frame_count = 150,
                line_length = 12,
                width = 160,
                height = 96,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(128, -272),
            west_position = util.by_pixel(128, -272),
            south_position = util.by_pixel(128, -272),
            east_position = util.by_pixel(128, -272),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-right-top.png",
                frame_count = 150,
                line_length = 12,
                width = 160,
                height = 128,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(-64, -384),
            west_position = util.by_pixel(-64, -384),
            south_position = util.by_pixel(-64, -384),
            east_position = util.by_pixel(-64, -384),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-down-1.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 64,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(-32, -320),
            west_position = util.by_pixel(-32, -320),
            south_position = util.by_pixel(-32, -320),
            east_position = util.by_pixel(-32, -320),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-down-2.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 64,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(-96, -256),
            west_position = util.by_pixel(-96, -256),
            south_position = util.by_pixel(-96, -256),
            east_position = util.by_pixel(-96, -256),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-side.png",
                frame_count = 150,
                line_length = 15,
                width = 96,
                height = 96,
                animation_speed = 1/3,
            }
        },
        {
            north_position = util.by_pixel(48, -144),
            west_position = util.by_pixel(48, -144),
            south_position = util.by_pixel(48, -144),
            east_position = util.by_pixel(48, -144),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-push.png",
                frame_count = 150,
                line_length = 16,
                width = 128,
                height = 128,
                animation_speed = 1/4,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.0, 6.3}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {3.0, 6.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {0.0, -6.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {3.0, -6.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {-3.0, -6.3}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/oil-powerplant.ogg", volume = 0.8},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/oil-powerplant.ogg", volume = 0.1},
        apparent_volume = 0.45
    },
    fast_replaceable_group = "oil-power"
  }
