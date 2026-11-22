local sounds = require "__base__/prototypes/entity/sounds"

RECIPE {
    type = "recipe",
    name = "py-logistic-robot-mk03",
    energy_required = 15,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {type = "item",  name = "processing-unit",        amount = 3},
        {type = "item",  name = "py-logistic-robot-mk02", amount = 1},
        {type = "item",  name = "ns-material",            amount = 1},
        {type = "item",  name = "low-density-structure",  amount = 4},
        {type = "item",  name = "biobattery",             amount = 1},
        {type = "item",  name = "nbfe-alloy",             amount = 5},
        {type = "item",  name = "cf",                     amount = 10},
        {type = "item",  name = "carbon-nanotube",        amount = 4},
        {type = "item",  name = "biopolymer",             amount = 2},
        {type = "item",  name = "small-parts-03",         amount = 50},
        {type = "item",  name = "electric-engine-unit",   amount = 1},
        {type = "item",  name = "gearbox-mk03",           amount = 1},
        {type = "fluid", name = "bio-oil",                amount = 200},
    },
    results = {
        {type = "item", name = "py-logistic-robot-mk03", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "py-logistic-robot-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/l-pynobot-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-robots",
    order = "g",
    place_result = "py-logistic-robot-mk03",
    stack_size = 50
}

ENTITY {
    type = "logistic-robot",
    name = "py-logistic-robot-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/l-pynobot-mk03.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {
        mining_time = 0.1,
        result = "py-logistic-robot-mk03"
    },
    resistances = {{type = "fire", percent = 85}},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 5,
    speed = 0.17,
    transfer_distance = 0.5,
    max_energy = "4MJ",
    energy_per_tick = "0.06kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "3kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/idle.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        direction_count = 16,
        scale = 0.55
    },
    idle_with_cargo = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/idle-cargo.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        direction_count = 16,
        scale = 0.55
    },
    in_motion = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/run.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        direction_count = 16,
        scale = 0.55
    },
    in_motion_with_cargo = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/run-cargo.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        direction_count = 16,
        scale = 0.55
    },
    shadow_idle = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/sh.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.55
    },
    shadow_idle_with_cargo = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/sh.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.55
    },
    shadow_in_motion = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/sh.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.55
    },
    shadow_in_motion_with_cargo = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/l-pynobot-mk03/sh.png",
        priority = "high",
        line_length = 8,
        width = 128,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.55
    },
    working_sound = sounds.flying_robot(0.5),
    cargo_centered = {0.0, 0.2}
}
