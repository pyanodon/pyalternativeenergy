RECIPE {
    type = "recipe",
    name = "lightning-catcher",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"lightning-catcher", 1}
    }
}:add_unlock("lightning-catcher")

ITEM {
    type = "item",
    name = "lightning-catcher",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lightning-catcher.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "b",
    place_result = "lightning-catcher",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "lightning-catcher",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lightning-catcher.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "lightning-catcher"},
    fast_replaceable_group = "lightning-catcher",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/off.png",
                width = 288,
                height = 800,
                frame_count = 1,
                shift = util.by_pixel(0, -256)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/sh.png",
                width = 416,
                height = 288,
                frame_count = 1,
                shift = util.by_pixel(64, -0),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-0, -592),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/x6.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-0, -464),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/x5.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-0, -336),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/x4.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-0, -208),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/x3.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-0, -80),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/x2.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-0, 48),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/x1.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                --draw_as_glow = true,
            }
        },
--lights
        {
            north_position = util.by_pixel(0, -592),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/l6.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -464),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/l5.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -336),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/l4.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -208),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/l3.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -80),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/l2.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, 48),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/l1.png",
                frame_count = 90,
                line_length = 9,
                width = 224,
                height = 128,
                animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_glow = true,
            }
        },
--VFX
        {
            north_position = util.by_pixel(0, -720),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/7.png",
                frame_count = 90,
                line_length = 7,
                width = 288,
                height = 128,
                animation_speed = 0.45,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -592),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/6.png",
                frame_count = 90,
                line_length = 7,
                width = 288,
                height = 128,
                animation_speed = 0.45,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -464),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/5.png",
                frame_count = 90,
                line_length = 7,
                width = 288,
                height = 128,
                animation_speed = 0.45,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -336),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/4.png",
                frame_count = 90,
                line_length = 7,
                width = 288,
                height = 128,
                animation_speed = 0.45,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -208),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/3.png",
                frame_count = 90,
                line_length = 7,
                width = 288,
                height = 128,
                animation_speed = 0.45,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -80),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/2.png",
                frame_count = 90,
                line_length = 7,
                width = 288,
                height = 128,
                animation_speed = 0.45,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, 48),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lightning-catcher/1.png",
                frame_count = 90,
                line_length = 7,
                width = 288,
                height = 128,
                animation_speed = 0.45,
                blend_mode = "additive",
                draw_as_glow = true,
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/lightning-catcher.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/lightning-catcher.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
}
