local util = require('util')

RECIPE{
    type = "recipe",
    name = "aerial-blimp-mk03",
	energy_required = 50,
	category = 'advanced-crafting',
    enabled = false,
    ingredients =
    {
        {'processing-unit', 10},
        {'ns-material', 10},
        {'small-parts-03', 100},
        {'acrylic', 100},
        {'aerogel', 20},
		{"shaft-mk03", 1},
        {"anemometer-mk03", 1},
        {"controler-mk03", 1},
        {"electronics-mk03", 1},
		{"biobattery", 5},
        {"cf", 200},
		{"mechanical-parts-03", 1},
		{type = "fluid", name = "helium", amount = 2000},
    },
    result = "aerial-blimp-mk03"
  }:add_unlock("renewable-mk03")

ITEM{
    type = "item",
    name = "aerial-blimp-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk03.png",
    icon_size = 64,
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "b",
    place_result = "aerial-blimp-mk03",
    stack_size = 10
  }

data:extend(
{
  {
    type = "unit",
    name = "aerial-blimp-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk03.png",
    icon_size = 64,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air"},
	minable = {mining_time = 0.1, result = "aerial-blimp-mk03"},
    max_health = 25,
    order = "b-b-a",
    subgroup="enemies",
    resistances =
		{
			{
				type = "physical",
				percent = 100
			},
		},
    healing_per_tick = 0.02,
    immune_to_tree_impacts = true,
    has_belt_immunity = true,
    immune_to_rock_impacts = true,
    collision_box = {{0,0}, {0,0}},
    collision_mask = {},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    attack_parameters =
    {
      type = "projectile",
      range = 0.5,
      cooldown = 35,
      ammo_type = _G.make_unit_melee_ammo_type(7),
      --sound = make_biter_roars(0.4),
	animation =
	{
		layers =
		{
			{
				filenames =
				{
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/r1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/r2.png",
				},
			slice = 6,
			lines_per_file = 6,
			line_length = 6,
			width = 320,
			height = 320,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = 0.7,
			},
			{
				filenames =
				{
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/s1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/s2.png",
				},
                slice = 6,
                lines_per_file = 6,
                line_length = 6,
				width = 160,
				height = 127,
				frame_count = 1,
				direction_count = 64,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.55,
			},
		}
	},
	},
	vision_distance = 30,
	movement_speed = 0.04,
	distance_per_frame = 0.18,
	pollution_to_join_attack = 4,
	distraction_cooldown = 300,
	min_pursue_time = 10 * 60,
	max_pursue_distance = 50,
	--corpse = "arthurian-corpse",
	dying_explosion = "blood-explosion-small",
	run_animation =
	{
		layers =
		{
			{
				filenames =
				{
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/r1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/r2.png",
				},
			slice = 6,
			lines_per_file = 6,
			line_length = 6,
			width = 320,
			height = 320,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = 0.7,
			},
			{
				filenames =
				{
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/s1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/s2.png",
				},
                slice = 6,
                lines_per_file = 6,
                line_length = 6,
				width = 160,
				height = 127,
				frame_count = 1,
				direction_count = 64,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.55,
			},
		}
	},
    render_layer = 'air-object'
  }

  }
  )
