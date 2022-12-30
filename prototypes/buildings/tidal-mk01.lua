RECIPE {
    type = 'recipe',
    name = 'tidal-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      {"pipe", 20},
      {"steel-plate", 100},
      {"refined-concrete", 50},
      {"iron-gear-wheel", 100},
      {"duralumin", 30},
      {"intermetallics", 10},
      {"shaft-mk01", 3},
      {"brake-mk01", 3},
      {"utility-box-mk01", 2},
      {"gearbox-mk01", 3},
      {"electronic-circuit", 20},
      {"mechanical-parts-01", 10},
  },
    results = {{'tidal-mk01', 1}}
}:add_unlock("tidal-mk01")

ITEM {
    type = 'item',
    name = 'tidal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/tidal-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'd',
    place_result = 'tidal-placer-mk01',
    stack_size = 10
}

ENTITY {
    type = 'electric-energy-interface',
    name = 'tidal-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/tidal-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation', "not-rotatable", 'not-blueprintable'},
    minable = {mining_time = 0.5, result = "tidal-mk01"},
    placeable_by = {item = 'tidal-mk01', count = 1},
    fast_replaceable_group = 'tidal-mk01',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        
        buffer_capacity = "9MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = '9MW',
    energy_usage = '0kW',
    continuous_animation = true,
    animations = {
        south = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/raw-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/mask.png',
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/turbine.png',
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/ao-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-land.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-turbines.png',
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, 80),
                },

            }
        },
        east = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/terrain.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/raw-half.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/mask.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao-turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh-turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-land.png',
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-turbines.png',
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1/5,
                    shift = util.by_pixel(96, -16),
                },
            }
        },
        north = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/raw.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/mask.png',
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/ao.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-land.png',
                    width = 224,
                    height = 192,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-5, 132),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-2, -80),
                },
            }
        },
        west = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/raw.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/mask.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao-turb.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, 0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-land.png',
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-turbines.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1/5,
                    shift = util.by_pixel(-96, -0),
                },
            },
        },
    }
}

ENTITY {
    type = "offshore-pump",
    name = "tidal-placer-mk01",
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "filter-directions", "hidden"},
    collision_mask = { "object-layer", "train-layer" }, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
    center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    adjacent_tile_collision_mask = { "ground-tile" }, -- to prevent building on edge of map :(
    adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
    --minable = {mining_time = 0.1, result = "offshore-test"},
    max_health = 150,
    corpse = "offshore-pump-remnants",
    dying_explosion = "offshore-pump-explosion",
    fluid = "water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water",
      pipe_connections =
      {
        {
          position = {0, 5.5},
          type = "output"
        }
      }
    },
    pumping_speed = 20,
    tile_width = 1,
    tile_height = 1,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/offshore-pump.ogg",
          volume = 0.5
        }
      },
      match_volume_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    min_perceived_performance = 0.5,
    always_draw_fluid = false,
    graphics_set =
    {
      underwater_layer_offset = 30,
      base_render_layer = "ground-patch",
      animation = {
        south = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/raw-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/mask.png',
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/turbine.png',
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/ao-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-half.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-land.png',
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-turbines.png',
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, 80),
                },

            }
        },
        east = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/terrain.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/raw-half.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/mask.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao-turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh-turbine.png',
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-land.png',
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-turbines.png',
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1/5,
                    shift = util.by_pixel(96, -16),
                },
            }
        },
        north = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/raw.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/mask.png',
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/ao.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh.png',
                    width = 224,
                    height = 192,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-land.png',
                    width = 224,
                    height = 192,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-5, 132),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-2, -80),
                },
            }
        },
        west = {
            layers = {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/terrain.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/raw.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/mask.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/turbine.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1/5,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao-turb.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, 0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh.png',
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh-down.png',
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-land.png',
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-turbines.png',
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1/5,
                    shift = util.by_pixel(-96, -0),
                },
            },
        },
    },
      fluid_animation =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 22,
          height = 20,
          shift = util.by_pixel(-2, -22),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 40,
            height = 40,
            shift = util.by_pixel(-1, -22),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 24,
          shift = util.by_pixel(6, -10),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 38,
            height = 50,
            shift = util.by_pixel(6, -11),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 8,
          shift = util.by_pixel(-2, -4),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 36,
            height = 14,
            shift = util.by_pixel(-1, -4),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 24,
          shift = util.by_pixel(-8, -10),
          hr_version = {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-fluid.png",
            apply_runtime_tint = true,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.25,
            width = 36,
            height = 50,
            shift = util.by_pixel(-7, -11),
            scale = 0.5
          }
        }
      },
      glass_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-glass.png",
          width = 18,
          height = 20,
          shift = util.by_pixel(-2, -22),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-glass.png",
            width = 36,
            height = 40,
            shift = util.by_pixel(-2, -22),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-glass.png",
          width = 18,
          height = 18,
          shift = util.by_pixel(4, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-glass.png",
            width = 30,
            height = 32,
            shift = util.by_pixel(5, -13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-glass.png",
          width = 22,
          height = 12,
          shift = util.by_pixel(-2, -6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-glass.png",
            width = 40,
            height = 24,
            shift = util.by_pixel(-1, -6),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-glass.png",
          width = 16,
          height = 16,
          shift = util.by_pixel(-6, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-glass.png",
            width = 30,
            height = 32,
            shift = util.by_pixel(-6, -14),
            scale = 0.5
          }
        }
      },
      base_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-legs.png",
          width = 60,
          height = 52,
          shift = util.by_pixel(-2, -4),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-legs.png",
            width = 114,
            height = 106,
            shift = util.by_pixel(-1, -5),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(4, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-legs.png",
            width = 106,
            height = 60,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-legs.png",
          width = 56,
          height = 54,
          shift = util.by_pixel(-2, 6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-legs.png",
            width = 110,
            height = 108,
            shift = util.by_pixel(-2, 6),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(-6, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-legs.png",
            width = 108,
            height = 64,
            shift = util.by_pixel(-6, 12),
            scale = 0.5
          }
        }
      },
      underwater_pictures =
      {
        north =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-underwater.png",
          width = 52,
          height = 16,
          shift = util.by_pixel(-2, -34),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-underwater.png",
            width = 98,
            height = 36,
            shift = util.by_pixel(-1, -32),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-underwater.png",
          width = 18,
          height = 38,
          shift = util.by_pixel(40, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-underwater.png",
            width = 40,
            height = 72,
            shift = util.by_pixel(39, 17),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-underwater.png",
          width = 52,
          height = 26,
          shift = util.by_pixel(-2, 48),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-underwater.png",
            width = 98,
            height = 48,
            shift = util.by_pixel(-1, 49),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-underwater.png",
          width = 20,
          height = 34,
          shift = util.by_pixel(-40, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-underwater.png",
            width = 40,
            height = 72,
            shift = util.by_pixel(-40, 17),
            scale = 0.5
          }
        }
      }
    },
    placeable_position_visualization =
    {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3*64
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump-reflection.png",
        priority = "extra-high",
        width = 132,
        height = 156,
        shift = util.by_pixel(0, 19),
        variation_count = 4,
        scale = 1
      },
      rotate = false,
      orientation_to_variation = true
    }
  }
