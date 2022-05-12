RECIPE {
    type = "recipe",
    name = "solar-tower-building",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"concrete", 1000},
        {"super-alloy", 1000},
        {"cf", 500},
        {"biopolymer", 800},
        {"niobium-pipe", 800},
        {"metallic-glass", 300},
        {"glass", 1000},
        {"nbfe-alloy", 1000},
        {"science-coating", 500},
        {"carbon-aerogel", 1000},
        {'metastable-quasicrystal', 50},
        {"intelligent-unit", 10},
        {"low-density-structure", 400},
    },
    results = {
        {"solar-tower-building", 1}
    }
}:add_unlock("thermal-mk04")

ITEM {
    type = "item",
    name = "solar-tower-building",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-tower.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "solar-tower-building",
    stack_size = 10
}

--[[
ENTITY {
    type = "boiler",
    name = "solar-tower-building",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-tower.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "solar-tower-building"},
    fast_replaceable_group = "solar-tower",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-9.8, -9.8}, {9.8, 9.8}},
    selection_box = {{-10.0, -10.0}, {10.0, 10.0}},
    mode = "heat-water-inside",
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    fixed_recipe = "",
    energy_source = {
        type = "burner",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "1MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png",
                width = 640,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(0, -352)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png",
                width = 640,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(0, -352),
                draw_as_glow = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png",
                width = 96,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(368, -352),
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-176, 81),
            west_position = util.by_pixel(-176, 81),
            south_position = util.by_pixel(-176, 81),
            east_position = util.by_pixel(-176, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(48, 81),
            west_position = util.by_pixel(48, 81),
            south_position = util.by_pixel(48, 81),
            east_position = util.by_pixel(48, 81),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-176, -143),
            west_position = util.by_pixel(-176, -143),
            south_position = util.by_pixel(-176, -143),
            east_position = util.by_pixel(-176, -143),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(48, -143),
            west_position = util.by_pixel(48, -143),
            south_position = util.by_pixel(48, -143),
            east_position = util.by_pixel(48, -143),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-176, -367),
            west_position = util.by_pixel(-176, -367),
            south_position = util.by_pixel(-176, -367),
            east_position = util.by_pixel(-176, -367),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(48, -367),
            west_position = util.by_pixel(48, -367),
            south_position = util.by_pixel(48, -367),
            east_position = util.by_pixel(48, -367),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png",
                frame_count = 20,
                line_length = 5,
                width = 224,
                height = 224,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(208, -143),
            west_position = util.by_pixel(208, -143),
            south_position = util.by_pixel(208, -143),
            east_position = util.by_pixel(208, -143),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png",
                frame_count = 20,
                line_length = 20,
                width = 96,
                height = 672,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-16, -720),
            west_position = util.by_pixel(-16, -720),
            south_position = util.by_pixel(-16, -720),
            east_position = util.by_pixel(-16, -720),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png",
                frame_count = 20,
                line_length = 5,
                width = 288,
                height = 288,
                animation_speed = 0.2,
                --draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input-output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections =
            {
                {type = "input-output", position = {1.5, -10.5}},
                {type = "input-output", position = {1.5, 10.5}}
            },
            filter = "molten-salt"
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -10.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, -10.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, -10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.5, 10.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.5, 10.5}}}
        },

        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 0.70},
        apparent_volume = 2.5
    }
}
]]--

ENTITY {
    type = "boiler",
    name = "solar-tower-building",
    icon = "__pyalternativeenergygraphics__/graphics/icons/solar-tower.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "solar-tower-building"},
    max_health = 2000,
    corpse = "boiler-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    mode = "heat-water-inside",
    resistances =
    {
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
    collision_box = {{-9.8, -9.8}, {9.8, 9.8}},
    selection_box = {{-10.0, -10.0}, {10.0, 10.0}},
    target_temperature = 250,
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections =
      {
        {type = "input", position = {1.5, 10.5}},
        {type = "output", position = {-1.5, 10.5}}
      },
      production_type = "input-output",
      filter = "hot-molten-salt"
    },

    output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections =
      {
        {type = "output", position = {1.5, -10.5}}
      },
      production_type = "output",
      --filter = "steam"
    },
    energy_consumption = "5GW",
    energy_source =
    {
      type = "fluid",
      emissions_per_minute = 30,
      destroy_non_fuel_fluid = false,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_connections =
		{
			{type = "input", position = {-1.5, -10.5}}
		},
		pipe_covers = DATA.Pipes.covers(false, true, true, true),
		pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
		production_type = "input",
        filter = "void",
		},
	effectivity = 1,
	burns_fluid = false,
	scale_fluid_usage = false,
	fluid_usage_per_tick = 1,
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      },
      max_sounds_per_type = 3
    },

    structure =
    {
      north =
      {
        layers =
        {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png",
                width = 640,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(0, -352)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png",
                width = 640,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(0, -352),
                draw_as_light = true,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png",
                width = 96,
                height = 1343,
                frame_count = 1,
                shift = util.by_pixel(368, -352),
                draw_as_shadow = true,
            },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png",
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352)
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png",
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352),
            draw_as_light = true,
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png",
            width = 96,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(368, -352),
            draw_as_shadow = true,
        },
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png",
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352)
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png",
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352),
            draw_as_light = true,
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png",
            width = 96,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(368, -352),
            draw_as_shadow = true,
        },
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png",
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352)
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png",
            width = 640,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(0, -352),
            draw_as_light = true,
        },
        {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png",
            width = 96,
            height = 1343,
            frame_count = 1,
            shift = util.by_pixel(368, -352),
            draw_as_shadow = true,
        },
        }
      },
    },

    fire_flicker_enabled = false,
    fire =
    {
      north = {
      layers =
      {
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png",
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(-176, 81),
          --draw_as_glow = true,
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png",
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(48, 81),
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png",
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(-176, -143),
          --draw_as_glow = true,
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png",
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(48, -143),
          --draw_as_glow = true,
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png",
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(-176, -367),
          --draw_as_glow = true,
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png",
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(48, -367),
          --draw_as_glow = true,
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png",
          frame_count = 20,
          line_length = 20,
          width = 96,
          height = 672,
          animation_speed = 0.2,
          shift = util.by_pixel(208, -143),
          --draw_as_glow = true,
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png",
          frame_count = 20,
          line_length = 5,
          width = 288,
          height = 288,
          animation_speed = 0.2,
          shift = util.by_pixel(-16, -720),
          --draw_as_glow = true,
        },
      }
      },
      east =
      {
        layers =
        {
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, 81),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, 81),
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -367),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -367),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png",
            frame_count = 20,
            line_length = 20,
            width = 96,
            height = 672,
            animation_speed = 0.2,
            shift = util.by_pixel(208, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png",
            frame_count = 20,
            line_length = 5,
            width = 288,
            height = 288,
            animation_speed = 0.2,
            shift = util.by_pixel(-16, -720),
            --draw_as_glow = true,
          },
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, 81),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, 81),
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -367),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -367),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png",
            frame_count = 20,
            line_length = 20,
            width = 96,
            height = 672,
            animation_speed = 0.2,
            shift = util.by_pixel(208, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png",
            frame_count = 20,
            line_length = 5,
            width = 288,
            height = 288,
            animation_speed = 0.2,
            shift = util.by_pixel(-16, -720),
            --draw_as_glow = true,
          },
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, 81),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, 81),
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(-176, -367),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png",
            frame_count = 20,
            line_length = 5,
            width = 224,
            height = 224,
            animation_speed = 0.2,
            shift = util.by_pixel(48, -367),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png",
            frame_count = 20,
            line_length = 20,
            width = 96,
            height = 672,
            animation_speed = 0.2,
            shift = util.by_pixel(208, -143),
            --draw_as_glow = true,
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png",
            frame_count = 20,
            line_length = 5,
            width = 288,
            height = 288,
            animation_speed = 0.2,
            shift = util.by_pixel(-16, -720),
            --draw_as_glow = true,
          },
        }
      },
    },

fire_glow_flicker_enabled = false,

fire_glow =
{
  north =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  east =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  south =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  west =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
},

    burning_cooldown = 20
  }
