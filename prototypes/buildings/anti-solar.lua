RECIPE {
    type = "recipe",
    name = "anti-solar",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"laser-module", 3},
        {"processing-unit", 30},
        {"super-steel", 35},
        {"nbfe-alloy", 20},
        {"graphene-roll", 30},
        {"cobalt-nx", 10},
        {"nano-wires", 10},
    },
    results = {
        {"anti-solar", 1}
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
    type = "assembling-machine",
    name = "anti-solar",
    icon = "__pyalternativeenergygraphics__/graphics/icons/anti-solar.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "anti-solar"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed"},
    crafting_categories = {"solar-tower"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/anti-solar/raw.png",
                width = 192,
                height = 192,
                frame_count = 70,
                line_length = 10,
                animation_speed = 0.45,
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
              animation_speed = 0.45,
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
              animation_speed = 0.45,
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
                animation_speed = 0.45,
                --blend_mode = "additive",
                draw_as_shadow = true,
                shift = util.by_pixel(16, -0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    production = "60kW",
  }
