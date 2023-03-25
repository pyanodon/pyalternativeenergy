RECIPE {
  type = 'recipe',
  name = 'solar-tower-building',
  energy_required = 10,
  enabled = false,
  ingredients = {
      {'concrete', 1000},
      {'super-alloy', 1000},
      {'cf', 500},
      {'biopolymer', 800},
      {'niobium-pipe', 800},
      {'metallic-glass', 300},
      {'glass', 1000},
      {'nbfe-alloy', 1000},
      {'science-coating', 500},
      {'carbon-aerogel', 1000},
      {'metastable-quasicrystal', 50},
      {'intelligent-unit', 10},
      {'low-density-structure', 400},
      {'mechanical-parts-04', 10}
  },
  results = {
      {'solar-tower-building', 1}
  }
}:add_unlock('thermal-mk04')

ITEM {
  type = 'item',
  name = 'solar-tower-building',
  icon = '__pyalternativeenergygraphics__/graphics/icons/solar-tower.png',
  icon_size = 64,
  flags = {},
  subgroup = 'py-alternativeenergy-thermosolar',
  order = 'da',
  place_result = 'solar-tower-building',
  stack_size = 10
}

local structure = {
  layers = {
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/off.png',
          width = 640,
          height = 1343,
          frame_count = 1,
          shift = util.by_pixel(0, -352)
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/light.png',
          width = 640,
          height = 1343,
          frame_count = 1,
          shift = util.by_pixel(0, -352),
          draw_as_light = true
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/sh.png',
          width = 96,
          height = 1343,
          frame_count = 1,
          shift = util.by_pixel(368, -352),
          draw_as_shadow = true
      }
  }
}

local fire = {
  layers = {
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-left.png',
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(-176, 81)
          --draw_as_glow = true,
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/bottom-mid.png',
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(48, 81)
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-left.png',
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(-176, -143)
          --draw_as_glow = true,
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/mid-mid.png',
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(48, -143)
          --draw_as_glow = true,
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-left.png',
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(-176, -367)
          --draw_as_glow = true,
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/top-mid.png',
          frame_count = 20,
          line_length = 5,
          width = 224,
          height = 224,
          animation_speed = 0.2,
          shift = util.by_pixel(48, -367)
          --draw_as_glow = true,
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/right.png',
          frame_count = 20,
          line_length = 20,
          width = 96,
          height = 672,
          animation_speed = 0.2,
          shift = util.by_pixel(208, -143)
          --draw_as_glow = true,
      },
      {
          filename = '__pyalternativeenergygraphics__/graphics/entity/solar-tower/concentrator.png',
          frame_count = 20,
          line_length = 5,
          width = 288,
          height = 288,
          animation_speed = 0.2,
          shift = util.by_pixel(-16, -720)
          --draw_as_glow = true,
      }
  }
}

local fire_glow = {
  filename = '__core__/graphics/empty.png',
  priority = 'extra-high',
  frame_count = 1,
  width = 1,
  height = 1
}

ENTITY {
  type = 'boiler',
  name = 'solar-tower-building',
  icon = '__pyalternativeenergygraphics__/graphics/icons/solar-tower.png',
  icon_size = 64,
  flags = {'placeable-neutral', 'player-creation'},
  minable = {mining_time = 20, result = 'solar-tower-building'},
  max_health = 5500,
  corpse = 'boiler-remnants',
  vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
  mode = 'output-to-separate-pipe',
  collision_box = {{-9.8, -9.8}, {9.8, 9.8}},
  collision_mask = {'item-layer', 'object-layer', 'player-layer', 'water-tile', _G.sut_placement_distance},
  selection_box = {{-10.0, -10.0}, {10.0, 10.0}},
  target_temperature = 5000,
  fluid_box = {
      base_area = 100,
      base_level = -1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections = {
          {type = 'input', position = {7.5, 10.5}},
          {type = 'input', position = {6.5, 10.5}},
          {type = 'input', position = {-7.5, 10.5}},
          {type = 'input', position = {-6.5, 10.5}}
      },
      production_type = 'input',
      filter = 'molten-salt'
  },
  output_fluid_box = {
      base_area = 100,
      base_level = 1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections = {
          {type = 'output', position = {7.5, -10.5}},
          {type = 'output', position = {6.5, -10.5}},
          {type = 'output', position = {-7.5, -10.5}},
          {type = 'output', position = {-6.5, -10.5}},
      },
      production_type = 'output',
      filter = 'hot-molten-salt'
  },
  energy_consumption = '16GW',
  energy_source = {
      type = 'fluid',
      emissions_per_minute = 0,
      destroy_non_fuel_fluid = false,
      fluid_box = {
          base_area = 0.61,
          pipe_connections = {},
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          pipe_picture = DATA.Pipes.pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
          production_type = 'input',
          filter = 'void'
      },
      effectivity = 1,
      burns_fluid = false,
      scale_fluid_usage = false,
      fluid_usage_per_tick = 1,
      render_no_power_icon = false
  },
  working_sound = {
      sound = {
          filename = '__base__/sound/boiler.ogg',
          volume = 0.8
      },
      max_sounds_per_type = 3
  },
  structure = {
      north = structure,
      east = structure,
      south = structure,
      west = structure
  },
  fire_flicker_enabled = false,
  fire = {
      north = fire,
      east = fire,
      south = fire,
      west = fire
  },
  fire_glow_flicker_enabled = false,
  fire_glow = {
      north = fire_glow,
      east = fire_glow,
      south = fire_glow,
      west = fire_glow
  },
  burning_cooldown = 20
}
