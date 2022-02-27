RECIPE {
    type = 'recipe',
    name = 'solar-panel-mk04',
    energy_required = 0.5,
    enabled = true,
    ingredients = {
      {'super-alloy', 50},
      {'mqdc', 10},
      {'anti-reflex-glass', 20},
      {'intelligent-unit', 5},
      {'metastable-quasicrystal', 1},
      {'small-parts-03', 100},
      {'biopolymer', 30},
      {'molybdenum-plate', 10},
      {'carbon-nanotube', 10},
      {'milfe', 5},
  },
  results = {{'solar-panel-mk04', 1}}

}:add_unlock("solar-mk04")

ITEM {
    type = 'item',
    name = 'solar-panel-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk04.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk04',
    order = 'd',
    place_result = 'solar-panel-mk04',
    stack_size = 10
}

ENTITY {
        type = "solar-panel",
        name = "solar-panel-mk04",
        icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk04.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "solar-panel-mk04"},
        max_health = 200,
        fast_replaceable_group = "solar-panel",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
        selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
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
              filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk04/raw.png",
              width = 384,
              height = 448,
              shift = util.by_pixel(-0, -32),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk04/l.png",
                width = 384,
                height = 448,
                shift = util.by_pixel(-0, -32),
                draw_as_glow = true,
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk04/sh.png",
              width = 416,
              height = 384,
              shift = util.by_pixel(16, -0),
              draw_as_shadow = true,
            }
          }
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        production = "4MW"
}
