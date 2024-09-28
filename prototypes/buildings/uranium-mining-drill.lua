RECIPE {
    type = 'recipe',
    name = 'uranium-mining-drill',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = 'automated-factory-mk01', amount = 1},
        {type = "item", name = 'electric-mining-drill', amount = 10},
        {type = "item", name = 'advanced-circuit', amount = 10},
        {type = "item", name = 'mechanical-parts-01', amount = 20},
        {type = "item", name = 'stainless-steel', amount = 50},
        {type = "item", name = 'electric-engine-unit', amount = 20},
        {type = "item", name = 'nbfe-alloy', amount = 50},
        {type = "item", name = 'small-parts-02', amount = 100},
    },
    results = {
        {type = "item", name = 'uranium-mining-drill', amount = 1}
    }
}:add_unlock('uranium-mining')

ITEM {
    type = 'item',
    name = 'uranium-mining-drill',
    icon = '__pyalternativeenergygraphics__/graphics/icons/uranium-mining-drill-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-special-buildings',
    order = 's[uranium]a',
    place_result = 'uranium-mining-drill',
    stack_size = 10
}

data:extend{{
    type = 'resource-category',
    name = 'uranium',
}}

data.raw['resource']['uranium-ore'].category = 'uranium'

ENTITY {
    type = 'mining-drill',
    name = 'uranium-mining-drill',
    icon = '__pyalternativeenergygraphics__/graphics/icons/uranium-mining-drill-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'uranium-mining-drill'},
    fast_replaceable_group = 'ree-mining-drill',
    max_health = 700,
    resource_categories = {'uranium'},
    corpse = 'big-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_slots = 6,
    allowed_effects = {'consumption', 'speed', 'pollution', 'productivity'},
    mining_speed = 3,
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
        emissions_per_minute = {
            pollution = 0.2
        },
    },
    energy_usage = '180MW',
    mining_power = 1,
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = '__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png',
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions['ree-mining-drill-mkxx'].points,
    circuit_connector_sprites = circuit_connector_definitions['ree-mining-drill-mkxx'].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/uranium-mining-drill/top.png',
                    width = 1600/10,
                    height = 1280/10,
                    line_length = 10,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -128+16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/uranium-mining-drill/bot.png',
                    width = 1600/10,
                    height = 1280/10,
                    line_length = 10,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/uranium-mining-drill/shadow.png',
                    width = 1920/10,
                    height = 1600/10,
                    line_length = 10,
                    frame_count = 100,
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    shift = util.by_pixel(16, 0),
                },
            }
        },
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pycoalprocessinggraphics__/sounds/borax-mine.ogg'},
        idle_sound = {filename = '__pycoalprocessinggraphics__/sounds/borax-mine.ogg', volume = 0.3},
        apparent_volume = 2.5
    }
}
