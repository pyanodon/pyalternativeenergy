local sounds = require("__base__/prototypes/entity/sounds")

data:extend({{
  type = "equipment-grid",
  name = "mk04-train-equipment-grid",
  width = 10,
  height = 8,
  equipment_categories = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"]["equipment_categories"]),
}})

RECIPE {
    type = "recipe",
    name = "mk04-locomotive",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"super-alloy", 150},
        {"biopolymer", 200},
        {"intelligent-unit", 5},
        {"nexelit-plate", 20},
        {"electronics-mk04", 2},
        {"cf", 100},
        {"sc-engine", 5},
        {'metastable-quasicrystal', 2},
        {"small-parts-03", 300},
        {"metallic-glass", 10},
        {"low-density-structure", 20},
    },
    results = {
        {"mk04-locomotive", 1}
    }
}:add_unlock("railway-mk04")

ITEM {
    type = "item",
    name = "mk04-locomotive",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mk04-locomotive.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-trains",
    order = "da",
    place_result = "mk04-locomotive",
    stack_size = 5
}

{
    type = "locomotive",
    name = "mk04-locomotive",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mk04-locomotive.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.5, result = "mk04-locomotive"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 1000,
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    collision_box = {{-0.6, -2.5}, {0.6, 2.5}},
    selection_box = {{-1, -3.0}, {1, 3.0}},
    --damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -4}, {1, 3}},
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 900,
    max_speed = 1.7,
    max_power = "700kW",
    reversing_power_modifier = 0.4,
    braking_force = 25,
    friction_force = 0.40,
    vertical_selection_shift = -0.2,
    air_resistance = 0.0025, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
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
    burner =
    {
      fuel_category = "quantum",
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          draw_as_glow = true,
          scale = 1,
          width = 240,
          height = 488
        },
        shift = util.by_pixel(0, -323),
        size = 1.0,
        intensity = 2.5,
        --color = {r = 1, g = 0.9, b = 1}
      },
    },
    --back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 1, g = 0.0, b = 0.0},
    pictures =
    {
      layers =
      {
        {
          dice = 4,
          priority = "very-low",
          width = 240,
          height = 256,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-01.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-02.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-03.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-04.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-05.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-06.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-07.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-08.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-09.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-10.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-11.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-12.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-13.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-14.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-15.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/loco-16.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(0, -0),
          hr_version =
          {
            priority = "very-low",
            dice = 4,
            width = 480,
            height = 512,
            direction_count = 256,
            allow_low_quality_rotation = true,
            filenames =
            {
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-01.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-02.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-03.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-04.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-05.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-06.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-07.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-08.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-09.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-10.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-11.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-12.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-13.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-14.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-15.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-loco-16.png",
            },
            line_length = 4,
            lines_per_file = 4,
            shift = util.by_pixel(0, -0),
            scale = 0.5
            }
        },
        {
          dice = 4,
          priority = "very-low",
          flags = { "mask" },
          width = 240,
          height = 256,
          --color = {a=0.5},
          draw_as_light = true,
          --blend_mode = "additive",
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-01.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-02.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-03.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-04.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-05.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-06.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-07.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-08.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-09.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-10.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-11.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-12.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-13.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-14.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-15.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/glow-16.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(0, -0),
          apply_runtime_tint = true,
          hr_version =
          {
            priority = "very-low",
            flags = { "mask" },
            dice = 4,
            width = 480,
            height = 512,
            --color = {a=0.5},
            draw_as_light = true,
            --blend_mode = "additive",
            direction_count = 256,
            allow_low_quality_rotation = true,
            filenames =
            {
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-01.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-02.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-03.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-04.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-05.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-06.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-07.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-08.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-09.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-10.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-11.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-12.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-13.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-14.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-15.png",
                "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/hr-glow-16.png",
            },
            line_length = 4,
            lines_per_file = 4,
            shift = util.by_pixel(0, -0),
            apply_runtime_tint = true,
            scale = 0.5
            }
        },
        {
          priority = "very-low",
          dice = 4,
          flags = { "shadow" },
          width = 240,
          height = 256,
          direction_count = 256,
          draw_as_shadow = true,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-01.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-02.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-03.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-04.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-05.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-06.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-07.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-08.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-09.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-10.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-11.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-12.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-13.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-14.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-15.png",
            "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sh-16.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(32, 10),
        }
      }
    },
    minimap_representation =
    {
      filename = "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/icon-map.png",
      flags = {"icon"},
      size = {20, 44},
      scale = 0.4
    },
    selected_minimap_representation =
    {
      filename = "__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/icon-map-selected.png",
      flags = {"icon"},
      size = {20, 44},
      scale = 0.4
    },
    --wheels = standard_train_wheels,
    stop_trigger =
    {
      -- left side

      {
        type = "play-sound",
        sound =
        {
          filename = "__pyalternativeenergygraphics__/sounds/locomotive-break.ogg",
          volume = 0.5
        },
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 30,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        filename = "__pyalternativeenergygraphics__/sounds/locomotive-engine.ogg",
        volume = 0.4
      },
      deactivate_sound =
      {
        filename = "__pyalternativeenergygraphics__/sounds/locomotive-end-engine.ogg",
        volume = 0.3
      },
      match_speed_to_activity = true,
      max_sounds_per_type = 2,
      -- use_doppler_shift = false
    },
    open_sound = { filename = "__pyalternativeenergygraphics__/sounds/locomotive-open.ogg", volume=0.6 },
    close_sound = { filename = "__pyalternativeenergygraphics__/sounds/locomotive-close.ogg", volume = 0.6 },
    sound_minimum_speed = 0.5,
    sound_scaling_ratio = 0.35,
    equipment_grid = "mk04-train-equipment-grid",
    water_reflection = _ENV.locomotive_reflection(),
  }
