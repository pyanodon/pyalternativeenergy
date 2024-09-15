RECIPE {
    type = 'recipe',
    name = 'solar-panel-mk01',
    energy_required = 10,
    enabled = false,
    category = 'crafting-with-fluid',
    ingredients = {
        {type = "item", name = 'intermetallics', amount = 5},
        {type = "item", name = 'aluminium-plate', amount = 5},
        {type = "item", name = 'polycrystalline-cell', amount = 12},
        {type = "item", name = 'anti-reflex-glass', amount = 1},
        {type = 'fluid', name = 'etching', amount = 50},
        {type = "item", name = 'electronic-circuit', amount = 5},
        {type = "item", name = 'copper-cable', amount = 10},
        {type = "item", name = 'small-parts-01', amount = 10},
        {type = "item", name = 'melamine', amount = 10},
        {type = "item", name = 'mechanical-parts-01', amount = 1},
    },
    results = {
        {type = "item", name = 'solar-panel-mk01', amount = 1}
    }
}:add_unlock('solar-mk01')

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
        type = 'solar-panel',
        name = 'solar-panel-mk01',
        icon = '__pyalternativeenergygraphics__/graphics/icons/solar-panel-mk01.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation'},
        minable = {mining_time = 0.1, result = 'solar-panel-mk01'},
        max_health = 200,
        fast_replaceable_group = 'solar-panel',
        corpse = 'solar-panel-remnants',
        dying_explosion = 'solar-panel-explosion',
        collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        energy_source =
        {
          type = 'electric',
          usage_priority = 'solar'
        },
        picture = {
          filename = '__core__/graphics/empty.png',
          width = 1,
          height = 1
        },
        integration_patch =
        {
          layers =
          {
            {
              filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk01/raw.png',
              width = 256,
              height = 288,
              shift = util.by_pixel(-0, -16),
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk01/ao.png',
                width = 256,
                height = 288,
                shift = util.by_pixel(-0, -16),
            },
            {
              filename = '__pyalternativeenergygraphics__/graphics/entity/solar-panel-mk01/sh.png',
              width = 256,
              height = 288,
              shift = util.by_pixel(0, -16),
              draw_as_shadow = true,
            }
          }
        },
        integration_patch_render_layer = 'object',
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
        production = '1.5MW'
}