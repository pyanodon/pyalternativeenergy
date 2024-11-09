local sounds = require "__base__/prototypes/entity/sounds"

RECIPE {
  type = "recipe",
  name = "mk04-fluid-wagon",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    {type = "item", name = "super-alloy",             amount = 100},
    {type = "item", name = "biopolymer",              amount = 50},
    {type = "item", name = "intelligent-unit",        amount = 2},
    {type = "item", name = "electronics-mk04",        amount = 1},
    {type = "item", name = "cf",                      amount = 50},
    {type = "item", name = "metastable-quasicrystal", amount = 1},
    {type = "item", name = "small-parts-03",          amount = 500},
    {type = "item", name = "metallic-glass",          amount = 20},
    {type = "item", name = "low-density-structure",   amount = 20},
  },
  results = {
    {type = "item", name = "mk04-fluid-wagon", amount = 1}
  }
}:add_unlock("railway-mk04")

ITEM {
  type = "item",
  name = "mk04-fluid-wagon",
  icon = "__pyalternativeenergygraphics__/graphics/icons/mk04-fluid-wagon.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-trains",
  order = "de",
  place_result = "mk04-fluid-wagon",
  stack_size = 5
}

ENTITY {
  type = "fluid-wagon",
  name = "mk04-fluid-wagon",
  icon = "__pyalternativeenergygraphics__/graphics/icons/mk04-fluid-wagon.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
  minable = {mining_time = 0.5, result = "mk04-fluid-wagon"},
  mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
  max_health = 700,
  corpse = "fluid-wagon-remnants",
  dying_explosion = "fluid-wagon-explosion",
  collision_box = {{-0.6, -1.5}, {0.6, 1.5}}, --must have a relation between this box and the joint distance to calibrate the wagon distance. (min 0.2)
  selection_box = {{-1.2, -1.7}, {1.2, 1.7}},
  --damaged_trigger_effect = hit_effects.entity(),
  vertical_selection_shift = -0.5,
  weight = 400,
  max_speed = 1.7,
  braking_force = 25,
  friction_force = 0.30,
  air_resistance = 0.0050,
  connection_distance = 2,
  joint_distance = 1.5, --igual to collision box works if the sprite is tight in the png
  tank_count = 1,
  energy_per_hit_point = 5,
  capacity = 75000,
  resistances =
  {
    {
      type = "fire",
      decrease = 15,
      percent = 50
    },
    {
      type = "physical",
      decrease = 30,
      percent = 10
    },
    {
      type = "impact",
      decrease = 60,
      percent = 60
    },
    {
      type = "explosion",
      decrease = 55,
      percent = 30
    },
    {
      type = "acid",
      decrease = 3,
      percent = 90
    }
  },
  --back_light = rolling_stock_back_light(),
  -- stand_by_light = {
  --   {
  --     minimum_darkness = 0.3,
  --     color = {0.05, 0.2, 1, 0},
  --     shift = {-0.6, -3.5},
  --     size = 2,
  --     intensity = 0.5,
  --     add_perspective = true
  --   },
  --   {
  --     minimum_darkness = 0.3,
  --     color = {0.05, 0.2, 1, 0},
  --     shift = {0.6, -3.5},
  --     size = 2,
  --     intensity = 0.5,
  --     add_perspective = true
  --   }
  -- },
  --color = {r = 1, g = 0.0, b = 0.0},
  pictures =
  {
    rotated =
    {
      layers =
      {
        {
          priority = "very-low",
          --dice = 4,
          width = 416,
          height = 384,
          --back_equals_front = true,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-01.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-02.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-03.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-04.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-05.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-06.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-07.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-08.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-09.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-10.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-11.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-12.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-13.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-14.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-15.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/hr-fluid-16.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(0, -20),
          scale = 0.5
        }
      },
      {
        priority = "very-low",
        --dice = 4,
        flags = {"shadow"},
        width = 208,
        height = 192,
        --back_equals_front = true,
        direction_count = 256,
        draw_as_shadow = true,
        allow_low_quality_rotation = true,
        filenames =
        {
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-01.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-02.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-03.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-04.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-05.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-06.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-07.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-08.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-09.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-10.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-11.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-12.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-13.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-14.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-15.png",
          "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sh-16.png",
        },
        line_length = 4,
        lines_per_file = 4,
        shift = util.by_pixel(32, 10),
      }
    }
  },
  minimap_representation =
  {
    filename = "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/icon-map.png",
    flags = {"icon"},
    size = {20, 16},
    scale = 1
  },
  selected_minimap_representation =
  {
    filename = "__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/icon-map-selected.png",
    flags = {"icon"},
    size = {20, 16},
    scale = 1
  },
  --wheels = standard_train_wheels,
  drive_over_tie_trigger = {
    type = "play-sound",
    sound = sound_variations("__base__/sound/train-tie", 6, 0.4, {volume_multiplier("main-menu", 2.4), volume_multiplier("driving", 1.3)})
  },
  tie_distance = 30,
  crash_trigger = crash_trigger(),
  open_sound = sounds.cargo_wagon_open,
  close_sound = sounds.cargo_wagon_close,
  sound_minimum_speed = 1,
  impact_category = "default",
  water_reflection = {
    pictures =
    {
      filename = "__base__/graphics/entity/locomotive/reflection/locomotive-reflection.png",
      priority = "extra-high",
      width = 20,
      height = 52,
      shift = util.by_pixel(0, 40),
      variation_count = 1,
      scale = 5
    },
    rotate = true,
    orientation_to_variation = false
  },
}
