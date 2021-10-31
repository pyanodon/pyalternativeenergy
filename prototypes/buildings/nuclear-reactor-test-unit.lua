
ITEM{
  type = 'item',
  name = 'nuke-tank-input',
  icon = '__base__/graphics/icons/assembling-machine-2.png',
  icon_size = 64,

  subgroup = 'production-machine',
  order = 'b[assembling-machine-2]',
  place_result = 'nuke-tank-input',
  stack_size = 50
}

ENTITY{
  type = "storage-tank",
  name = "nuke-tank-input",
  icon = "__base__/graphics/icons/storage-tank.png",
  icon_size = 64,
  flags = {"placeable-player", "player-creation"},
  minable = {mining_time = 0.5, result = "storage-tank"},
  max_health = 500,
  corpse = "storage-tank-remnants",
  dying_explosion = "storage-tank-explosion",
  collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  --damaged_trigger_effect = hit_effects.entity(),
  fluid_box =
  {
    base_area = 250,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      { position = {0, -1} }
    }
  },
  two_direction_only = false,
  window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
  pictures =
  {
    picture =
    {
      filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
      priority = "extra-high",
      width = 32,
      height = 40,
      shift = util.by_pixel(-11, 4.5)
    },
    fluid_background =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    window_background =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    flow_sprite =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    gas_flow =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    }
  },
  flow_length_in_ticks = 360,
  --vehicle_impact_sound = sounds.generic_impact,
  --open_sound = sounds.machine_open,
  --close_sound = sounds.machine_close,
  working_sound =
  {
    sound =
    {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.6
    },
    match_volume_to_activity = true,
    audible_distance_modifier = 0.5,
    max_sounds_per_type = 3
  },

  circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
  circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  water_reflection =
  {
    pictures =
    {
      filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
      priority = "extra-high",
      width = 24,
      height = 24,
      shift = util.by_pixel(5, 35),
      variation_count = 1,
      scale = 5
    },
    rotate = false,
    orientation_to_variation = false
  }
}


ENTITY{
  type = "storage-tank",
  name = "nuke-tank-output",
  icon = "__base__/graphics/icons/storage-tank.png",
  icon_size = 64,
  flags = {"placeable-player", "player-creation"},
  minable = {mining_time = 0.5, result = "storage-tank"},
  max_health = 500,
  corpse = "storage-tank-remnants",
  dying_explosion = "storage-tank-explosion",
  collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  --damaged_trigger_effect = hit_effects.entity(),
  fluid_box =
  {
    base_area = 250,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      { position = {0, -1} }
    }
  },
  two_direction_only = false,
  window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
  pictures =
  {
    picture =
    {
      filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
      priority = "extra-high",
      width = 32,
      height = 40,
      shift = util.by_pixel(-11, 4.5)
    },
    fluid_background =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    window_background =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    flow_sprite =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    gas_flow =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    }
  },
  flow_length_in_ticks = 360,
  --vehicle_impact_sound = sounds.generic_impact,
  --open_sound = sounds.machine_open,
  --close_sound = sounds.machine_close,
  working_sound =
  {
    sound =
    {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.6
    },
    match_volume_to_activity = true,
    audible_distance_modifier = 0.5,
    max_sounds_per_type = 3
  },

  circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
  circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  water_reflection =
  {
    pictures =
    {
      filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
      priority = "extra-high",
      width = 24,
      height = 24,
      shift = util.by_pixel(5, 35),
      variation_count = 1,
      scale = 5
    },
    rotate = false,
    orientation_to_variation = false
  }
}

ITEM{
  type = 'item',
  name = 'nuclear-heat-interface',
  icon = '__base__/graphics/icons/assembling-machine-2.png',
  icon_size = 64,

  subgroup = 'production-machine',
  order = 'b[assembling-machine-2]',
  place_result = 'nuclear-heat-interface',
  stack_size = 50
}

ENTITY{
  type = "heat-interface",
  name = "nuclear-heat-interface",
  icon = "__base__/graphics/icons/heat-interface.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.1, result = "nuclear-heat-interface"},
  max_health = 150,
  corpse = "small-remnants",
  collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  gui_mode = "none", -- all, none, admins
  --resistances = full_resistances(),
  heat_buffer =
  {
    max_temperature = 1000,
    specific_heat = "10MJ",
    max_transfer = "10GW",
    default_temperature = 0,
    min_working_temperature = 0,
    connections =
    {
      {
        position = {0, 0},
        direction = defines.direction.north
      },
      {
        position = {0, 0},
        direction = defines.direction.east
      },
      {
        position = {0, 0},
        direction = defines.direction.south
      },
      {
        position = {0, 0},
        direction = defines.direction.west
      }
    }
  },
  picture =
  {
    filename = "__base__/graphics/icons/heat-interface.png",
    height = 32,
    width = 32,
    x = 64,
    flags = {"no-crop"},
    hr_version = {
      filename = "__base__/graphics/icons/heat-interface.png",
      height = 64,
      width = 64,
      scale = 0.5,
      flags = {"no-crop"}
    }
  }
}


ENTITY {
  type = "assembling-machine",
  name = "control-rod",
  icon = "__pyalienlifegraphics__/graphics/icons/atomizer-mk01.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "control-rod"},
  --fast_replaceable_group = "atomizer",
  max_health = 100,
  corpse = "medium-remnants",
  dying_explosion = "big-explosion",
  collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  match_animation_speed_to_activity = false,
  module_specification = {
      module_slots = 0
  },
  --allowed_effects = {"speed","productivity",'consumption','pollution'},
  crafting_categories = {"neutron-absorber"},
  crafting_speed = 1,
  energy_source =
  {
    type = "burner",
    fuel_category = "control-rod",
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions_per_minute = 0,
  },
  energy_usage = "1MW",
  animation = {
      layers = {
          {
              filename = "__pyalienlifegraphics__/graphics/entity/atomizer/off.png",
              --priority = "high",
              width = 256,
              height = 256,
              --line_length = 1,
              frame_count = 1,
              --animation_speed = 2,
              shift = util.by_pixel(16, -16)
          },
          {
              filename = "__pyalienlifegraphics__/graphics/entity/atomizer/off-mask.png",
              --priority = "high",
              width = 256,
              height = 256,
              --line_length = 1,
              frame_count = 1,
              --animation_speed = 2,
              shift = util.by_pixel(16, -16),
              tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
          },
      }
  },
  working_visualisations = {
      {
          north_position = util.by_pixel(0, -16),
          west_position = util.by_pixel(0, -16),
          south_position = util.by_pixel(0, -16),
          east_position = util.by_pixel(0, -16),
          animation = {
              filename = "__pyalienlifegraphics__/graphics/entity/atomizer/on.png",
              priority = "high",
              frame_count = 90,
              line_length = 9,
              width = 224,
              height = 192,
              animation_speed = 0.5,
              draw_as_glow = true,
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
          pipe_connections = {{type = "input", position = {1.0, -4.0}}}
      },
      {
          production_type = "input",
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1.0, -4.0}}}
      },
      {
          production_type = "output",
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          base_level = 1,
          pipe_connections = {{type = "output", position = {1.0, 4.0}}}
      },
      {
          production_type = "output",
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-1.0, 4.0}}}
      },
      off_when_no_fluid_recipe = true
  },
  vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  working_sound = {
      sound = {filename = "__pyalienlifegraphics__/sounds/atomizer.ogg", volume = 1.0},
      idle_sound = {filename = "__pyalienlifegraphics__/sounds/atomizer.ogg", volume = 0.50},
      apparent_volume = 2.5
  }
}
