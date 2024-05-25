RECIPE {
    type = "recipe",
    name = "electric-boiler",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"lab", 1},
        {"iron-plate", 100},
        {"electric-mining-drill", 3},
        {"gasifier", 1},
        {"small-parts-01", 20},
    },
    results = {
        {"electric-boiler", 1}
    }
}:add_unlock("energy-1")

ITEM {
    type = "item",
    name = "electric-boiler",
    icon = "__pyalternativeenergygraphics__/graphics/icons/electric-boiler.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "electric-boiler",
    stack_size = 10
}

ENTITY {
    type = "boiler",
    name = "electric-boiler",
    icon = "__pyalternativeenergygraphics__/graphics/icons/electric-boiler.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "electric-boiler"},
    max_health = 200,
    corpse = "big-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    mode = "output-to-separate-pipe",
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
    collision_box = {{-1.29, -1.29}, {1.29, 1.29}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    target_temperature = 250,
    fluid_box = {
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {{
            type = 'input-output',
            position = {-2.0, 0.0}
        }, {
            type = 'input-output',
            position = {2.0, 0.0}
        }},
        production_type = 'input-output',
        filter = 'water'
    },
    output_fluid_box = {
        base_area = 1,
        height = 2,
        base_level = 1,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {{
            type = 'output',
            position = {0.0, -2.0}
        }},
        production_type = 'output',
        filter = 'steam'
    },
    energy_consumption = "25MW",
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 4
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
      east =
      {
        layers =
        {
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
      south =
      {
        layers =
        {
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
      west =
      {
        layers =
        {
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

    fire_flicker_enabled = true,
    fire =
    {
      north =
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png",
        priority = "low",
        frame_count = 40,
        line_length = 8,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        --draw_as_glow = true,
        shift = util.by_pixel(-0, -112),
      },
      east =
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png",
        priority = "low",
        frame_count = 40,
        line_length = 8,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        --draw_as_glow = true,
        shift = util.by_pixel(-0, -112),
      },
      south =
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png",
        priority = "low",
        frame_count = 40,
        line_length = 8,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        --draw_as_glow = true,
        shift = util.by_pixel(-0, -112),
      },
      west =
      {
        filename = "__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png",
        priority = "low",
        frame_count = 40,
        line_length = 8,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        --draw_as_glow = true,
        shift = util.by_pixel(-0, -112),
      },
    },

fire_glow_flicker_enabled = false,

fire_glow =
{
  north =
  {
    filename = "__pyalternativeenergygraphics__/graphics/icons/filler.png",
    priority = "extra-high",
    frame_count = 1,
    width = 4,
    height = 4,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  east =
  {
    filename = "__pyalternativeenergygraphics__/graphics/icons/filler.png",
    priority = "extra-high",
    frame_count = 1,
    width = 4,
    height = 4,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  south =
  {
    filename = "__pyalternativeenergygraphics__/graphics/icons/filler.png",
    priority = "extra-high",
    frame_count = 1,
    width = 4,
    height = 4,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  west =
  {
    filename = "__pyalternativeenergygraphics__/graphics/icons/filler.png",
    priority = "extra-high",
    frame_count = 1,
    width = 4,
    height = 4,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
},

    burning_cooldown = 20
}

RECIPE {
    name = 'electric-boiler-water-to-steam',
    type = 'recipe',
    category = 'electric-boiler',
    enabled = false,
    energy_required = 5,
    ingredients = {{
        type = 'fluid',
        name = 'water',
        amount = 60 * 5
    }},
    results = {{
        type = 'fluid',
        name = 'steam',
        amount = 60 * 5,
        temperature = 250
    }},
    main_product = 'steam'
}

ENTITY {
    name = 'py-electric-boiler',
    type = 'assembling-machine',
    localised_name = {'entity-name.electric-boiler'},
    flags = {'placeable-neutral', 'player-creation'},
    minable = {
        mining_time = 0.5,
        result = 'electric-boiler'
    },
    max_health = 200,
    corpse = 'big-remnants',
    vehicle_impact_sound = {
        filename = '__base__/sound/car-metal-impact.ogg',
        volume = 0.65
    },
    fixed_recipe = 'electric-boiler-water-to-steam',
    fluid_boxes = {
        {
            production_type = 'input',
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_connections = {
                {
                    type = 'input-output',
                    position = {2, 0}
                },
                {
                    type = 'input-output',
                    position = {-2, 0}
                }
            },
            base_area = 1,
            height = 2,
            base_level = -1,
            filter = 'water'
        },
        {
            production_type = 'output',
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_connections = {{
                type = 'output',
                position = {0, 2}
            }},
            base_area = 1,
            height = 2,
            base_level = 1,
            filter = 'steam'
        }
    },
    resistances = {
        {
            type = 'fire',
            percent = 90
        },
        {
            type = 'explosion',
            percent = 30
        },
        {
            type = 'impact',
            percent = 30
        }
    },
    collision_box = {{-1.29, -1.29}, {1.29, 1.29}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    working_sound = {
        sound = {
            filename = '__base__/sound/boiler.ogg',
            volume = 0.8
        },
        max_sounds_per_type = 3
    },
    animation = {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/electric-boiler/raw.png',
                priority = 'extra-high',
                width = 96,
                height = 224,
                shift = util.by_pixel(0, -64),
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/electric-boiler/sh.png',
                priority = 'extra-high',
                width = 160,
                height = 64,
                draw_as_shadow = true,
                shift = util.by_pixel(32, 16),
            },
        }
    },
    working_visualisations = {{
        fadeout = true,
        constant_speed = true,
        animation = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png',
                    priority = 'low',
                    frame_count = 40,
                    line_length = 8,
                    width = 96,
                    height = 128,
                    animation_speed = 0.8,
                    shift = util.by_pixel(-0, -112)
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/electric-boiler/glow.png',
                    priority = 'low',
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
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
    show_recipe_icon = false,
    show_recipe_icon_on_map = false,
    crafting_categories = {'electric-boiler'},
    energy_usage = '25MW',
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
        emissions_per_minute = 4
    },
    crafting_speed = 1,
}