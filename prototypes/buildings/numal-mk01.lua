RECIPE {
    type = "recipe",
    name = "numal-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"concrete", 200},
        {"titanium-plate", 100},
        {"steel-plate", 100},
        {"duralumin", 50},
        {"glass", 20},
        {"advanced-circuit", 35},
    },
    results = {
        {"numal-mk01", 1}
    }
}:add_unlock("numal-mk01")

ITEM {
    type = "item",
    name = "numal-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/numal-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-numal",
    order = "a",
    place_result = "numal-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "numal-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/numal-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "numal-mk01"},
    fast_replaceable_group = "numal",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 8
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"numal"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "400kW",
    animation = {
        north = {
            layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/numal/south/raw.png",
                width = 288,
                height = 480,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(0, -0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/numal/raw-mask.png",
                width = 288,
                height = 480,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(0, -0),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        },
    },
        south = {
            layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/numal/south/raw.png",
                width = 288,
                height = 480,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(0, -0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/numal/raw-mask.png",
                width = 288,
                height = 480,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(0, -0),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        },
    },
        east = {
            layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/numal/south/raw.png",
                width = 288,
                height = 480,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(0, -0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/numal/raw-mask.png",
                width = 288,
                height = 480,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(0, -0),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        },
    },
    west = {
        layers = {
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/numal/south/raw.png",
            width = 288,
            height = 480,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -0),
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/numal/raw-mask.png",
            width = 288,
            height = 480,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -0),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
        },
    },
},
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, -0),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/numal/s-gtop.png",
                frame_count = 150,
                line_length = 10,
                --run_mode = "forward-then-backward",
                width = 96,
                height = 128,
                animation_speed = 0.5
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/numal.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/numal.ogg", volume = 0.65},
        apparent_volume = 0.45
    }
}
