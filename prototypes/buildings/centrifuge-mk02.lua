RECIPE {
    type = "recipe",
    name = "centrifuge-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "aluminium-plate",         amount = 50},
        {type = "item", name = "steel-plate",             amount = 50},
        {type = "item", name = "centrifuge-mk01",         amount = 1},
        {type = "item", name = "niobium-plate",           amount = 30},
        {type = "item", name = "advanced-circuit",        amount = 3},
        {type = "item", name = "concrete",                amount = 30},
        {type = "item", name = "small-parts-02",          amount = 100},
        {type = "item", name = "eva",                     amount = 10},
        {type = "item", name = "self-assembly-monolayer", amount = 10},
        {type = "item", name = "mechanical-parts-02",     amount = 1},
        {type = "item", name = "electric-engine-unit",    amount = 10},
    },
    results = {
        {type = "item", name = "centrifuge-mk02", amount = 1}
    }
}:add_unlock("machines-mk03")

ITEM {
    type = "item",
    name = "centrifuge-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/centrifuge-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "a",
    place_result = "centrifuge-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "centrifuge-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/centrifuge-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "centrifuge-mk02"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"centrifuging"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 4
        }
    },
    energy_usage = "500MW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(16, -96),
                west_position = util.by_pixel(16, -96),
                south_position = util.by_pixel(16, -96),
                east_position = util.by_pixel(16, -96),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/blink.png",
                    frame_count = 100,
                    line_length = 25,
                    animation_speed = 0.7,
                    width = 64,
                    height = 32,
                    draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(128, -96),
                west_position = util.by_pixel(128, -96),
                south_position = util.by_pixel(128, -96),
                east_position = util.by_pixel(128, -96),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/turbine.png",
                    frame_count = 100,
                    line_length = 20,
                    animation_speed = 0.7,
                    width = 96,
                    height = 96,
                    draw_as_glow = true,
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/bot.png",
                    width = 224,
                    height = 32,
                    repeat_count = 100,
                    frame_count = 1,
                    animation_speed = 0.7,
                    shift = util.by_pixel(0, 96),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/bottom.png",
                    width = 224,
                    height = 160,
                    --repeat_count = 100,
                    frame_count = 100,
                    line_length = 9,
                    animation_speed = 0.7,
                    shift = util.by_pixel(0, 0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/bottom_mask.png",
                    width = 224,
                    height = 160,
                    --repeat_count = 100,
                    frame_count = 100,
                    line_length = 9,
                    animation_speed = 0.7,
                    shift = util.by_pixel(0, 0),
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/top.png",
                    width = 224,
                    height = 128,
                    repeat_count = 100,
                    --frame_count = 100,
                    line_length = 1,
                    animation_speed = 0.7,
                    shift = util.by_pixel(0, -144),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/top-mask.png",
                    width = 224,
                    height = 128,
                    repeat_count = 100,
                    --frame_count = 100,
                    line_length = 1,
                    animation_speed = 0.7,
                    shift = util.by_pixel(0, -144),
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, -3.0}, direction = defines.direction.north}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound =
    {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/centrifuge.ogg", volume = 0.25},
        apparent_volume = 0.5
    },
    fast_replaceable_group = "centrifuge"
}
