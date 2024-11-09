RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "electronic-circuit",  amount = 20},
        {type = "item", name = "iron-gear-wheel",     amount = 150},
        {type = "item", name = "nbfe-alloy",          amount = 30},
        {type = "item", name = "concrete",            amount = 50},
        {type = "item", name = "steel-plate",         amount = 100},
        {type = "item", name = "aluminium-plate",     amount = 50},
        {type = "item", name = "nexelit-plate",       amount = 50},
        {type = "item", name = "niobium-pipe",        amount = 10},
        {type = "item", name = "mechanical-parts-01", amount = 2},
        {type = "item", name = "intermetallics",      amount = 20},
    },
    results = {
        {type = "item", name = "neutron-absorber-mk01", amount = 1}
    }
}:add_unlock("nuclear-power")

ITEM {
    type = "item",
    name = "neutron-absorber-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "neutron-absorber-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "neutron-absorber-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "neutron-absorber-mk01"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    crafting_categories = {"neutron-absorber"},
    crafting_speed = 1,
    energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = {
            pollution = 0
        },
        destroy_non_fuel_fluid = false,
        fluid_box =
        {
            volume = 200,
            pipe_connections = {
                {flow_direction = "input-output", position = {0, -1.0}, direction = defines.direction.north},
                {flow_direction = "input-output", position = {0, 1.0},  direction = defines.direction.south}
            },
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            production_type = "input-output",
            filter = "boric-acid"
        },
        burns_fluid = false,
        scale_fluid_usage = false,
        fluid_usage_per_tick = (2 / 60),
        maximum_temperature = 10,
    },
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
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
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {
                {flow_direction = "input-output", position = {1.0, 0.0},  direction = defines.direction.east},
                {flow_direction = "input-output", position = {-1.0, 0.0}, direction = defines.direction.west}
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    fast_replaceable_group = "neutron-absorber"
}

data.raw.fluid["boric-acid"].default_temperature = 0
data.raw.fluid["boric-acid"].max_temperature = 10
data.raw.recipe["boric-acid"].results[1].temperature = 10
