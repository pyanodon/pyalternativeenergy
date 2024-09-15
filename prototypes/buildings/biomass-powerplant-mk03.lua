RECIPE {
    type = "recipe",
    name = "py-biomass-powerplant-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"py-biomass-powerplant-mk02", 1},
        {'aluminium-plate', 100},
        {"small-parts-03", 150},
        {"nbti-alloy", 100},
        {"electric-engine-unit", 50},
        {"super-steel", 100},
        {'processing-unit', 50},
        {'ns-material', 40},
        {'acrylic', 60},
        {"cf", 100},
        {"glass-fiber", 100},
        {"mechanical-parts-03", 5},

    },
    results = {
        {"py-biomass-powerplant-mk03", 1}
    }
}:add_unlock("biomassplant-mk03")

ITEM {
    type = "item",
    name = "py-biomass-powerplant-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/biomass-powerplant-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "py-biomass-powerplant-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "py-biomass-powerplant-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/biomass-powerplant-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "py-biomass-powerplant-mk03"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.3, -7.3}, {7.3, 7.3}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"biomass-powerplant-mk03"},
    crafting_speed = 3,
    energy_source =
    {
      type = "burner",
      fuel_category = "biomass",
      effectivity = 1,
      light_flicker =
      {
        minimum_intensity = 0,
        maximum_intensity = 0,
        light_intensity_to_size_coefficient = 0,
        color = {0,0,0},
      },
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = 12,
      smoke =
        {
            {
                name = "turbine-smoke",
                north_position = util.by_pixel(208, 108),
                south_position = util.by_pixel(208, 108),
                east_position = util.by_pixel(208, 108),
                west_position = util.by_pixel(208, 108),
                frequency = 45,
                slow_down_factor = 1,
                starting_vertical_speed = 0.09,
                starting_frame_deviation = 60,
                color = {r = 0.2, g = 0.2, b = 0.2},
            },
        }
    },
    energy_usage = "8MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/raw.png",
                width = 480,
                height = 640,
                frame_count = 1,
                repeat_count = 50,
                animation_speed = 1/2,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/moving.png",
                width = 256,
                height = 224,
                line_length = 8,
                frame_count = 50,
                animation_speed = 1/2,
                shift = util.by_pixel(112, 0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/light-overlay.png",
                width = 480,
                height = 640,
                frame_count = 1,
                repeat_count = 50,
                animation_speed = 1/2,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/mask.png",
                width = 480,
                height = 640,
                frame_count = 1,
                repeat_count = 50,
                animation_speed = 1/2,
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/sh.png",
                width = 512,
                height = 448,
                frame_count = 1,
                repeat_count = 50,
                animation_speed = 1/2,
                shift = util.by_pixel(16, 16),
                draw_as_shadow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/lights.png",
                width = 480,
                height = 640,
                frame_count = 1,
                repeat_count = 50,
                animation_speed = 1/2,
                draw_as_light = true,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/lights.png",
                width = 480,
                height = 640,
                frame_count = 1,
                repeat_count = 50,
                animation_speed = 1/2,
                draw_as_light = true,
                shift = util.by_pixel(0, -80),
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-160, 0),
            west_position = util.by_pixel(-160, 0),
            south_position = util.by_pixel(-160, 0),
            east_position = util.by_pixel(-160, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/l-left.png",
                frame_count = 50,
                line_length = 10,
                width = 160,
                height = 288,
                animation_speed = 1/2,
                draw_as_light = true,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-0, 0),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/biomass-powerplant/l-right.png",
                frame_count = 50,
                line_length = 10,
                width = 160,
                height = 288,
                animation_speed = 1/2,
                draw_as_light = true,
                draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.0, 7.3}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {3.0, 7.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {0.0, -7.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {3.0, -7.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {-3.0, -7.3}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/biomass-powerplant.ogg", volume = 0.70},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/biomass-powerplant.ogg", volume = 0.1},
        apparent_volume = 0.45
    },
    fast_replaceable_group = "biomass-power"
  }
