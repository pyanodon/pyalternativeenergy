RECIPE {
    type = "recipe",
    name = "py-rtg",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"super-steel", 50},
        {"iron-plate", 20},
        {"processing-unit", 5},
        {"nbfe-alloy", 20},
        {"glass", 25},
        {"graphene-roll", 30},
        {'ns-material', 20},
        {"small-parts-03", 100},
        {"mechanical-parts-03", 1},
    },
    results = {
        {"py-rtg", 1}
    }
}:add_unlock("nuclear-power-mk02")

ITEM {
    type = "item",
    name = "py-rtg",
    icon = "__pyalternativeenergygraphics__/graphics/icons/rtg.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "a",
    place_result = "py-rtg",
    stack_size = 10
}

ENTITY {
    type = "burner-generator",
    name = "py-rtg",
    icon = "__pyalternativeenergygraphics__/graphics/icons/rtg.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "py-rtg"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    energy_source =
		{
				type = "electric",
				usage_priority = "secondary-output",
                input_flow_limit = "0kW",
		},
	burner =
		{
			type = "burner",
			fuel_category = "fuelrod",
			effectivity = 50,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
			emissions_per_minute = 0,
		},
	max_power_output = "40MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/rtg/raw.png",
                width = 320,
                height = 384,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = util.by_pixel(0, -16)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/rtg/l.png",
                width = 320,
                height = 384,
                frame_count = 1,
                draw_as_light = true,
                line_length = 1,
                scale = 0.5,
                shift = util.by_pixel(0, -16)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/rtg/g.png",
                width = 320,
                height = 384,
                frame_count = 1,
                draw_as_glow = true,
                line_length = 1,
                scale = 0.5,
                shift = util.by_pixel(0, -16)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/rtg/sh.png",
                width = 375,
                height = 192,
                frame_count = 1,
                line_length = 1,
                draw_as_shadow = true,
                scale = 0.5,
                shift = util.by_pixel(16, 32)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
  }
