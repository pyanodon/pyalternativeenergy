RECIPE {
    type = "recipe",
    name = "Shit-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"Shit-mk01", 1}
    }
}:add_unlock("thermal-mk01")

ITEM {
    type = "item",
    name = "Shit-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lrf-panel-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "Shit-mk01",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "Shit-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lrf-panel-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "Shit-mk01"},
    fast_replaceable_group = "lrf",
    max_health = 35,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.2, -4.8}, {2.2, 4.8}},
    selection_box = {{-2.5, -5.0}, {2.5, 5.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed"},
    crafting_categories = {"lrf"},
    crafting_speed = 1,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        north =
            {
                layers = --works the same as normal layers in animations for other buildings. north is the first animation used.
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-v-r2.png",
                        width = 160,
                        height = 416,
                        frame_count = 1,
                        shift = util.by_pixel(0, -16)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-v-sh2.png",
                        width = 191,
                        height = 320,
                        frame_count = 1,
                        shift = util.by_pixel(18, 32),
                        draw_as_shadow = true,
                    },
                }
            },
            east = -- the secound animation used for the vertical direction
            {
                layers =
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-h-r.png",
                        width = 320,
                        height = 160,
                        frame_count = 1,
                        shift = util.by_pixel(0, -0)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-h-sh.png",
                        width = 354,
                        height = 128,
                        frame_count = 1,
                        shift = util.by_pixel(16, 16),
                        draw_as_shadow = true,
                    },
                }
            },
            south = -- can just be a copy of the northern animation. only real effect will be the pipe input and output will be flip from the start positions.
            {
                layers =
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-v-r2.png",
                        width = 160,
                        height = 416,
                        frame_count = 1,
                        shift = util.by_pixel(0, -16)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-v-sh2.png",
                        width = 191,
                        height = 320,
                        frame_count = 1,
                        shift = util.by_pixel(18, 32),
                        draw_as_shadow = true,
                    },
                }
            },
            west = -- copy of east with the flipped pipe points like south
            {
                layers =
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-h-r.png",
                        width = 320,
                        height = 160,
                        frame_count = 1,
                        shift = util.by_pixel(0, -0)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/panel-h-sh.png",
                        width = 354,
                        height = 128,
                        frame_count = 1,
                        shift = util.by_pixel(16, 16),
                        draw_as_shadow = true,
                    },
                }
            },

    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0, -5.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, nil, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, false, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0, 5.5}}}
        },

        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
}
