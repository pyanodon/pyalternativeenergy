local pipes = {
    south = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/methanol-reactor/pipe-ending-down.png",
        priority = "extra-high",
        width = 40,
        height = 32
    }
}

local pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes)
local pipe_covers = py.pipe_covers(true, true, true, true)

RECIPE {
    type = "recipe",
    name = "py-electric-boiler",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lab",                   amount = 1},
        {type = "item", name = "iron-plate",            amount = 100},
        {type = "item", name = "electric-mining-drill", amount = 3},
        {type = "item", name = "gasifier",              amount = 1},
        {type = "item", name = "small-parts-01",        amount = 20},
    },
    results = {
        {type = "item", name = "py-electric-boiler", amount = 1}
    }
}:add_unlock("energy-1")

ITEM {
    type = "item",
    name = "py-electric-boiler",
    icon = "__pyalternativeenergygraphics__/graphics/icons/electric-boiler.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "py-electric-boiler",
    stack_size = 10
}

RECIPE {
    name = "electric-boiler-water-to-steam",
    type = "recipe",
    category = "electric-boiler",
    enabled = false,
    energy_required = 5,
    ingredients = {{
        type = "fluid",
        name = "water",
        amount = 60 * 5
    }},
    results = {{
        type = "fluid",
        name = "steam",
        amount = 60 * 5,
        temperature = 250
    }},
    main_product = "steam"
}

ENTITY {
    name = "py-electric-boiler",
    type = "assembling-machine",
    icon = "__pyalternativeenergygraphics__/graphics/icons/electric-boiler.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
        mining_time = 0.5,
        result = "py-electric-boiler"
    },
    max_health = 200,
    corpse = "big-remnants",
    vehicle_impact_sound = {
        filename = "__base__/sound/car-metal-impact-1.ogg",
        volume = 0.65
    },
    fixed_recipe = "electric-boiler-water-to-steam",
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = pipe_covers,
            pipe_picture = pipe_picture,
            pipe_connections = {
                {flow_direction = "input-output", position = {1.0, 0},  direction = defines.direction.east},
                {flow_direction = "input-output", position = {-1.0, 0}, direction = defines.direction.west}
            },
            volume = 200,
            filter = "water"
        },
        {
            production_type = "output",
            pipe_covers = pipe_covers,
            pipe_picture = pipe_picture,
            pipe_connections = {
                {flow_direction = "output", position = {0, 1.0}, direction = defines.direction.south},
                {flow_direction = "output", position = {0, -1.0}, direction = defines.direction.north},
            },
            volume = 200,
            filter = "steam"
        }
    },
    resistances = {
        {
            type = "fire",
            percent = 90
        },
        {
            type = "explosion",
            percent = 30
        },
        {
            type = "impact",
            percent = 30
        }
    },
    collision_box = {{-1.29, -1.29}, {1.29, 1.29}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    forced_symmetry = "diagonal-pos",
    working_sound = {
        sound = {
            filename = "__base__/sound/boiler.ogg",
            volume = 0.8
        },
        max_sounds_per_type = 3
    },
    graphics_set = {
        working_visualisations = {{
            fadeout = true,
            constant_speed = true,
            animation = {
                layers = {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png",
                        priority = "low",
                        frame_count = 40,
                        line_length = 8,
                        width = 96,
                        height = 128,
                        animation_speed = 0.8,
                        shift = util.by_pixel(-0, -112)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png",
                        priority = "low",
                        frame_count = 40,
                        line_length = 8,
                        width = 96,
                        height = 128,
                        animation_speed = 0.8,
                        draw_as_glow = true,
                        shift = util.by_pixel(-0, -112)
                    }
                }
            }
        }},
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/raw.png",
                    priority = "extra-high",
                    width = 96,
                    height = 224,
                    shift = util.by_pixel(0, -64),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/sh.png",
                    priority = "extra-high",
                    width = 160,
                    height = 64,
                    draw_as_shadow = true,
                    shift = util.by_pixel(32, 16),
                },
            }
        },
    },
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    show_recipe_icon = false,
    show_recipe_icon_on_map = false,
    crafting_categories = {"electric-boiler"},
    energy_usage = "25MW",
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 4
        }
    },
    crafting_speed = 1,
}
