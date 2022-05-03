RECIPE {
    type = "recipe",
    name = "ree-mining-drill-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"ree-mining-drill-mk03", 1},
        {"concrete", 50},
        {"super-alloy", 30},
        {"storage-tank", 1},
        {"low-density-structure", 10},
        {"nbfe-alloy", 10},
        {'metastable-quasicrystal', 2},
        {"sc-engine", 2},
        {"intelligent-unit", 3},
        {"superconductor-servomechanims", 2},
        {"hyperelastic-material", 5},
    },
    results = {
        {"ree-mining-drill-mk04", 1}
    }
}:add_unlock("machines-mk05")

ITEM {
    type = "item",
    name = "ree-mining-drill-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/ree-mining-drill-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "ree-mining-drill-mk04",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "ree-mining-drill-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/ree-mining-drill-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "ree-mining-drill-mk04"},
    fast_replaceable_group = "ree-mining-drill",
    max_health = 700,
    resource_categories = {"ree"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    input_fluid_box = {
        production_type = "input-output",
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            {position = {-2.8, 2}},
            {position = {2.8, 2}},
        }
    },
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"consumption", "speed", "pollution"},
    mining_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1200kW",
    mining_power = 1,
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/ree-mining-drill/ree-mining-drill-mk04.png",
                width = 160,
                height = 184,
                line_length = 10,
                frame_count = 90,
                animation_speed = 0.3,
                shift = util.by_pixel(-0, -16),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/ree-mining-drill/sh.png",
                width = 172,
                height = 144,
                line_length = 10,
                frame_count = 90,
                draw_as_shadow = true,
                animation_speed = 0.3,
                shift = util.by_pixel(8, 5),
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/borax-mine.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/borax-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
