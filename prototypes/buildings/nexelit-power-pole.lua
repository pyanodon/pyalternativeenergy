RECIPE {
    type = "recipe",
    name = "nexelit-power-pole",
    energy_required = 1,
    category = 'crafting',
    enabled = false,
    ingredients = {
        {"concrete", 10},
        {"nexelit-plate", 2},
    },
    results = {
        {"nexelit-power-pole", 1},
    }
}:add_unlock("electric-energy-distribution-1")

ITEM {
    type = "item",
    name = "nexelit-power-pole",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nexelit-power-pole.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-electric",
    order = "b",
    place_result = "nexelit-power-pole",
    stack_size = 10
}

ENTITY {
    type = "electric-pole",
    name = "nexelit-power-pole",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nexelit-power-pole.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "nexelit-power-pole"},
    max_health = 100,
    corpse = "medium-electric-pole-remnants",
    dying_explosion = "medium-electric-pole-explosion",
    track_coverage_during_build_by_moving = true,
    fast_replaceable_group = "electric-pole",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      },
      {
        type = "impact",
        percent = 100
      },
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --damaged_trigger_effect = hit_effects.entity({{-0.2, -2.2},{0.2, 0.2}}),
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    maximum_wire_distance = 18,
    supply_area_distance = 6.5,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    pictures =
    {
      layers =
      {
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/nexelit-power-pole/raw.png",
          priority = "extra-high",
          width = 128,
          height = 256,
          scale = 0.65,
          direction_count = 4,
          shift = util.by_pixel(0, -50),
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/nexelit-power-pole/sh.png",
            priority = "extra-high",
            width = 128,
            height = 64,
            scale = 0.65,
            draw_as_shadow = true,
            direction_count = 4,
            shift = util.by_pixel(16, 5),
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/nexelit-power-pole/l.png",
            priority = "extra-high",
            width = 128,
            height = 256,
            scale = 0.65,
            draw_as_light = true,
            direction_count = 4,
            shift = util.by_pixel(0, -50),
        },

      }
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel_hr(101, 8),
          red = util.by_pixel_hr(101, 15),
          green = util.by_pixel_hr(101, 10)
        },
        wire =
        {
          copper = util.by_pixel_hr(0, -210),
          red = util.by_pixel_hr(0, -200),
          green = util.by_pixel_hr(-0, -215)
        }
      },
      {
        shadow =
        {
            copper = util.by_pixel_hr(101, 8),
            red = util.by_pixel_hr(101, 15),
            green = util.by_pixel_hr(101, 10)
        },
        wire =
        {
          copper = util.by_pixel_hr(0, -210),
          red = util.by_pixel_hr(0, -200),
          green = util.by_pixel_hr(-0, -215)
        }
      },
      {
        shadow =
        {
            copper = util.by_pixel_hr(101, 8),
            red = util.by_pixel_hr(101, 15),
            green = util.by_pixel_hr(101, 10)
        },
        wire =
        {
          copper = util.by_pixel_hr(0, -210),
          red = util.by_pixel_hr(0, -200),
          green = util.by_pixel_hr(-0, -215)
        }
      },
      {
        shadow =
        {
            copper = util.by_pixel_hr(101, 8),
            red = util.by_pixel_hr(101, 15),
            green = util.by_pixel_hr(101, 10)
        },
        wire =
        {
          copper = util.by_pixel_hr(0, -210),
          red = util.by_pixel_hr(0, -200),
          green = util.by_pixel_hr(-0, -215)
        }
      },
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/medium-electric-pole/medium-electric-pole-reflection.png",
        priority = "extra-high",
        width = 12,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
}
