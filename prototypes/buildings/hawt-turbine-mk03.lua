local collision_data = require("prototypes.functions.collision-mask")
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE {
    type = "recipe",
    name = "hawt-turbine-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"rotor-mk03", 1},
        {"nacelle-mk03", 1},
        {"anemometer-mk03", 1},
        {"vane-mk03", 1},
        {"tower-mk03", 1},
        {"electronics-mk03", 1},
    },
    results = {
        {"hawt-turbine-mk03", 1}
    }
}:add_unlock("wind-mk03")

ITEM {
    type = "item",
    name = "hawt-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "d",
    place_result = "hawt-turbine-mk03",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "hawt-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "hidden"},
    collision_mask = {wind_layer, 'object-layer', 'player-layer', 'water-tile'},
    minable = {mining_time = 0.5, result = "hawt-turbine-mk03"},
    placeable_by = {item = 'hawt-turbine-mk03', count = 1},
    fast_replaceable_group = "hawt-turbine",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "50MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '50MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    continuous_animation = true,
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r4.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s4.png",
                width = 287,
                height = 160,
                line_length = 5,
                frame_count = 20,
                shift = util.by_pixel(44, 16),
                animation_speed = 1,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l4.png",
                width = 192,
                height = 416,
                line_length = 10,
                frame_count = 20,
                shift = util.by_pixel(0, -112),
                animation_speed = 1,
                draw_as_glow = true,
            },
        }
    },
    localised_name = {'entity-name.hawt-turbine-mk03'},
    localised_description = {'entity-description.hawt-turbine-mk03'}
}

data:extend(
    {
        {
        type = 'simple-entity-with-force',
        name = 'hawt-turbine-mk03-collision',
        render_layer = 'wires-above',
        icon = '__pyalternativeenergygraphics__/graphics/icons/hawt-turbine-mk03.png',
        icon_size = 64,
        flags = {'placeable-neutral', 'player-creation', 'not-on-map'},
        collision_box = {{-12.9, -12.9}, {12.9, 12.9}},
        collision_mask = { wind_layer },
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        selectable_in_game = false,
        picture = {
            filename = '__pyalternativeenergygraphics__/graphics/icons/filler.png',
            width = 4,
            height = 4,
        },
    }
})

local hawt

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-south'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r1.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s1.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l1.png'
data:extend{hawt}

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-southwest'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r2.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s2.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l2.png'
data:extend{hawt}

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-west'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r3.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s3.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l3.png'
data:extend{hawt}

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-northwest'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r4.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s4.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l4.png'
data:extend{hawt}

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-north'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r5.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s5.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l5.png'
data:extend{hawt}

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-northeast'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r6.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s6.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l6.png'
data:extend{hawt}

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-east'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r7.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s7.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l7.png'
data:extend{hawt}

hawt = table.deepcopy(data.raw['electric-energy-interface']['hawt-turbine-mk03'])
hawt.name = 'hawt-turbine-mk03-southeast'
hawt.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/r8.png'
hawt.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/s8.png'
hawt.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/hawt-turbine-mk03/l8.png'
data:extend{hawt}