local collision_data = require("prototypes.functions.collision-mask")
local wind_layer = collision_data and collision_data.wind_layer or "layer-50" -- make YAFC happy

RECIPE {
    type = "recipe",
    name = "multiblade-turbine-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"aerial-base", 1},
        {"rotor-mk03", 3},
        {"anemometer-mk03", 1},
        {"vane-mk03", 1},
        {"tower-mk03", 1},
    },
    results = {
        {"multiblade-turbine-mk03", 1}
    }
}:add_unlock("wind-mk03")

ITEM {
    type = "item",
    name = "multiblade-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "z",
    place_result = "multiblade-turbine-mk03",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "multiblade-turbine-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    collision_mask = {wind_layer, "object-layer", "water-tile"},
    minable = {mining_time = 0.5, result = "multiblade-turbine-mk03"},
    placeable_by = {item = 'multiblade-turbine-mk03', count = 1},
    fast_replaceable_group = "multiblade-turbine-mk03",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "34MW",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '34MW',
    energy_usage = "0kW",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/multiblade-turbine-mk03.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    continuous_animation = true,
    animations = {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png',
                width = 288,
                height = 288,
                line_length = 1,
                frame_count = 1,
                repeat_count = 30,
                animation_speed = 0.5,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r4.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s4.png",
                width = 320,
                height = 224,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(44, 16),
                animation_speed = 0.25,
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l4.png",
                width = 288,
                height = 352,
                line_length = 6,
                frame_count = 30,
                shift = util.by_pixel(0, -32),
                animation_speed = 0.25,
                draw_as_glow = true,
            },
        }
    },
    localised_name = {'entity-name.multiblade-turbine-mk03'},
    localised_description = {'entity-description.multiblade-turbine-mk03'}
}


data:extend{{
    type = 'simple-entity-with-force',
    name = 'multiblade-turbine-mk03-collision',
    render_layer = "ground-tile",
    icon = "__pyalternativeenergygraphics__/graphics/icons/multiblade-turbine-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "not-on-map"},
    collision_box = {{-12.4, -12.4}, {12.4, 12.4}},
    collision_mask = { wind_layer },
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    selectable_in_game = false,
    picture = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/ground.png',
        width = 288,
        height = 288,
    },
}}

local fish

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-south'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r1.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s1.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l1.png'
fish.animations.layers[3] = nil
data:extend{fish}

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-southwest'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r2.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s2.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l2.png'
fish.animations.layers[3] = nil
data:extend{fish}

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-west'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r3.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s3.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l3.png'
fish.animations.layers[3] = nil
data:extend{fish}

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-northwest'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r4.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s4.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l4.png'
fish.animations.layers[3] = nil
data:extend{fish}

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-north'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r5.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s5.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l5.png'
fish.animations.layers[3] = nil
data:extend{fish}

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-northeast'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r6.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s6.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l6.png'
data:extend{fish}

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-east'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r7.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s7.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l7.png'
data:extend{fish}

fish = table.deepcopy(data.raw['electric-energy-interface']['multiblade-turbine-mk03'])
table.remove(fish.animations.layers, 1)
fish.name = 'multiblade-turbine-mk03-southeast'
fish.animations.layers[1].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/r8.png'
fish.animations.layers[2].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/s8.png'
fish.animations.layers[3].filename = '__pyalternativeenergygraphics__/graphics/entity/multiblade-turbine-mk03/l8.png'
data:extend{fish}