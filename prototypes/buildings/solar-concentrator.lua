RECIPE {
    type = "recipe",
    name = "solar-concentrator",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"small-parts-02", 200},
        {'niobium-plate', 100},
        {'advanced-circuit', 30},
        {'concrete', 200},
        {'eva', 80},
        {'self-assembly-monolayer', 20},
        {'engine-unit', 30},
        {'solder', 50},
        {"mechanical-parts-02", 5},
    },
    results = {
        {"solar-concentrator", 1}
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
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed", "consumption"},
    crafting_categories = {"lrf2"},
    crafting_speed = 1,
    energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = 0,
        destroy_non_fuel_fluid = false,
        fluid_box =
        {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_connections =
          {
            {type = "input-output", position = {-1,-7}},
            {type = "input-output", position = {-1, 7}}
          },
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          production_type = "input-output",
          filter = "molten-salt"
        },
        burns_fluid = false,
        scale_fluid_usage = false,
        fluid_usage_per_tick = (50/60),
        maximum_temperature = 3000,
        minimum_temperature = 1000
      },
    energy_usage = "60MW",
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
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1, -7}}}
        },
        --[[
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1, -7}}}
        },
        ]]--
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3, -7}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3, -7}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1, 7}}}
        },
        --[[
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1, 7}}}
        },
        ]]--
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3, 7}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3, 7}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/solar-concentrator.ogg", volume = 0.5},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/solar-concentrator.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
}
