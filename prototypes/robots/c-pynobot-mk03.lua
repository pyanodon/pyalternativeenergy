local sounds = require "__base__/prototypes/entity/sounds"

RECIPE {
  type = "recipe",
  name = "c-pynobot-mk03",
  energy_required = 15,
  category = "crafting-with-fluid",
  enabled = false,
  ingredients = {
    {type = "item",  name = "processing-unit",          amount = 2},
    {type = "item",  name = "super-steel",              amount = 3},
    {type = "item",  name = "cf",                       amount = 20},
    {type = "item",  name = "carbon-nanotube",          amount = 3},
    {type = "item",  name = "biopolymer",               amount = 3},
    {type = "item",  name = "small-parts-03",           amount = 30},
    {type = "item",  name = "ns-material",              amount = 1},
    {type = "item",  name = "low-density-structure",    amount = 3},
    {type = "item",  name = "biobattery",               amount = 1},
    {type = "item",  name = "py-construction-robot-02", amount = 1},
    {type = "item",  name = "electric-engine-unit",     amount = 1},
    {type = "item",  name = "gearbox-mk03",             amount = 1},
    {type = "fluid", name = "bio-oil",                  amount = 200},
  },
  results = {
    {type = "item", name = "c-pynobot-mk03", amount = 1}
  }
}

ITEM {
  type = "item",
  name = "c-pynobot-mk03",
  icon = "__pyalternativeenergygraphics__/graphics/icons/c-pynobot-mk03.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-robots",
  order = "f",
  place_result = "c-pynobot-mk03",
  stack_size = 50
}

ENTITY {
  type = "construction-robot",
  name = "c-pynobot-mk03",
  icon = "__pyalternativeenergygraphics__/graphics/icons/c-pynobot-mk03.png",
  icon_size = 64,
  flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
  minable = {
    mining_time = 0.1,
    result = "c-pynobot-mk03"
  },
  resistances = {{type = "fire", percent = 85}},
  max_health = 20,
  collision_box = {{0, 0}, {0, 0}},
  selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
  max_payload_size = 3,
  speed = 0.17,
  transfer_distance = 0.5,
  max_energy = "3MJ",
  energy_per_tick = "0.06kJ",
  speed_multiplier_when_out_of_energy = 0.2,
  energy_per_move = "3.0kJ",
  min_to_charge = 0.2,
  max_to_charge = 0.95,
  working_light = {intensity = 1, size = 3, color = {r = 0.3, g = 0.8, b = 1}},
  idle = {
    filename = "__pyalternativeenergygraphics__/graphics/entity/c-pynobot-mk03/hr-idle.png",
    priority = "high",
    line_length = 8,
    width = 128,
    height = 160,
    frame_count = 1,
    shift = util.by_pixel(0, -16),
    direction_count = 16,
    scale = 0.5
  },
  in_motion = {
    filename = "__pyalternativeenergygraphics__/graphics/entity/c-pynobot-mk03/hr-running.png",
    priority = "high",
    line_length = 8,
    width = 128,
    height = 160,
    frame_count = 1,
    shift = util.by_pixel(0, -16),
    direction_count = 16,
    scale = 0.5
  },
  shadow_idle = {
    filename = "__pyalternativeenergygraphics__/graphics/entity/c-pynobot-mk03/hr-sh.png",
    priority = "high",
    line_length = 8,
    width = 128,
    height = 96,
    frame_count = 1,
    draw_as_shadow = true,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5
  },
  shadow_in_motion = {
    filename = "__pyalternativeenergygraphics__/graphics/entity/c-pynobot-mk03/hr-sh.png",
    priority = "high",
    line_length = 8,
    width = 128,
    height = 96,
    frame_count = 1,
    draw_as_shadow = true,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5
  },
  working = {
    filename = "__pyalternativeenergygraphics__/graphics/entity/c-pynobot-mk03/hr-working.png",
    priority = "high",
    line_length = 8,
    width = 128,
    height = 160,
    frame_count = 1,
    shift = util.by_pixel(0, -16),
    direction_count = 16,
    scale = 0.5
  },
  shadow_working = {
    filename = "__pyalternativeenergygraphics__/graphics/entity/c-pynobot-mk03/hr-sh.png",
    priority = "high",
    line_length = 8,
    width = 128,
    height = 96,
    frame_count = 1,
    draw_as_shadow = true,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5
  },
  smoke = {
    filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
    width = 39,
    height = 32,
    frame_count = 19,
    line_length = 19,
    shift = {0.078125, -0.15625},
    animation_speed = 0.3
  },
  sparks = {
    {
      filename = "__base__/graphics/entity/sparks/sparks-01.png",
      width = 39,
      height = 34,
      frame_count = 19,
      line_length = 19,
      shift = {-0.109375, 0.3125},
      tint = {r = 0.0, g = 0.9, b = 1.0, a = 1.0},
      animation_speed = 0.3
    },
    {
      filename = "__base__/graphics/entity/sparks/sparks-02.png",
      width = 36,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.03125, 0.125},
      tint = {r = 0.0, g = 0.9, b = 1.0, a = 1.0},
      animation_speed = 0.3
    },
    {
      filename = "__base__/graphics/entity/sparks/sparks-03.png",
      width = 42,
      height = 29,
      frame_count = 19,
      line_length = 19,
      shift = {-0.0625, 0.203125},
      tint = {r = 0.0, g = 0.9, b = 1.0, a = 1.0},
      animation_speed = 0.3
    },
    {
      filename = "__base__/graphics/entity/sparks/sparks-04.png",
      width = 40,
      height = 35,
      frame_count = 19,
      line_length = 19,
      shift = {-0.0625, 0.234375},
      tint = {r = 0.0, g = 0.9, b = 1.0, a = 1.0},
      animation_speed = 0.3
    },
    {
      filename = "__base__/graphics/entity/sparks/sparks-05.png",
      width = 39,
      height = 29,
      frame_count = 19,
      line_length = 19,
      shift = {-0.109375, 0.171875},
      tint = {r = 0.0, g = 0.9, b = 1.0, a = 1.0},
      animation_speed = 0.3
    },
    {
      filename = "__base__/graphics/entity/sparks/sparks-06.png",
      width = 44,
      height = 36,
      frame_count = 19,
      line_length = 19,
      shift = {0.03125, 0.3125},
      tint = {r = 0.0, g = 0.9, b = 1.0, a = 1.0},
      animation_speed = 0.3
    }
  },
  working_sound = sounds.construction_robot(0.5),
  cargo_centered = {0.0, 0.2},
  construction_vector = {0.30, 0.22}
}
