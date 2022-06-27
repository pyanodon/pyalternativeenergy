RECIPE{
    type = 'recipe',
    name = 'stirling-concentrator',
    energy_required = 0.5,
    enabled = false,
    category = "advanced-crafting",
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 100},
        {"axis-tracker", 2},
        {"mirror-mk02", 40},
        {"steel-plate", 50},
        {"cf", 30},
        {"stirling-engine", 1},
        {'self-assembly-monolayer', 10},
        {"regenerator", 1},
        {"tower-mk02", 1},
    },
    results = {{'stirling-concentrator', 1}}
}:add_unlock("thermal-mk02")

ITEM{
    type = 'item',
    name = 'stirling-concentrator',
    icon = '__pyalternativeenergygraphics__/graphics/icons/stirling-concentrator.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk03',
    order = 'd',
    place_result = 'stirling-concentrator',
    stack_size = 10
}

ENTITY{
    type = 'furnace',
    name = 'stirling-concentrator',
    icon = '__pyalternativeenergygraphics__/graphics/icons/stirling-concentrator.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.5, result = 'stirling-concentrator'},
    fast_replaceable_group = 'stirling-concentrator',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed", "consumption"},
    crafting_categories = {"lrf-panel2"},
    crafting_speed = 1,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source = {type = "void"},
    energy_usage = "400kW",
    animation =
    {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/raw-stirling.png',
                width = 192,
                height = 288,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(-16, -64),
                --animation_speed = 0.4
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/solar-concentrator/sh-stirling.png',
                width = 224,
                height = 160,
                line_length = 5,
                frame_count = 10,
                shift = util.by_pixel(32, -0),
                draw_as_shadow = true,
                --animation_speed = 0.4
            },
        }
    },

    --FLUID BOXES DONT APPEAR IN GAME
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0, -3}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3, 0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    placeable_by = {item = 'stirling-concentrator', count = 1}
}
