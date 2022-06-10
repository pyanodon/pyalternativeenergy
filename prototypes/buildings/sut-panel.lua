RECIPE{
    type = 'recipe',
    name = 'sut-panel',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'small-parts-02', 5},
        {'py-asphalt', 1},
        {'glass', 2},
    },
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
    minable = {mining_time = 0.1, result = "sut-panel"},
    fast_replaceable_group = "sut-panel",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    collision_mask = {"item-layer", "object-layer", "water-tile"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture = {
        layers = {
            --[[
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
            ]]--
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

local panel = data.raw["simple-entity-with-owner"]["sut-panel"]
do
    local i = 1
    for y = 0, 128 - 64, 64 do
        for x = 0, 1920 - 64, 64 do
            ENTITY {
                type = "simple-entity-with-owner",
                name = "sut-panel-" .. i,
                icon = panel.icon,
                icon_size = panel.icon_size,
                flags = {"placeable-neutral", "player-creation"},
                minable = panel.minable,
                fast_replaceable_group = "sut-panel",
                max_health = panel.max_health,
                corpse = panel.corpse,
                dying_explosion = panel.dying_explosion,
                collision_box = panel.collision_box,
                collision_mask = panel.collision_mask,
                selection_box = panel.selection_box,
                picture = {
                    layers = {
                        {
                            filename = '__pyalternativeenergygraphics__/graphics/entity/updraft-tower/glass.png',
                            width = 64,
                            height = 64,
                            x = x,
                            y = y,
                            scale = 0.5,
                            shift = util.by_pixel(0, -32),
                        },
                    },
                },
                vehicle_impact_sound = panel.vehicle_impact_sound,
                render_layer = "wires",
                placeable_by = {item = "sut-panel", count = 1},
                localised_name = {"entity-name.sut-panel"}
            }
            i = i + 1
        end
    end
end

ENTITY {
    type = "simple-entity-with-owner",
    name = "sut-panel-floor",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "not-blueprintable"},
    minable = {mining_time = 0.5, result = "sut-panel"},
    fast_replaceable_group = "sut-panel",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{0,0}, {0,0}},
    selection_box = {{0,0}, {0,0}},
    picture = {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/updraft-tower/floor.png',
                width = 64,
                height = 64,
                scale = 0.5,
                shift = util.by_pixel(-16, -16),
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/updraft-tower/sh-floor.png',
                width = 96,
                height = 64,
                scale = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(-8, -16),
            },
            --[[
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/updraft-tower/glass.png',
                width = 64,
                height = 64,
                scale = 0.5,
                shift = util.by_pixel(0, -32),
            },
            ]]--
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    render_layer = "floor"
}
