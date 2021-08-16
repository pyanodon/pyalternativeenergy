RECIPE{
    type = 'recipe',
    name = 'sut-panel',
    energy_required = 0.5,
    enabled = false,
    ingredients = {{'iron-plate', 1}},
    results = {{'sut-panel', 1}}
}:add_unlock("thermal-mk03")

ITEM{
    type = 'item',
    name = 'sut-panel',
    icon = '__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk03',
    order = 'a',
    place_result = 'sut-panel',
    stack_size = 10
}


ENTITY {
    type = "simple-entity-with-owner",
    name = "sut-panel",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "sut-panel"},
    fast_replaceable_group = "sut-panel",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture = {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/updraft-tower/floor.png',
                width = 64,
                height = 64,
                scale = 0.5,
                shift = util.by_pixel(0, 0),
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/updraft-tower/sh-floor.png',
                width = 96,
                height = 64,
                scale = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(10, 0),
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/updraft-tower/glass.png',
                width = 64,
                height = 64,
                scale = 0.5,
                shift = util.by_pixel(0, -32),
            },
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
}
