
  RECIPE {
    type = "recipe",
    name = "geothermal-plant-mk01",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "electric-mining-drill", amount = 4},
        {type = "item", name = "steel-plate", amount = 30},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "engine-unit", amount = 10},
    },
    results = {
        {type = "item", name = "geothermal-plant-mk01", amount = 1}
    }
}:add_unlock("geothermal-power-mk01")

ITEM {
    type = "item",
    name = "geothermal-plant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-plant-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "a",
    place_result = "geothermal-plant-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "geothermal-plant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-plant-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "geothermal-plant-mk01"},
    resource_categories = {"geothermal-crack"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{ -5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{ -5.5, -5.5}, {5.5, 5.5}},
    --drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions_per_second_per_watt = 0,
      usage_priority = "secondary-input"
    },
    input_fluid_box = {
      pipe_picture = _G.assembler2pipepictures(),
      pipe_covers = _G.pipecoverspictures(),
      volume = 200,
      base_level = -1,
      pipe_connections = {
          {position = {-6, 0}},
          {position = {6, 0}},
          {position = {0, 6}},
      },
      filter = 'pressured-water',
      production_type = "input-output",
  },
    output_fluid_box =
    {
      volume = 1000,
      pipe_covers = py.pipe_covers(false, true, true, true),
      pipe_connections =
      {
        {position = {0, -6}, type = 'output'}
      },
      production_type = "output",
    },
    energy_usage = "1MW",
    mining_speed = 2.5,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    --base_render_layer = "lower-object-above-shadow",
    circuit_wire_connection_points = circuit_connector_definitions["geothermal-plant-mk01"].points,
    circuit_connector_sprites = circuit_connector_definitions["geothermal-plant-mk01"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animations = {
          layers = {
              {
                  filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/left-raw.png",
                  width = 128,
                  height = 512,
                  repeat_count = 50,
                  line_length = 1,
                  frame_count = 1,
                  animation_speed = 0.25,
                  shift = util.by_pixel(-112, -80)
              },
              {
                filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/left-l.png",
                width = 128,
                height = 512,
                repeat_count = 50,
                line_length = 1,
                frame_count = 1,
                animation_speed = 0.25,
                draw_as_glow = true,
                shift = util.by_pixel(-112, -80)
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/mid-raw.png",
              width = 128,
              height = 512,
              line_length = 16,
              frame_count = 50,
              animation_speed = 0.25,
              shift = util.by_pixel(16, -80)
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/mid-l.png",
              width = 128,
              height = 512,
              line_length = 16,
              frame_count = 50,
              animation_speed = 0.25,
              draw_as_glow = true,
              shift = util.by_pixel(16, -80)
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/right-raw.png",
              width = 96,
              height = 512,
              line_length = 16,
              frame_count = 50,
              animation_speed = 0.25,
              shift = util.by_pixel(128, -80)
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/right-l.png",
              width = 96,
              height = 512,
              line_length = 16,
              frame_count = 50,
              animation_speed = 0.25,
              draw_as_glow = true,
              shift = util.by_pixel(128, -80)
            },
            {
              filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/sh.png",
              width = 416,
              height = 320,
              repeat_count = 50,
              line_length = 1,
              frame_count = 1,
              animation_speed = 0.25,
              draw_as_shadow = true,
              shift = util.by_pixel(32, 16)
            },
      },
    },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__pyalternativeenergygraphics__/sounds/geothermal-plant.ogg", volume = 0.5 },
      apparent_volume = 0.5
    },
    fast_replaceable_group = "geothermal-plant",
  }
