RECIPE {
    type = "recipe",
    name = "anti-solar",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "laser-module", amount = 3},
        {type = "item", name = "processing-unit", amount = 30},
        {type = "item", name = "super-steel", amount = 35},
        {type = "item", name = "nbfe-alloy", amount = 20},
        {type = "item", name = "graphene-roll", amount = 30},
        {type = "item", name = "cobalt-nx", amount = 10},
        {type = "item", name = "nano-wires", amount = 10},
        {type = "item", name = 'biopolymer', amount = 40},
        {type = "item", name = 'ns-material', amount = 20},
        {type = "item", name = 'dsnc-cell', amount = 16},
        {type = "item", name = 'anti-reflex-glass', amount = 20},
        {type = "item", name = "mechanical-parts-04", amount = 4},

    },
    results = {
        {type = "item", name = "anti-solar", amount = 1}
    }
}:add_unlock("anti-solar")

ITEM {
    type = "item",
    name = "anti-solar",
    icon = "__pyalternativeenergygraphics__/graphics/icons/anti-solar.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "a",
    place_result = "anti-solar",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "anti-solar",
    icon = "__pyalternativeenergygraphics__/graphics/icons/anti-solar.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "anti-solar"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    --allowed_effects = {"speed", "consumption"},
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = "100MJ",
        render_no_power_icon = false,
        input_flow_limit = '0W'
    },
    energy_production = '100MW',
    energy_usage = '0kW',
    continuous_animation = true,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/anti-solar/raw.png",
                    width = 192,
                    height = 192,
                    frame_count = 70,
                    line_length = 10,
                    animation_speed = 0.3,
                    --blend_mode = "additive",
                    --draw_as_glow = true,
                    shift = util.by_pixel(0, -0)
                },
                {
                  filename = "__pyalternativeenergygraphics__/graphics/entity/anti-solar/ao.png",
                  width = 192,
                  height = 192,
                  frame_count = 70,
                  line_length = 10,
                  animation_speed = 0.3,
                  --blend_mode = "multiplicative",
                  --draw_as_shadow = true,
                  shift = util.by_pixel(0, -0)
                },
                {
                  filename = "__pyalternativeenergygraphics__/graphics/entity/anti-solar/l.png",
                  width = 192,
                  height = 224,
                  frame_count = 70,
                  line_length = 10,
                  animation_speed = 0.3,
                  --blend_mode = "multiplicative",
                  draw_as_glow = true,
                  shift = util.by_pixel(0, -16)
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/anti-solar/sh.png",
                    width = 192,
                    height = 192,
                    frame_count = 70,
                    line_length = 10,
                    animation_speed = 0.3,
                    --blend_mode = "additive",
                    draw_as_shadow = true,
                    shift = util.by_pixel(16, -0)
                }
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65}
  }
