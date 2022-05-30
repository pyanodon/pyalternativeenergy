RECIPE {
    type = "recipe",
    name = "neutron-moderator-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"neutron-moderator-mk04", 1}
    }
}:add_unlock("nuclear-power-mk04")

ITEM {
    type = "item",
    name = "neutron-moderator-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-moderator-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "neutron-moderator-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "neutron-moderator-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-moderator-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "neutron-moderator-mk04"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed", "consumption"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
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
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
                animation_speed = 1/2,
                width = 160,
                height = 128,
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
            pipe_connections = {{type = "input", position = {1.0, 3.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, -3.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    fast_replaceable_group = "neutron-mod"
  }
