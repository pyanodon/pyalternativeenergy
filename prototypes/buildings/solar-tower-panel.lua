RECIPE{
    type = 'recipe',
    name = 'solar-tower-panel',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = 'super-steel', amount = 20},
        {type = "item", name = 'mirror-mk03', amount = 6},
        {type = "item", name = 'mirror-mk04', amount = 1},
        {type = "item", name = 'anti-reflex-glass', amount = 3},
        {type = "item", name = 'intelligent-unit', amount = 1},
        {type = "item", name = 'axis-tracker', amount = 2},
        {type = "item", name = 'ns-material', amount = 1},
        {type = "item", name = 'small-parts-03', amount = 50},
        {type = "item", name = 'graphene-roll', amount = 5},
        {type = "item", name = 'electric-engine-unit', amount = 1},
        {type = "item", name = 'eva', amount = 3},
        {type = "item", name = 'cf', amount = 7},
        {type = "item", name = 'aerogel', amount = 2},
    },
    results = {
        {type = "item", name = 'solar-tower-panel', amount = 1}
    }
}:add_unlock('thermal-mk04')

ITEM{
    type = 'item',
    name = 'solar-tower-panel',
    icon = '__pyalternativeenergygraphics__/graphics/icons/heliostats.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-thermosolar',
    order = 'db',
    place_result = 'solar-tower-panel0',
    stack_size = 100
}


ENTITY {
    type = 'simple-entity-with-owner',
    name = 'solar-tower-panel0',
    icon = '__pyalternativeenergygraphics__/graphics/icons/heliostats.png',
	icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'solar-tower-panel'},
    fast_replaceable_group = 'solar-panel',
    max_health = 100,
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
    selection_box = {{-2, -2}, {2, 2}},
    picture = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/r-helio.png',
        width = 192,
        height = 192,
        shift = util.by_pixel(0, -32),
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    localised_name = {'entity-name.solar-tower-panel'}
}

-- create sprites for solar tower panels
local panel = data.raw['simple-entity-with-owner']['solar-tower-panel0']
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
                placeable_by = {item = 'solar-tower-panel', count = 1},
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
                localised_name = {'entity-name.solar-tower-panel'}
            }
            i = i + 1
        end
    end
end
