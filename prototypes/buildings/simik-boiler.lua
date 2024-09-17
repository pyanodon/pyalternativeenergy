RECIPE {
    type = "recipe",
    name = "simik-boiler",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "super-steel", amount = 15},
        {type = "item", name = "niobium-pipe", amount = 10},
        {type = "item", name = "processing-unit", amount = 10},
        {type = "item", name = "simik", amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 15},
        {type = "item", name = "nbfe-alloy", amount = 20},
        {type = "item", name = "nbti-alloy", amount = 10},
        {type = "item", name = "tin-plate", amount = 20},
        {type = "item", name = 'ns-material', amount = 20},
        {type = "item", name = "small-parts-03", amount = 80}
    },
    results = {
        {type = "item", name = "simik-boiler", amount = 1}
    }
}:add_unlock("domestication-mk04")

ITEM {
    type = "item",
    name = "simik-boiler",
    icon = "__pyalternativeenergygraphics__/graphics/icons/generator-3.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "a",
    place_result = "simik-boiler",
    stack_size = 10
}

local pipe = {
    south = {
        filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/bottom.png",
        priority = "extra-high",
        width = 229,
        height = 235
    }
}

ENTITY {
    type = "assembling-machine",
    name = "simik-boiler",
    icon = "__pyalternativeenergygraphics__/graphics/icons/generator-3.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "simik-boiler"},
    fast_replaceable_group = "simik-boiler",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"simik-boiler"},
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "simik",
      effectivity = 1,
      light_flicker =
      {
        minimum_intensity = 0,
        maximum_intensity = 0,
        light_intensity_to_size_coefficient = 0,
        color = {0,0,0},
      },
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = {
          pollution = 0.0
      },
    },
    energy_usage = "4000kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/1.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-160, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/2.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-128, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/3.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-96, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/4.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/5.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-32, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/l.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                    shift = util.by_pixel(-32, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/6.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-0, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/7.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(32, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/8.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/9.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(96, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/10.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(128, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/11.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(160, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/12.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    shift = util.by_pixel(192, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/sh1.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    draw_as_shadow = true,
                    shift = util.by_pixel(192, -80),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/simik-boiler/sh2.png",
                    width = 32,
                    height = 512,
                    line_length = 64,
                    frame_count = 135,
                    animation_speed = 0.5,
                    draw_as_shadow = true,
                    shift = util.by_pixel(224, -80),
                },
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            secondary_draw_orders = {north = 0, east = 0, south = 8, west = 0},
            pipe_connections = {{flow_direction = "input", position = {-2.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            secondary_draw_orders = {north = 0, east = 0, south = 8, west = 0},
            pipe_connections = {{flow_direction = "input", position = {2.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            secondary_draw_orders = {north = 0, east = 0, south = 8, west = 0},
            pipe_connections = {{flow_direction = "output", position = {2.0, 5.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            secondary_draw_orders = {north = 0, east = 0, south = 8, west = 0},
            pipe_connections = {{flow_direction = "output", position = {-2.0, 5.3}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/simik-boiler.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/simik-boiler.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
-- Swap to niobium pipes
for _, fluid_box in pairs(data.raw["assembling-machine"]["simik-boiler"].fluid_boxes) do
    -- Yeah let's just throw a boolean value in the list of fluid boxes - someone at Wube, probably
    if type(fluid_box) == "boolean" then
        break
     end
     if fluid_box.pipe_covers.south.layers then
         fluid_box.pipe_covers.south.layers[1].filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-cover-south.png"
         fluid_box.pipe_covers.south.layers[1].hr_version.filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-south.png"
         fluid_box.pipe_covers.south.layers[2].filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-cover-south-shadow.png"
         fluid_box.pipe_covers.south.layers[2].hr_version.filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-south-shadow.png"
     end
     -- Move cover up to compensate
     fluid_box.pipe_picture.south.scale = 0.5
     fluid_box.pipe_picture.south.shift = {0,-2.33}
end