ITEM {
    type = "item",
    name = "py-fuel-injector",
    icon = "__base__/graphics/icons/boiler.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "py-fuel-injector",
    stack_size = 10
}

ENTITY {
  type = "furnace",
  name = "py-fuel-injector",
  icon = "__base__/graphics/icons/boiler.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.2, result = "py-fuel-injector"},
  max_health = 200,
  corpse = "boiler-remnants",
  dying_explosion = "boiler-explosion",
  impact_category = "metal-large",
  collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
  selection_box = {{-1.5, -1}, {1.5, 1}},
  fluid_boxes = {
    {
      volume = 200,
      pipe_covers = py.pipe_covers(true, true, true, true),
      pipe_connections = {
        {flow_direction = "input-output", direction = defines.direction.west, position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east, position = {1, 0.5}}
      },
      production_type = "input"
    },
    {
      volume = 200,
      pipe_covers = py.pipe_covers(true, true, true, true),
      pipe_connections = {
        {flow_direction = "output", direction = defines.direction.north, position = {0, -0.5}, connection_category = "fuel-injector"}
      },
      production_type = "output"
    },
  },
  crafting_speed = 1,
  crafting_categories = {"py-fuel-injector"},
  result_inventory_size = 1,
  source_inventory_size = 0,
  energy_usage = "1.8MW",
  energy_source = {
    type = "electric",
    usage_priority = "primary-input"
  },
  working_sound = {
    sound = {filename = "__base__/sound/boiler.ogg", volume = 0.7, audible_distance_modifier = 0.3},
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  graphics_set = {
    animation = {
      north = {
        layers = {
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0.5,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true
          }
        }
      },
      east = {
        layers = {
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 216,
            height = 301,
            shift = util.by_pixel(-3, 1.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 184,
            height = 194,
            scale = 0.5,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true
          }
        }
      },
      south = {
        layers = {
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 260,
            height = 192,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 311,
            height = 131,
            scale = 0.5,
            shift = util.by_pixel(29.75, 15.75),
            draw_as_shadow = true
          }
        }
      },
      west = {
        layers = {
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 196,
            height = 273,
            shift = util.by_pixel(1.5, 7.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 206,
            height = 218,
            scale = 0.5,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true
          }
        }
      }
    }
  }
}
