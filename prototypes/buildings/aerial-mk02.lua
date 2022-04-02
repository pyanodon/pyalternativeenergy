local util = require('util')

RECIPE{
    type = "recipe",
    name = "aerial-blimp-mk02",
	energy_required = 50,
	category = 'advanced-crafting',
    enabled = false,
    ingredients =
    {
		{"shaft-mk02", 1},
        {"anemometer-mk02", 4},
        {"advanced-circuit", 10},
        {"small-parts-02", 100},
        {"self-assembly-monolayer", 20},
        {"utility-box-mk02", 1},
        {"controler-mk02", 1},
        {"rubber", 30},
        {"aluminium-plate", 30},
		{"battery", 30},
        {"eva", 40},
        {"electronics-mk02", 1},
		{type = "fluid", name = "hydrogen", amount = 3000},
    },
    result = "aerial-blimp-mk02"
  }:add_unlock("renewable-mk02")

ITEM{
    type = "item",
    name = "aerial-blimp-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk02.png",
    icon_size = 64,
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "b",
    place_result = "aerial-blimp-mk02",
    stack_size = 5
  }

data:extend(
{
  {
    type = "unit",
    name = "aerial-blimp-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk02.png",
    icon_size = 64,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air"},
	minable = {mining_time = 0.1, result = "aerial-blimp-mk02"},
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
    healing_per_tick = 0.01,
    immune_to_tree_impacts = true,
    has_belt_immunity = true,
    immune_to_rock_impacts = true,
    collision_box = {{0,0}, {0,0}},
    collision_mask = {},
    selection_box = {{-1, -1}, {1, 1}},
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
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/r1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/r2.png",
				},
			slice = 5,
			lines_per_file = 7,
			line_length = 5,
			width = 352,
			height = 224,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = 0.4,
			},
			{
				filenames =
				{
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/s1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/s2.png",
				},
				slice = 5,
				lines_per_file = 7,
				line_length = 5,
				width = 192,
				height = 128,
				frame_count = 1,
				direction_count = 64,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.3,
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
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/r1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/r2.png",
				},
			slice = 5,
			lines_per_file = 7,
			line_length = 5,
			width = 352,
			height = 224,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = 0.4,
			},
			{
				filenames =
				{
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/s1.png",
					  "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/s2.png",
				},
				slice = 5,
				lines_per_file = 7,
				line_length = 5,
				width = 192,
				height = 128,
				frame_count = 1,
				direction_count = 64,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.3,
			},
		}
	},
    render_layer = 'air-object'
  }

  }
  )
