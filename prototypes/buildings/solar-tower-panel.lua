RECIPE{
    type = 'recipe',
    name = 'solar-tower-panel',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'iron-plate', 1}},
    results = {{'solar-tower-panel', 1}}
}

ITEM{
    type = 'item',
    name = 'solar-tower-panel',
    icon = '__pyalternativeenergygraphics__/graphics/icons/heliostats.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk04',
    order = 'a',
    place_result = 'solar-tower-panel',
    stack_size = 10
}


ENTITY {
    type = "simple-entity-with-owner",
    name = "solar-tower-panel",
    icon = "__pyalternativeenergygraphics__/graphics/icons/heliostats.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "solar-tower-panel"},
    fast_replaceable_group = "solar-panel",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    picture = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/r-helio.png',
        width = 192,
        height = 192,
        shift = util.by_pixel(0, 0),
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 0.70},
        apparent_volume = 2.5
    }
}

-- create sprites for solar tower panels
local panel = data.raw["simple-entity-with-owner"]["solar-tower-panel"]
do
    local i = 1
    for y = 0, 768 - 192, 192 do
        for x = 0, 1536 - 192, 192 do
            ENTITY{
                type = 'simple-entity-with-owner',
                name = 'solar-tower-panel' .. i,
                icon = panel.icon,
                icon_size = panel.icon_size,
                flags = {'placeable-neutral', 'player-creation'},
                minable = panel.minable,
                placeable_by = {item = "solar-tower-panel", count = 1},
                fast_replaceable_group = 'solar-panel',
                max_health = panel.max_health,
                corpse = panel.corpse,
                dying_explosion = panel.dying_explosion,
                collision_box = panel.collision_box,
                selection_box = panel.selection_box,
                picture = {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/r-helio.png',
                    width = panel.picture.width,
                    height = panel.picture.height,
                    x = x,
                    y = y,
                    shift = panel.picture.shift,
                },
                vehicle_impact_sound = panel.vehicle_impact_sound,
                working_sound = panel.working_sound
            }
            i = i + 1
        end
    end
end
