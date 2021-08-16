RECIPE {
    type = 'recipe',
    name = 'solar-panel-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {{'pipe', 20}},
    results = {{'solar-panel-mk01', 1}}
}:add_unlock("solar-mk01")

ITEM {
    type = 'item',
    name = 'solar-panel-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'd',
    place_result = 'solar-panel-mk01',
    stack_size = 10
}

ENTITY {
        type = "solar-panel",
        name = "solar-panel-mk01",
        icon = "__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk01.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "solar-panel-mk01"},
        max_health = 200,
        fast_replaceable_group = "solar-panel",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
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
              filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk01/raw.png",
              width = 256,
              height = 288,
              shift = util.by_pixel(-0, -16),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk01/ao.png",
                width = 256,
                height = 288,
                shift = util.by_pixel(-0, -16),
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk01/sh.png",
              width = 256,
              height = 288,
              shift = util.by_pixel(0, -16),
              draw_as_shadow = true,
            }
          }
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        production = "60kW"
}