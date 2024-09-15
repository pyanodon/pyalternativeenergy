RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"neutron-absorber-mk03", 1},
        {"intelligent-unit", 10},
        {"low-density-structure", 50},
        {"nano-mesh", 10},
        {"cooling-system", 10},
        {"super-alloy", 100},
        {"divertor", 10},
        {'hydraulic-system-mk02', 4},
        {"utility-box-mk04", 1},
        {"electronics-mk04", 1},
        {'metastable-quasicrystal', 10},
        {"control-unit", 10},
        {"ti-n", 30},
        {"mechanical-parts-04", 1},
    },
    results = {
        {"neutron-absorber-mk04", 1}
    }
}:add_unlock("nuclear-power-mk04")

ITEM {
    type = "item",
    name = "neutron-absorber-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "neutron-absorber-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "neutron-absorber-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "neutron-absorber-mk04"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    match_animation_speed_to_activity = false,
    crafting_categories = {"neutron-absorber"},
    crafting_speed = 4,
    energy_source = table.deepcopy(data.raw['assembling-machine']['neutron-absorber-mk01'].energy_source),
    energy_usage = "1W",
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
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
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
    fluid_boxes = table.deepcopy(data.raw['assembling-machine']['neutron-absorber-mk01'].fluid_boxes),
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    fast_replaceable_group = "neutron-absorber"
  }

data.raw['assembling-machine']['neutron-absorber-mk04'].energy_source.fluid_usage_per_tick = 8/60