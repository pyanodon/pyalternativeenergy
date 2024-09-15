RECIPE {
    type = "recipe",
    name = "py-gas-powerplant-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "distilator", amount = 5},
        {type = "item", name = "copper-plate", amount = 400},
        {type = "item", name = "iron-gear-wheel", amount = 500},
        {type = "item", name = "pipe", amount = 200},
        {type = "item", name = "iron-plate", amount = 200},
        {type = "item", name = "electronic-circuit", amount = 100},
        {type = "item", name = 'intermetallics', amount = 50},
        {type = "item", name = 'steam-engine', amount = 50},
        {type = "item", name = "mechanical-parts-01", amount = 3},
    },
    results = {
        {type = "item", name = "py-gas-powerplant-mk01", amount = 1}
    }
}:add_unlock("gasplant-mk01")

ITEM {
    type = "item",
    name = "py-gas-powerplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/gas-powerplant-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "py-gas-powerplant-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "py-gas-powerplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/gas-powerplant-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "py-gas-powerplant-mk01"},
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
    crafting_categories = {"gas-powerplant"},
    crafting_speed = 1,
    energy_source =
    {
        type = "fluid",
        emissions_per_minute = {
            pollution = 15
        },
        destroy_non_fuel_fluid = false,
        fluid_box =
          {
          volume = 200,
          base_level = -1,
          pipe_connections =
          {
              {type = "input", position = {0, 7.0}}
          },
          pipe_covers = py.pipe_covers(false, true, true, true),
          pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          production_type = "input",
          filter = "natural-gas"
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
      fluid_usage_per_tick = 10,
        smoke =
        {
            {
                name = "smoke",
                north_position = util.by_pixel(-192, -310),
                south_position = util.by_pixel(-192, -310),
                east_position = util.by_pixel(-192, -310),
                west_position = util.by_pixel(-192, -310),
                frequency = 90,
                slow_down_factor = 1,
                starting_vertical_speed = 0.07,
                starting_frame_deviation = 60,
                color = {r = 0.2, g = 0.2, b = 0.2},
            },
            {
                name = "smoke",
                north_position = util.by_pixel(-128, -345),
                south_position = util.by_pixel(-128, -345),
                east_position = util.by_pixel(-128, -345),
                west_position = util.by_pixel(-128, -345),
                frequency = 90,
                slow_down_factor = 1,
                starting_vertical_speed = 0.07,
                starting_frame_deviation = 60,
                color = {r = 0.2, g = 0.2, b = 0.2},
            },
        }
      },
    energy_usage = "6MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/raw.png",
                width = 416,
                height = 576,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 1/2,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/mask.png",
                width = 416,
                height = 576,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 1/2,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/mask-light.png",
                width = 416,
                height = 576,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 1/2,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                draw_as_glow = true,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/line-light-mask.png",
                width = 416,
                height = 576,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 1/2,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/rotate.png",
                width = 96,
                height = 128,
                frame_count = 80,
                line_length = 20,
                --repeat_count = 151,
                animation_speed = 1/2,
                shift = util.by_pixel(-64, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/light.png",
                width = 416,
                height = 576,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 1/2,
                draw_as_light = true,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/sh.png",
                width = 448,
                height = 384,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 1/2,
                draw_as_shadow = true,
                shift = util.by_pixel(16, 16),
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(80, 112),
            west_position = util.by_pixel(80, 112),
            south_position = util.by_pixel(80, 112),
            east_position = util.by_pixel(80, 112),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/flicker.png",
                frame_count = 80,
                line_length = 8,
                width = 256,
                height = 128,
                animation_speed = 1/2,
                draw_as_light = true,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(80, 64),
            west_position = util.by_pixel(80, 64),
            south_position = util.by_pixel(80, 64),
            east_position = util.by_pixel(80, 64),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/gas-powerplant/line-light.png",
                frame_count = 80,
                line_length = 10,
                width = 192,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                height = 96,
                animation_speed = 1/2,
                draw_as_glow = true,
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
            pipe_connections = {{flow_direction = "input", position = {-3.0, 6.3}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {3.0, 6.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -6.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, -6.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, -6.3}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/gas-powerplant.ogg", volume = 0.75},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/gas-powerplant.ogg", volume = 0.1},
        apparent_volume = 0.45
    },
    fast_replaceable_group = "gas-power"
  }
