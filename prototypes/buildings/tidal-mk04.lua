RECIPE {
    type = "recipe",
    name = "tidal-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "tidal-mk03",                    amount = 1},
        {type = "item", name = "ti-n",                          amount = 50},
        {type = "item", name = "nbfe-alloy",                    amount = 40},
        {type = "item", name = "science-coating",               amount = 15},
        {type = "item", name = "carbon-aerogel",                amount = 100},
        {type = "item", name = "super-alloy",                   amount = 200},
        {type = "item", name = "intelligent-unit",              amount = 10},
        {type = "item", name = "superconductor-servomechanims", amount = 10},
        {type = "item", name = "metastable-quasicrystal",       amount = 10},
        {type = "item", name = "shaft-mk04",                    amount = 3},
        {type = "item", name = "brake-mk04",                    amount = 3},
        {type = "item", name = "utility-box-mk04",              amount = 2},
        {type = "item", name = "gearbox-mk04",                  amount = 3},
        {type = "item", name = "mechanical-parts-04",           amount = 10},
    },
    results = {{type = "item", name = "tidal-mk04", amount = 1}}
}:add_unlock("tidal-mk04")

ITEM {
    type = "item",
    name = "tidal-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/tidal-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "d",
    place_result = "tidal-mk04",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "tidal-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/tidal-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tidal-mk04"},
    placeable_by = {item = "tidal-mk04", count = 1},
    fast_replaceable_group = "tidal",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -5.3}, {3.3, 5.3}},
    selection_box = {{-3.5, -5.5}, {3.5, 5.5}},
    collision_mask = {layers = {object = true, train = true}},                            -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
    center_collision_mask = {layers = {water_tile = true, object = true, player = true}}, -- to test that tile directly under the pump is ground
    tile_buildability_rules = {
        {area = {{-2, -5}, {2, 1}},  required_tiles = {layers = {water_tile = true}},  colliding_tiles = {layers = {ground_tile = true}}, remove_on_collision = true},
        {area = {{-2, 1.6}, {2, 5}}, required_tiles = {layers = {ground_tile = true}}, colliding_tiles = {layers = {water_tile = true}},  remove_on_collision = true}
    },
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",

        buffer_capacity = "75MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = "75MW",
    energy_usage = "0kW",
    continuous_animation = true,
    placeable_position_visualization = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization),
    created_effect = {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "script",
                effect_id = "on_built_hydro"
            }
        }
    },
    animations = {
        south = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/terrain.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/raw-half.png",
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/mask.png",
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/turbine.png",
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/ao-half.png",
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-half.png",
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
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-down.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-land.png",
                    width = 224,
                    height = 192,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/l-turbines.png",
                    width = 224,
                    height = 224,
                    --priority = 'high',
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, 80),
                },

            }
        },
        east = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/terrain.png",
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/raw-half.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/mask.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/turbine.png",
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao-turbine.png",
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh-turbine.png",
                    width = 224,
                    height = 256,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(96, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-land.png",
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(-112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/l-turbines.png",
                    width = 224,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1 / 5,
                    shift = util.by_pixel(96, -16),
                },
            }
        },
        north = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/terrain.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/raw.png",
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/mask.png",
                    width = 224,
                    height = 192,
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/turbine.png",
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/ao.png",
                    width = 224,
                    height = 192,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh.png",
                    width = 224,
                    height = 192,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 128),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh-down.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-land.png",
                    width = 224,
                    height = 192,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-5, 132),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/l-turbine.png",
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-2, -80),
                },
            }
        },
        west = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/terrain.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/raw.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/mask.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/turbine.png",
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 1 / 5,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao-turb.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    shift = util.by_pixel(-96, 0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh.png",
                    width = 192,
                    height = 256,
                    line_length = 1,
                    repeat_count = 50,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh-down.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-96, -0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-land.png",
                    width = 192,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    shift = util.by_pixel(112, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/l-turbines.png",
                    width = 224,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    draw_as_glow = true,
                    animation_speed = 1 / 5,
                    shift = util.by_pixel(-96, -0),
                },
            },
        },
    }
}
