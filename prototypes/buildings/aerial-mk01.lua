local util = require 'util'

RECIPE{
    type = 'recipe',
    name = 'aerial-blimp-mk01',
	energy_required = 50,
	category = 'advanced-crafting',
    enabled = false,
    ingredients =
    {
		{'shaft-mk01', 2},
        {'aluminium-plate', 200},
        {'bolts', 40},
        {'anemometer-mk01', 4},
        {'electronic-circuit', 5},
        {'small-parts-01', 100},
        {'intermetallics', 10},
        {'utility-box-mk01', 2},
		{'battery-mk01', 100},
        {'plastic-bar', 60},
        {'copper-cable', 100},
		{type = 'fluid', name = 'hot-air', amount = 4000},
    },
    result = 'aerial-blimp-mk01'
  }:add_unlock('renewable-mk01')

ITEM{
    type = 'item-with-tags',
    name = 'aerial-blimp-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk01.png',
    icon_size = 64,
    subgroup = 'py-alternativeenergy-buildings-mk01',
    order = 'b',
    place_result = 'aerial-blimp-mk01',
	stack_size = 1,
	flags = {'not-stackable'}
  }

data:extend(
{
  {
	ai_settings = {do_separation = false, path_resolution_modifier = -3},
    type = 'unit',
	additional_pastable_entities = {'aerial-blimp-mk01', 'aerial-blimp-mk02', 'aerial-blimp-mk03', 'aerial-blimp-mk04'},
    name = 'aerial-blimp-mk01',
	selection_priority = 49,
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk01.png',
    icon_size = 64,
    flags = {'placeable-player', 'placeable-enemy', 'placeable-off-grid'},
	minable = {mining_time = 0.5, result = 'aerial-blimp-mk01'},
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
    healing_per_tick = 0.01,
    immune_to_tree_impacts = true,
    has_belt_immunity = true,
    immune_to_rock_impacts = true,
    collision_mask = {layers = {['not-colliding-with-itself'] = true}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    attack_parameters =
    {
      type = 'projectile',
      range = 0,
      cooldown = 0,
      ammo_type = _G.make_unit_melee_ammo_type(0),
      --sound = make_biter_roars(0.4),
	  animation = py.empty_image()
	},
	vision_distance = 0,
	movement_speed = 0.02,
	distance_per_frame = 0.13,
	pollution_to_join_attack = 0,
	distraction_cooldown = 0,
	dying_explosion = 'blood-explosion-small',
	run_animation =
	{
		layers =
		{
			{
				filename = '__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/raw.png',
				--slice = 8,
				--lines_per_file = 4,
				line_length = 16,
				width = 127,
				height = 287,
				frame_count = 64,
				direction_count = 1,
				shift = util.mul_shift(util.by_pixel(-0, -0)),
				scale = 0.4,
				animation_speed = 5
			},
			{
				filename = '__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/sh.png',
				--slice = 8,
				--lines_per_file = 4,
				line_length = 16,
				width = 96,
				height = 64,
				frame_count = 64,
				direction_count = 1,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.45,
				animation_speed = 5
			},
		}
	},
    render_layer = 'air-object'
  }

  }
  )