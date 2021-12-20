local util = require('util')

RECIPE{
    type = "recipe",
    name = "aerial-blimp-mk01",
	energy_required = 50,
	category = 'creature-chamber',
    enabled = false,
    ingredients =
    {
        {type = 'item', name = 'iron-plate', amount = 1},
    },
    result = "aerial-blimp-mk01"
  }:add_unlock("placeholder")

ITEM{
    type = "item",
    name = "aerial-blimp-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/caravan.png",
    icon_size = 64,
    subgroup = "py-alienlife-special-creatures",
    order = "a",
    place_result = "aerial-blimp-mk01",
    stack_size = 5
  }

data:extend(
{
  {
    type = "unit",
    name = "aerial-blimp-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/caravan.png",
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
			filenames =
				{
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-01.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-02.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-03.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-04.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-05.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-06.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-07.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-08.png",
				},
			slice = 8,
			lines_per_file = 8,
			line_length = 8,
			width = 256,
			height = 224,
			frame_count = 30,
			direction_count = 16,
			shift = util.mul_shift(util.by_pixel(-0, -0), 0.5),
			--scale = scale,
			},
			{
			filenames =
			{
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-01.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-02.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-03.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-04.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-05.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-06.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-07.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-08.png",
			},
			slice = 8,
			lines_per_file = 8,
			line_length = 8,
			width = 256,
			height = 224,
			frame_count = 30,
			shift = util.mul_shift(util.by_pixel(0, 48)),
			direction_count = 16,
			--scale = scale,
			draw_as_shadow = true,
		  }
		}
	},
	},
	vision_distance = 30,
	movement_speed = 0.1,
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
			filenames =
				{
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-01.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-02.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-03.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-04.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-05.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-06.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-07.png",
					  "__pyalienlifegraphics__/graphics/entity/caravan/caravan-walk-08.png",
				},
			slice = 8,
			lines_per_file = 8,
			line_length = 8,
			width = 256,
			height = 224,
			frame_count = 30,
			direction_count = 16,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = _G.scale,
			},
			{
			filenames =
			{
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-01.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-02.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-03.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-04.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-05.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-06.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-07.png",
			  "__pyalienlifegraphics__/graphics/entity/caravan/sh-caravan-walk-08.png",
			},
			slice = 8,
			lines_per_file = 8,
			line_length = 8,
			width = 256,
			height = 224,
			frame_count = 30,
			shift = util.mul_shift(util.by_pixel(-0, 48)),
			direction_count = 16,
			--scale = scale,
			draw_as_shadow = true,
		  }
		}
	},
    render_layer = 'air-object'
  }

  }
  )
