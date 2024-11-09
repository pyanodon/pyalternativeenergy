RECIPE {
  type = "recipe",
  name = "nexelit-substation",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    {type = "item", name = "concrete",       amount = 15},
    {type = "item", name = "niobium-plate",  amount = 5},
    {type = "item", name = "small-parts-02", amount = 20},
    {type = "item", name = "steel-plate",    amount = 10},
    {type = "item", name = "nexelit-plate",  amount = 50},
  },
  results = {{type = "item", name = "nexelit-substation", amount = 1}}
}:add_unlock("electric-energy-distribution-5")

ITEM {
  type = "item",
  name = "nexelit-substation",
  icon = "__pyalternativeenergygraphics__/graphics/icons/nexelit-substation.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-electric",
  order = "b",
  place_result = "nexelit-substation",
  stack_size = 50
}

ENTITY {
  type = "electric-pole",
  name = "nexelit-substation",
  icon = "__pyalternativeenergygraphics__/graphics/icons/nexelit-substation.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.1, result = "nexelit-substation"},
  max_health = 200,
  corpse = "substation-remnants",
  dying_explosion = "substation-explosion",
  track_coverage_during_build_by_moving = true,
  resistances =
  {
    {
      type = "fire",
      percent = 90
    }
  },
  collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
  selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
  --damaged_trigger_effect = hit_effects.entity({{-0.5, -2.5}, {0.5, 0.5}}),
  -- drawing_box = {{-1, -3}, {1, 1}},
  maximum_wire_distance = 60,
  supply_area_distance = 30,
  pictures =
  {
    layers =
    {
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/nexelit-substation/raw.png",
        width = 256,
        height = 288,
        direction_count = 1,
        shift = util.by_pixel(0, -16),
        scale = 0.8,
      },
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/nexelit-substation/a.png",
        width = 256,
        height = 288,
        direction_count = 1,
        shift = util.by_pixel(0, -16),
        scale = 0.8,
      },
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/nexelit-substation/l.png",
        width = 256,
        height = 288,
        direction_count = 1,
        shift = util.by_pixel(0, -16),
        draw_as_glow = true,
        scale = 0.8,
      },
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/nexelit-substation/sh.png",
        width = 256,
        height = 288,
        direction_count = 1,
        shift = util.by_pixel(0, -16),
        scale = 0.8,
        draw_as_shadow = true,
      },
    }
  },

  impact_category = "metal-large",
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/substation.ogg",
      volume = 0.4
    },
    max_sounds_per_type = 3,
    audible_distance_modifier = 0.32,
    fade_in_ticks = 30,
    fade_out_ticks = 40,
    use_doppler_shift = false
  },
  connection_points =
  {
    {
      wire =
      {
        copper = util.by_pixel(0, -123),
        green = util.by_pixel(-25, -90),
        red = util.by_pixel(22, -90)
      },
      shadow =
      {
        copper = util.by_pixel(40, -24),
        green = util.by_pixel(-4, -24),
        red = util.by_pixel(39, 9)
      },
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
      filename = "__base__/graphics/entity/substation/substation-reflection.png",
      priority = "extra-high",
      width = 20,
      height = 28,
      shift = util.by_pixel(0, 55),
      variation_count = 1,
      scale = 5
    },
    rotate = false,
    orientation_to_variation = false
  }
}
