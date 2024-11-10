RECIPE {
    type = "recipe",
    name = "neutron-moderator-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "neutron-moderator-mk02", amount = 1},
        {type = "item", name = "processing-unit",        amount = 20},
        {type = "item", name = "small-parts-03",         amount = 100},
        {type = "item", name = "low-density-structure",  amount = 30},
        {type = "item", name = "super-steel",            amount = 80},
        {type = "item", name = "nexelit-plate",          amount = 100},
        {type = "item", name = "electric-engine-unit",   amount = 4},
        {type = "item", name = "anti-reflex-glass",      amount = 100},
        {type = "item", name = "utility-box-mk03",       amount = 1},
        {type = "item", name = "ns-material",            amount = 10},
        {type = "item", name = "mechanical-parts-03",    amount = 1},
        {type = "item", name = "alag-alloy",             amount = 30},
    },
    results = {
        {type = "item", name = "neutron-moderator-mk03", amount = 1}
    }
}:add_unlock("nuclear-power-mk03")

ITEM {
    type = "item",
    name = "neutron-moderator-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-moderator-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "neutron-moderator-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "neutron-moderator-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-moderator-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "neutron-moderator-mk03"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 3,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"neutron-moderator"},
    crafting_speed = 3,
    energy_source = {
        type = "burner",
        fuel_categories = {"control-rod"},
        effectivity = 1,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.0
        },
    },
    energy_usage = "1200kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(0, -64),
                west_position = util.by_pixel(0, -64),
                south_position = util.by_pixel(0, -64),
                east_position = util.by_pixel(0, -64),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-moderator/l.png",
                    frame_count = 1,
                    line_length = 1,
                    width = 160,
                    height = 288,
                    draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(0, -80),
                west_position = util.by_pixel(0, -80),
                south_position = util.by_pixel(0, -80),
                east_position = util.by_pixel(0, -80),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-moderator/bubbles.png",
                    frame_count = 100,
                    line_length = 10,
                    animation_speed = 1 / 2,
                    width = 160,
                    height = 128,
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-moderator/off.png",
                    width = 160,
                    height = 288,
                    frame_count = 1,
                    shift = util.by_pixel(0, -64),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-moderator/tube.png",
                    width = 160,
                    height = 288,
                    frame_count = 1,
                    shift = util.by_pixel(0, -64),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-moderator/mask.png",
                    width = 160,
                    height = 288,
                    frame_count = 1,
                    shift = util.by_pixel(0, -64),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-moderator/sh.png",
                    width = 224,
                    height = 128,
                    frame_count = 1,
                    shift = util.by_pixel(32, 16),
                    draw_as_shadow = true,
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-moderator/ao.png",
                    width = 160,
                    height = 288,
                    frame_count = 1,
                    shift = util.by_pixel(0, -64),
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
            pipe_connections = {{flow_direction = "input", position = {1.0, 2.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 2.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -2.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, -2.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    fast_replaceable_group = "neutron-mod"
}
