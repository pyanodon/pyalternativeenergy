RECIPE {
    type = "recipe",
    name = "nuclear-reactor-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "nuclear-reactor-mk03",    amount = 1},
        {type = "item", name = "intelligent-unit",        amount = 200},
        {type = "item", name = "super-alloy",             amount = 1000},
        {type = "item", name = "sc-engine",               amount = 30},
        {type = "item", name = "phosphate-glass",         amount = 500},
        {type = "item", name = "agzn-alloy",              amount = 100},
        {type = "item", name = "metastable-quasicrystal", amount = 10},
        {type = "item", name = "metallic-glass",          amount = 40},
        {type = "item", name = "carbon-aerogel",          amount = 100},
        {type = "item", name = "cf",                      amount = 500},
        {type = "item", name = "mechanical-parts-04",     amount = 10},
    },
    results = {
        {type = "item", name = "nuclear-reactor-mk04", amount = 1}
    }
}:add_unlock("nuclear-power-mk04")

ITEM {
    type = "item",
    name = "nuclear-reactor-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "nuclear-reactor-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nuclear-reactor-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-reactor-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nuclear-reactor-mk04"},
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 0,
    allowed_effects = {},
    crafting_categories = {"nuclear-fission"},
    crafting_speed = 20,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source =
    {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = {
            pollution = 0
        },
        destroy_non_fuel_fluid = false,
        fluid_box =
        {
            volume = 200,
            pipe_connections = {
                {flow_direction = "input-output", position = {-4.0, 7.0},  direction = defines.direction.south},
                {flow_direction = "input-output", position = {-4.0, -7.0}, direction = defines.direction.north}
            },
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            production_type = "input-output",
            filter = "uf6"
        },
        burns_fluid = false,
        scale_fluid_usage = false,
        --   fluid_usage_per_tick = (2/60),
        maximum_temperature = 10000,
    },
    energy_usage = "300kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-96, -112),
                west_position = util.by_pixel(-96, -112),
                south_position = util.by_pixel(-96, -112),
                east_position = util.by_pixel(-96, -112),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/left.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 160,
                    height = 384,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(64, -112),
                west_position = util.by_pixel(64, -112),
                south_position = util.by_pixel(64, -112),
                east_position = util.by_pixel(64, -112),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/mid.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 160,
                    height = 384,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(192, -112),
                west_position = util.by_pixel(192, -112),
                south_position = util.by_pixel(192, -112),
                east_position = util.by_pixel(192, -112),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/right.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 96,
                    height = 384,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/raw.png",
                    width = 480,
                    height = 576,
                    frame_count = 1,
                    shift = util.by_pixel(0, -48)
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/l.png",
                    width = 480,
                    height = 576,
                    frame_count = 1,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -48)
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/nuclear-reactor-mk04/sh.png",
                    width = 512,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(32, 16),
                    draw_as_shadow = true,
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
            pipe_connections = {{flow_direction = "input", position = {0.0, 7.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-3.0, 7.0}, direction = defines.direction.south}}
        },
        --[[
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {4.0, 7.0}, direction = defines.direction.south}}
        },
        ]] --
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, -7.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, -7.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk04.ogg", volume = 0.5},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/nuclear-reactor-mk04.ogg", volume = 0.1},
        apparent_volume = 2.5
    },
    fast_replaceable_group = "reactor"
}
