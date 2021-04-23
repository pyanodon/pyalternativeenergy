RECIPE {
    type = "recipe",
    name = "anti-solar",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"anti-solar", 1}
    }
}

ITEM {
    type = "item",
    name = "anti-solar",
    icon = "__pyalternativeenergygraphics__/graphics/icons/anti-solar.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "a",
    place_result = "anti-solar",
    stack_size = 10
}

ENTITY {
    type = "solar-panel",
    name = "anti-solar",
    icon = "__pyalternativeenergygraphics__/graphics/icons/anti-solar.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "anti-solar"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    --damaged_trigger_effect = hit_effects.entity(),
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      layers =
      {
        {
          filename = "__pyalternativeenergygraphics__/graphics/icons/filler.png",
          width = 4,
          height = 4,
          shift = util.by_pixel(-0, 0),
        },
      }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    production = "60kW",
  }
