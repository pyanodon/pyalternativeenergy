RECIPE {
    type = "recipe",
    name = "solar-concentrator",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "small-parts-02",          amount = 200},
        {type = "item", name = "niobium-plate",           amount = 100},
        {type = "item", name = "advanced-circuit",        amount = 30},
        {type = "item", name = "concrete",                amount = 200},
        {type = "item", name = "eva",                     amount = 80},
        {type = "item", name = "self-assembly-monolayer", amount = 20},
        {type = "item", name = "engine-unit",             amount = 30},
        {type = "item", name = "solder",                  amount = 50},
        {type = "item", name = "mechanical-parts-02",     amount = 5},
    },
    results = {
        {type = "item", name = "solar-concentrator", amount = 1}
    }
}:add_unlock("thermal-mk02")

ITEM {
    type = "item",
    name = "solar-concentrator",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-concentrator.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-thermosolar",
    order = "ba",
    place_result = "solar-concentrator",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "solar-concentrator",
    fixed_recipe = "lrf-steam-2",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-concentrator.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "solar-concentrator"},
    fast_replaceable_group = "solar-concentrator",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 0,
    --allowed_effects = {'speed', 'consumption'},
    crafting_categories = {"lrf2"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "primary-input",
        emissions_per_minute = {
            pollution = 1
        }
    },
    energy_usage = "60MW",
    graphics_set = {
        working_visualisations = {
            {
                effect = "uranium-glow",
                fadeout = true,
                light = {intensity = 1.3, size = 30, shift = {0.0, 0.0}, color = {r = 0.584, g = 1.0, b = 1.0}}
            },
            {
                north_position = util.by_pixel(-96, 16),
                west_position = util.by_pixel(-96, 16),
                south_position = util.by_pixel(-96, 16),
                east_position = util.by_pixel(-96, 16),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/flash-left.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 160,
                    height = 320,
                    animation_speed = 0.3,
                    --draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(64, 16),
                west_position = util.by_pixel(64, 16),
                south_position = util.by_pixel(64, 16),
                east_position = util.by_pixel(64, 16),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/flash-right.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 160,
                    height = 320,
                    animation_speed = 0.3,
                    --draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(-144, -64),
                west_position = util.by_pixel(-144, -64),
                south_position = util.by_pixel(-144, -64),
                east_position = util.by_pixel(-144, -64),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/l-left.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 128,
                    height = 352,
                    animation_speed = 0.3,
                    blend_mode = "additive",
                    draw_as_glow = true,
                    effect = "uranium-glow",
                    fadeout = true,
                }
            },
            {
                north_position = util.by_pixel(-16, -64),
                west_position = util.by_pixel(-16, -64),
                south_position = util.by_pixel(-16, -64),
                east_position = util.by_pixel(-16, -64),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/l-mid.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 128,
                    height = 352,
                    animation_speed = 0.3,
                    blend_mode = "additive",
                    draw_as_glow = true,
                    effect = "uranium-glow",
                    fadeout = true,
                }
            },
            {
                north_position = util.by_pixel(112, -64),
                west_position = util.by_pixel(112, -64),
                south_position = util.by_pixel(112, -64),
                east_position = util.by_pixel(112, -64),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/l-right.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 128,
                    height = 352,
                    animation_speed = 0.3,
                    blend_mode = "additive",
                    draw_as_glow = true,
                    effect = "uranium-glow",
                    fadeout = true,
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/off.png",
                    width = 416,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(0, -16)
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/sh.png",
                    width = 448,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(16, -16),
                    draw_as_shadow = true,
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-3, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2, 6.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/solar-concentrator.ogg", volume = 0.5},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/solar-concentrator.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
}
