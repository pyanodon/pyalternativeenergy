RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "neutron-absorber-mk02", amount = 1},
        {type = "item", name = "processing-unit", amount = 30},
        {type = "item", name = "small-parts-03", amount = 100},
        {type = "item", name = "nichrome", amount = 20},
        {type = "item", name = "biopolymer", amount = 20},
        {type = "item", name = "super-steel", amount = 50},
        {type = "item", name = "cf", amount = 40},
        {type = "item", name = 'hydraulic-system-mk01', amount = 4},
        {type = "item", name = "utility-box-mk03", amount = 1},
        {type = "item", name = "electronics-mk03", amount = 1},
        {type = "item", name = 'ns-material', amount = 15},
        {type = "item", name = "mechanical-parts-03", amount = 1},

    },
    results = {
        {type = "item", name = "neutron-absorber-mk03", amount = 1}
    }
}:add_unlock("nuclear-power-mk03")

ITEM {
    type = "item",
    name = "neutron-absorber-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "neutron-absorber-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "neutron-absorber-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "neutron-absorber-mk03"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    match_animation_speed_to_activity = false,
    crafting_categories = {"neutron-absorber"},
    crafting_speed = 3,
    energy_source = table.deepcopy(data.raw['assembling-machine']['neutron-absorber-mk01'].energy_source),
    energy_usage = "1W",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(6, -87),
                west_position = util.by_pixel(6, -87),
                south_position = util.by_pixel(6, -87),
                east_position = util.by_pixel(6, -87),
                animation = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/l.png",
                    frame_count = 15,
                    line_length = 5,
                    width = 224,
                    height = 288,
                    animation_speed = 0.3,
                    run_mode = "forward-then-backward",
                    draw_as_glow = true,
                    scale = 0.5,
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/off.png",
                    width = 224,
                    height = 416,
                    frame_count = 1,
                    shift = util.by_pixel(8, -56),
                    scale = 0.5,
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/mask.png",
                    width = 224,
                    height = 416,
                    frame_count = 1,
                    shift = util.by_pixel(8, -56),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                    scale = 0.5,
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/sh.png",
                    width = 288,
                    height = 192,
                    frame_count = 1,
                    shift = util.by_pixel(24, 0),
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            }
        },
    },
    fluid_boxes = table.deepcopy(data.raw['assembling-machine']['neutron-absorber-mk01'].fluid_boxes),
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    fast_replaceable_group = "neutron-absorber"
  }

  data.raw['assembling-machine']['neutron-absorber-mk03'].energy_source.fluid_usage_per_tick = 6/60