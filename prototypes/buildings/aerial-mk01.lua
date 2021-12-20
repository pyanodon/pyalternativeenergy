local util = require('util')

RECIPE{
    type = "recipe",
    name = "aerial-blimp-mk01",
	energy_required = 50,
	category = 'crafting',
    enabled = false,
    ingredients =
    {
        {type = 'item', name = 'iron-plate', amount = 1},
    },
    result = "aerial-blimp-mk01"
  }:add_unlock("renewable-mk01")

ITEM{
    type = "item",
    name = "aerial-blimp-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk01.png",
    icon_size = 64,
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "b",
    place_result = "aerial-blimp-mk01",
    stack_size = 5
  }

data:extend(
{
  {
    type = "unit",
    name = "aerial-blimp-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk01.png",
    icon_size = 64,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air"},
	minable = {mining_time = 0.1, result = "aerial-blimp-mk01"},
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
			filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/raw.png",
			--slice = 8,
			--lines_per_file = 4,
			line_length = 16,
			width = 127,
			height = 287,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = _G.scale,
			},
			{
				filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/sh.png",
				--slice = 8,
				--lines_per_file = 4,
				line_length = 16,
				width = 96,
				height = 64,
				frame_count = 1,
				direction_count = 64,
				draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.85,
			},
		}
	},
	},
	vision_distance = 30,
	movement_speed = 0.02,
	distance_per_frame = 0.13,
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
			filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/raw.png",
			--slice = 8,
			--lines_per_file = 4,
			line_length = 16,
			width = 127,
			height = 287,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = _G.scale,
			},
			{
				filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/sh.png",
				--slice = 8,
				--lines_per_file = 4,
				line_length = 16,
				width = 96,
				height = 64,
				frame_count = 1,
				direction_count = 64,
				draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.85,
			},
		}
	},
    render_layer = 'air-object'
  }

  }
  )
