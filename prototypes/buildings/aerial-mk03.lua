local util = require('util')

RECIPE{
    type = 'recipe',
    name = 'aerial-blimp-mk03',
	energy_required = 50,
	category = 'advanced-crafting',
    enabled = false,
    ingredients =
    {
		{'aerial-blimp-mk02', 1},
        {'processing-unit', 5},
        {'ns-material', 20},
        {'small-parts-03', 100},
        {'acrylic', 200},
        {'aerogel', 40},
		{'shaft-mk03', 2},
        {'anemometer-mk03', 4},
        {'controler-mk03', 2},
        {'electronics-mk03', 2},
		{'biobattery', 100},
        {'cf', 200},
		{'mechanical-parts-03', 1},
		{type = 'fluid', name = 'helium', amount = 4000},
    },
    result = 'aerial-blimp-mk03'
  }:add_unlock('renewable-mk03')

ITEM{
    type = 'item-with-tags',
    name = 'aerial-blimp-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk03.png',
    icon_size = 64,
    subgroup = 'py-alternativeenergy-buildings-mk03',
    order = 'b',
    place_result = 'aerial-blimp-mk03',
	stack_size = 1,
	flags = {'not-stackable'}
  }

data:extend(
{
  {
	ai_settings = {do_separation = false, path_resolution_modifier = -3},
    type = 'unit',
	additional_pastable_entities = {'aerial-blimp-mk01', 'aerial-blimp-mk02', 'aerial-blimp-mk03', 'aerial-blimp-mk04'},
    name = 'aerial-blimp-mk03',
	selection_priority = 49,
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk03.png',
    icon_size = 64,
    flags = {'placeable-player', 'placeable-enemy', 'placeable-off-grid'},
	minable = {mining_time = 0.5, result = 'aerial-blimp-mk03'},
    max_health = 25,
    order = 'b-b-a',
    subgroup='enemies',
    resistances =
		{
			{
				type = 'physical',
				percent = 100
			},
		},
    healing_per_tick = 0.02,
    immune_to_tree_impacts = true,
    has_belt_immunity = true,
    immune_to_rock_impacts = true,
    collision_mask = {'not-colliding-with-itself'},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    attack_parameters =
    {
      type = 'projectile',
      range = 0,
      cooldown = 0,
      ammo_type = _G.make_unit_melee_ammo_type(0),
      --sound = make_biter_roars(0.4),
	  animation = DATA.Sprites.empty_animation()
	},
	vision_distance = 30,
	movement_speed = 0.06,
	distance_per_frame = 0.18,
	pollution_to_join_attack = 4,
	distraction_cooldown = 300,
	min_pursue_time = 10 * 60,
	max_pursue_distance = 50,
	--corpse = 'arthurian-corpse',
	dying_explosion = 'blood-explosion-small',
	run_animation =
	{
		layers =
		{
			{
				filenames =
				{
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/r1.png',
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/r2.png',
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
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/s1.png',
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk03/s2.png',
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
