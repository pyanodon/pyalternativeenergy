RECIPE({
    type = "recipe",
    name = "py-oil-powerplant-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        { type = "item", name = "steel-plate",         amount = 100 },
        { type = "item", name = "small-parts-01",      amount = 200 },
        { type = "item", name = "duralumin",           amount = 50 },
        { type = "item", name = "pipe",                amount = 200 },
        { type = "item", name = "gas-refinery-mk01",   amount = 1 },
        { type = "item", name = "electronic-circuit",  amount = 100 },
        { type = "item", name = "distilator",          amount = 1 },
        { type = "item", name = "intermetallics",      amount = 40 },
        { type = "item", name = "steam-engine",        amount = 20 },
        { type = "item", name = "mechanical-parts-01", amount = 3 },
    },
    results = {
        { type = "item", name = "py-oil-powerplant-mk01", amount = 1 }
    }
}):add_unlock("oilplant-mk01")

RECIPE({
    type = "recipe",
    name = "py-oil-powerplant-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        { type = "item", name = "py-oil-powerplant-mk01",  amount = 1 },
        { type = "item", name = "small-parts-02",          amount = 100 },
        { type = "item", name = "stainless-steel",         amount = 50 },
        { type = "item", name = "advanced-circuit",        amount = 50 },
        { type = "item", name = "plastic-bar",             amount = 200 },
        { type = "item", name = "eva",                     amount = 50 },
        { type = "item", name = "engine-unit",             amount = 20 },
        { type = "item", name = "niobium-pipe",            amount = 200 },
        { type = "item", name = "self-assembly-monolayer", amount = 20 },
        { type = "item", name = "mechanical-parts-02",     amount = 5 },
    },
    results = {
        { type = "item", name = "py-oil-powerplant-mk02", amount = 1 }
    }
}):add_unlock("oilplant-mk02")

RECIPE({
    type = "recipe",
    name = "py-oil-powerplant-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        { type = "item", name = "py-oil-powerplant-mk02", amount = 1 },
        { type = "item", name = "small-parts-03",         amount = 100 },
        { type = "item", name = "super-steel",            amount = 200 },
        { type = "item", name = "processing-unit",        amount = 100 },
        { type = "item", name = "cf",                     amount = 100 },
        { type = "item", name = "acrylic",                amount = 100 },
        { type = "item", name = "low-density-structure",  amount = 50 },
        { type = "item", name = "electric-engine-unit",   amount = 20 },
        { type = "item", name = "aerogel",                amount = 100 },
        { type = "item", name = "ns-material",            amount = 30 },
        { type = "item", name = "mechanical-parts-03",    amount = 5 },
    },
    results = {
        { type = "item", name = "py-oil-powerplant-mk03", amount = 1 }
    }
}):add_unlock("oilplant-mk03")

RECIPE({
    type = "recipe",
    name = "py-oil-powerplant-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        { type = "item", name = "py-oil-powerplant-mk03",        amount = 1 },
        { type = "item", name = "ti-n",                          amount = 50 },
        { type = "item", name = "nbfe-alloy",                    amount = 40 },
        { type = "item", name = "science-coating",               amount = 15 },
        { type = "item", name = "carbon-aerogel",                amount = 100 },
        { type = "item", name = "super-alloy",                   amount = 200 },
        { type = "item", name = "intelligent-unit",              amount = 10 },
        { type = "item", name = "superconductor-servomechanims", amount = 10 },
        { type = "item", name = "metastable-quasicrystal",       amount = 10 },
        { type = "item", name = "metallic-glass",                amount = 40 },
        { type = "item", name = "mechanical-parts-04",           amount = 5 },
    },
    results = {
        { type = "item", name = "py-oil-powerplant-mk04", amount = 1 }
    }
}):add_unlock("oilplant-mk04")

for i = 1, 4 do
    local name = "py-oil-powerplant-mk0" .. i
    local icon = "__pyalternativeenergygraphics__/graphics/icons/oil-powerplant-mk0" .. i .. ".png"
    local icon_size = 64

    ITEM({
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alternativeenergy-buildings-mk0" .. i,
        order = "a",
        place_result = name,
        stack_size = 10
    })

    ENTITY({
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = name },
        max_health = 500 * i,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = { { -6.3, -6.3 }, { 6.3, 6.3 } },
        selection_box = { { -6.5, -6.5 }, { 6.5, 6.5 } },
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = { "consumption", "speed", "pollution" },
        crafting_categories = { "oil-powerplant" },
        crafting_speed = i,
        energy_source = {
            type = "fluid",
            emissions_per_minute = {
                pollution = 15 * i
            },
            destroy_non_fuel_fluid = false,
            fluid_box = {
                volume = 200 * i,
                pipe_connections = {
                    { flow_direction = "input", position = { 0, 6.0 }, direction = defines.direction.south }
                },
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                production_type = "input",
                filter = ({ "kerosene", "fuel-oil", "diesel", "gasoline" })[i]
            },
            effectivity = 1,
            burns_fluid = true,
            scale_fluid_usage = true,
            light_flicker = {
                minimum_intensity = 0,
                maximum_intensity = 0,
                light_intensity_to_size_coefficient = 0,
                color = { 0, 0, 0 },
            },
            smoke = {
                {
                    name = "fire-smoke-on-adding-fuel",
                    north_position = util.by_pixel(-16, -432),
                    south_position = util.by_pixel(-16, -432),
                    east_position = util.by_pixel(-16, -432),
                    west_position = util.by_pixel(-16, -432),
                    frequency = 25,
                    slow_down_factor = 0.1,
                    starting_vertical_speed = 0.16,
                    starting_frame_deviation = 10
                },
            }
        },
        energy_usage = ({ "10MW", "20MW", "30MW", "40MW" })[i],
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(32, -256),
                    west_position = util.by_pixel(32, -256),
                    south_position = util.by_pixel(32, -256),
                    east_position = util.by_pixel(32, -256),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/reds.png",
                        frame_count = 75,
                        line_length = 15,
                        width = 96,
                        height = 160,
                        repeat_count = 2,
                        animation_speed = 1 / 3,
                        draw_as_glow = true,
                    }
                },
                {
                    north_position = util.by_pixel(-128, -64),
                    west_position = util.by_pixel(-128, -64),
                    south_position = util.by_pixel(-128, -64),
                    east_position = util.by_pixel(-128, -64),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-bot.png",
                        frame_count = 150,
                        line_length = 12,
                        width = 160,
                        height = 96,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(-128, -160),
                    west_position = util.by_pixel(-128, -160),
                    south_position = util.by_pixel(-128, -160),
                    east_position = util.by_pixel(-128, -160),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-mid.png",
                        frame_count = 150,
                        line_length = 12,
                        width = 160,
                        height = 96,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(-128, -272),
                    west_position = util.by_pixel(-128, -272),
                    south_position = util.by_pixel(-128, -272),
                    east_position = util.by_pixel(-128, -272),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-top.png",
                        frame_count = 150,
                        line_length = 12,
                        width = 160,
                        height = 128,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(128, -160),
                    west_position = util.by_pixel(128, -160),
                    south_position = util.by_pixel(128, -160),
                    east_position = util.by_pixel(128, -160),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-right-bot.png",
                        frame_count = 150,
                        line_length = 12,
                        width = 160,
                        height = 96,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(128, -272),
                    west_position = util.by_pixel(128, -272),
                    south_position = util.by_pixel(128, -272),
                    east_position = util.by_pixel(128, -272),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/smoke-right-top.png",
                        frame_count = 150,
                        line_length = 12,
                        width = 160,
                        height = 128,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(-64, -384),
                    west_position = util.by_pixel(-64, -384),
                    south_position = util.by_pixel(-64, -384),
                    east_position = util.by_pixel(-64, -384),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-down-1.png",
                        frame_count = 150,
                        line_length = 30,
                        width = 64,
                        height = 64,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(-32, -320),
                    west_position = util.by_pixel(-32, -320),
                    south_position = util.by_pixel(-32, -320),
                    east_position = util.by_pixel(-32, -320),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-down-2.png",
                        frame_count = 150,
                        line_length = 30,
                        width = 64,
                        height = 64,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(-96, -256),
                    west_position = util.by_pixel(-96, -256),
                    south_position = util.by_pixel(-96, -256),
                    east_position = util.by_pixel(-96, -256),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-side.png",
                        frame_count = 150,
                        line_length = 15,
                        width = 96,
                        height = 96,
                        animation_speed = 1 / 3,
                    }
                },
                {
                    north_position = util.by_pixel(48, -144),
                    west_position = util.by_pixel(48, -144),
                    south_position = util.by_pixel(48, -144),
                    east_position = util.by_pixel(48, -144),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/steam-push.png",
                        frame_count = 150,
                        line_length = 16,
                        width = 128,
                        height = 128,
                        animation_speed = 1 / 4,
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/off.png",
                        width = 416,
                        height = 768,
                        frame_count = 1,
                        --repeat_count = 151,
                        shift = util.by_pixel(0, -176),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/mask.png",
                        width = 416,
                        height = 768,
                        frame_count = 1,
                        --repeat_count = 151,
                        tint = py.tints[i],
                        shift = util.by_pixel(0, -176),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/sh.png",
                        width = 480,
                        height = 384,
                        frame_count = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(32, 16),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/beams.png",
                        width = 416,
                        height = 768,
                        frame_count = 1,
                        draw_as_light = true,
                        shift = util.by_pixel(0, -176),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/beams.png",
                        width = 416,
                        height = 768,
                        frame_count = 1,
                        draw_as_light = true,
                        shift = util.by_pixel(0, -176),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/oil-powerplant/static-glow.png",
                        width = 416,
                        height = 768,
                        frame_count = 1,
                        draw_as_glow = true,
                        shift = util.by_pixel(0, -176),
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", position = { -3.0, 6.0 }, direction = defines.direction.south } }
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", position = { 3.0, 6.0 }, direction = defines.direction.south } }
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = { { flow_direction = "output", position = { 0.0, -6.0 }, direction = defines.direction.north } }
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = { { flow_direction = "output", position = { 3.0, -6.0 }, direction = defines.direction.north } }
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = { { flow_direction = "output", position = { -3.0, -6.0 }, direction = defines.direction.north } }
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = { filename = "__pyalternativeenergygraphics__/sounds/oil-powerplant.ogg", volume = 0.8 },
            idle_sound = { filename = "__pyalternativeenergygraphics__/sounds/oil-powerplant.ogg", volume = 0.1 },
            apparent_volume = 0.45
        },
        fast_replaceable_group = "oil-power"
    })
end
