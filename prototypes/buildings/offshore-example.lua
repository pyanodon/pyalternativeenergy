RECIPE {
    type = "recipe",
    name = "offshore-test",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {type = "item", name = "electric-mining-drill", amount = 5},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "iron-gear-wheel", amount = 40},
        {type = "item", name = "aluminium-plate", amount = 20},
        {type = "item", name = "engine-unit", amount = 2},
    },
    results = {
        {type = "item", name = "offshore-test", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "offshore-test",
    icon = "__pyalternativeenergygraphics__/graphics/icons/antimonium-drill-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "offshore-test",
    stack_size = 10
}

ENTITY {
    type = "offshore-pump",
    name = "offshore-test",
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    collision_mask = {layers = { object = true, train = true }}, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
    center_collision_mask = {layers = { water_tile = true, object = true, player = true }}, -- to test that tile directly under the pump is ground
    fluid_box_tile_collision_test = { ground_tile = true },
    adjacent_tile_collision_test = { water_tile = true },
    adjacent_tile_collision_mask = {layers = { ground_tile = true }}, -- to prevent building on edge of map :(
    adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
    minable = {mining_time = 0.1, result = "offshore-test"},
    max_health = 150,
    corpse = "offshore-pump-remnants",
    dying_explosion = "offshore-pump-explosion",
    fluid = "water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    selection_box = {{-0.6, -1.49}, {0.6, 0.49}},
    --damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water",
      pipe_connections =
      {
        {
          position = {0, 1},
          type = "output"
        }
      }
    },
    pumping_speed = 20,
    tile_width = 1,
    tile_height = 1,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/offshore-pump.ogg",
          volume = 0.5
        }
      },
      match_volume_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    min_perceived_performance = 0.5,
    always_draw_fluid = true,
    graphics_set =
    {
      underwater_layer_offset = 30,
      base_render_layer = "ground-patch",
      animation =
      {
        north =
        {
          layers =
          {
            {
              {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 90,
              height = 162,
              shift = util.by_pixel(-1, -15),
              scale = 0.5
              }
            },
            {
              {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 150,
              height = 134,
              shift = util.by_pixel(13, -7),
              draw_as_shadow = true,
              scale = 0.5
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 124,
              height = 102,
              shift = util.by_pixel(15, -2),
              scale = 0.5
              }
            },
            {
              {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 180,
              height = 66,
              shift = util.by_pixel(27, 8),
              draw_as_shadow = true,
              scale = 0.5
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 48,
              height = 96,
              shift = util.by_pixel(-2, 0),
              hr_version =
              {
                filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South.png",
                priority = "high",
                line_length = 8,
                frame_count = 32,
                animation_speed = 0.25,
                width = 92,
                height = 192,
                shift = util.by_pixel(-1, 0),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 80,
              height = 66,
              shift = util.by_pixel(16, 22),
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-shadow.png",
                priority = "high",
                line_length = 8,
                frame_count = 32,
                animation_speed = 0.25,
                width = 164,
                height = 128,
                shift = util.by_pixel(15, 23),
                draw_as_shadow = true,
                scale = 0.5
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 64,
              height = 52,
              shift = util.by_pixel(-16, -2),
              hr_version =
              {
                filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West.png",
                priority = "high",
                line_length = 8,
                frame_count = 32,
                animation_speed = 0.25,
                width = 124,
                height = 102,
                shift = util.by_pixel(-15, -2),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 88,
              height = 34,
              shift = util.by_pixel(-4, 8),
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-shadow.png",
                priority = "high",
                line_length = 8,
                frame_count = 32,
                animation_speed = 0.25,
                width = 172,
                height = 66,
                shift = util.by_pixel(-3, 8),
                draw_as_shadow = true,
                scale = 0.5
              }
            }
          }
        }
      },
      fluid_animation =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 40,
          height = 40,
          shift = util.by_pixel(-1, -22),
          scale = 0.5
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 38,
          height = 50,
          shift = util.by_pixel(6, -11),
          scale = 0.5
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 36,
          height = 14,
          shift = util.by_pixel(-1, -4),
          scale = 0.5
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 36,
          height = 50,
          shift = util.by_pixel(-7, -11),
          scale = 0.5
        }
      },
      glass_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-glass.png",
          width = 18,
          height = 20,
          shift = util.by_pixel(-2, -22),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-glass.png",
            width = 36,
            height = 40,
            shift = util.by_pixel(-2, -22),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-glass.png",
          width = 18,
          height = 18,
          shift = util.by_pixel(4, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-glass.png",
            width = 30,
            height = 32,
            shift = util.by_pixel(5, -13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-glass.png",
          width = 22,
          height = 12,
          shift = util.by_pixel(-2, -6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-glass.png",
            width = 40,
            height = 24,
            shift = util.by_pixel(-1, -6),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-glass.png",
          width = 16,
          height = 16,
          shift = util.by_pixel(-6, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-glass.png",
            width = 30,
            height = 32,
            shift = util.by_pixel(-6, -14),
            scale = 0.5
          }
        }
      },
      base_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-legs.png",
          width = 60,
          height = 52,
          shift = util.by_pixel(-2, -4),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-legs.png",
            width = 114,
            height = 106,
            shift = util.by_pixel(-1, -5),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(4, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-legs.png",
            width = 106,
            height = 60,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-legs.png",
          width = 56,
          height = 54,
          shift = util.by_pixel(-2, 6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-legs.png",
            width = 110,
            height = 108,
            shift = util.by_pixel(-2, 6),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(-6, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-legs.png",
            width = 108,
            height = 64,
            shift = util.by_pixel(-6, 12),
            scale = 0.5
          }
        }
      },
      underwater_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-underwater.png",
          width = 52,
          height = 16,
          shift = util.by_pixel(-2, -34),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-underwater.png",
            width = 98,
            height = 36,
            shift = util.by_pixel(-1, -32),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-underwater.png",
          width = 18,
          height = 38,
          shift = util.by_pixel(40, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-underwater.png",
            width = 40,
            height = 72,
            shift = util.by_pixel(39, 17),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-underwater.png",
          width = 52,
          height = 26,
          shift = util.by_pixel(-2, 48),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-underwater.png",
            width = 98,
            height = 48,
            shift = util.by_pixel(-1, 49),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-underwater.png",
          width = 20,
          height = 34,
          shift = util.by_pixel(-40, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-underwater.png",
            width = 40,
            height = 72,
            shift = util.by_pixel(-40, 17),
            scale = 0.5
          }
        }
      }
    },
    placeable_position_visualization =
    {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3*64
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump-reflection.png",
        priority = "extra-high",
        width = 132,
        height = 156,
        shift = util.by_pixel(0, 19),
        variation_count = 4,
        scale = 1
      },
      rotate = false,
      orientation_to_variation = true
    }
  }
