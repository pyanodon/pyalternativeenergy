local util = require('util')

RECIPE{
    type = 'recipe',
    name = 'aerial-blimp-mk04',
	energy_required = 50,
	category = 'advanced-crafting',
    enabled = false,
    ingredients =
    {
		{'aerial-blimp-mk03', 1},
		{'shaft-mk04', 2},
        {'anemometer-mk04', 4},
		{'solar-panel-mk02', 1},
        {'intelligent-unit', 5},
        {'metastable-quasicrystal', 10},
        {'low-density-structure', 100},
        {'hyperelastic-material', 20},
        {'carbon-aerogel', 40},
		{'quantum-battery', 5},
        {'cf', 200},
        {'electronics-mk04', 2},
        {'controler-mk04', 2},
		{'mechanical-parts-04', 1},
		{type = 'fluid', name = 'helium3', amount = 4000},
    },
    result = 'aerial-blimp-mk04'
  }:add_unlock('renewable-mk04')

ITEM{
    type = 'item-with-tags',
    name = 'aerial-blimp-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk04.png',
    icon_size = 64,
    subgroup = 'py-alternativeenergy-buildings-mk04',
    order = 'b',
    place_result = 'aerial-blimp-mk04',
	stack_size = 1,
	flags = {'not-stackable'}
  }

data:extend(
{
  {
	ai_settings = {do_separation = false, path_resolution_modifier = -5},
    type = 'unit',
	additional_pastable_entities = {'aerial-blimp-mk01', 'aerial-blimp-mk02', 'aerial-blimp-mk03', 'aerial-blimp-mk04'},
    name = 'aerial-blimp-mk04',
	selection_priority = 49,
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk04.png',
    icon_size = 64,
    flags = {'placeable-player', 'placeable-enemy', 'placeable-off-grid'},
	minable = {mining_time = 0.5, result = 'aerial-blimp-mk04'},
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
    healing_per_tick = 0.04,
    immune_to_tree_impacts = true,
    has_belt_immunity = true,
    immune_to_rock_impacts = true,
    collision_mask = {'not-colliding-with-itself'},
    selection_box = {{-1.5, -3.5}, {1.5, 3.5}},
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
	movement_speed = 0.08,
	distance_per_frame = 0.25,
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
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/r1.png',
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/r2.png',
                      '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/r3.png',
                      '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/r4.png',
				},
			slice = 4,
			lines_per_file = 4,
			line_length = 4,
			width = 384,
			height = 320,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = 1,
			},
			{
				filenames =
				{
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/s1.png',
					  '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/s2.png',
                      '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/s3.png',
                      '__pyalternativeenergygraphics__/graphics/entity/aerial-mk04/s4.png',
				},
                slice = 4,
                lines_per_file = 4,
                line_length = 4,
				width = 224,
				height = 160,
				frame_count = 1,
				direction_count = 64,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.65,
			},
		}
	},
    render_layer = 'air-object'
  }

  }
  )
