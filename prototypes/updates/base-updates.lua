local sounds = require '__base__/prototypes/entity/sounds'

-- TECH CHANGES

TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk01"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"py-science-pack-1", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"mining-productivity-1"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"py-science-pack-1", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk02", "mining-productivity-2"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk02", "mining-productivity-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk03", "mining-productivity-4"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk03", "mining-productivity-5"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk04", "mining-productivity-6"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-8",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk04", "mining-productivity-7"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-9",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk05", "mining-productivity-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-10",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"machines-mk05", "mining-productivity-9"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-11",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"mining-productivity-10"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  }

  TECHNOLOGY{
    type = "technology",
    name = "mining-productivity-12",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"mining-productivity-11"},
    unit =
    {
      count_formula = "100*(L*1.2)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
	  max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  }

data.raw.technology['uranium-processing'].enabled = true
data.raw.technology['uranium-processing'].hidden = false

TECHNOLOGY('uranium-processing'):remove_pack('chemical-science-pack'):remove_prereq('chemical-science-pack'):add_pack('py-science-pack-2')

TECHNOLOGY('kovarex-enrichment-process'):set_fields({ enabled = false, hidden = true })

TECHNOLOGY('battery'):set_fields({ enabled = false, hidden = true })

TECHNOLOGY('solar-energy'):set_fields({ enabled = false, hidden = true })

TECHNOLOGY('speed-module-3'):add_pack('military-science-pack')
TECHNOLOGY('productivity-module-3'):add_pack('military-science-pack')
TECHNOLOGY('efficiency-module-3'):add_pack('military-science-pack')

TECHNOLOGY('advanced-material-processing-2'):set_fields{prerequisites = {}}:remove_pack('chemical-science-pack'):remove_pack('py-science-pack-3')

RECIPE('heat-pipe'):add_unlock('advanced-material-processing-2')
RECIPE('heat-exchanger'):add_unlock('advanced-material-processing-2')
RECIPE('steam-turbine'):add_unlock('advanced-material-processing-2'):replace_ingredient('super-steel', 'stainless-steel')

RECIPE('assembling-machine-3'):remove_ingredient('small-parts-02'):add_ingredient({type = 'item', name = 'mechanical-parts-02', amount = 5})

--modify heat exchanger
--data.raw.boiler['heat-exchanger'].target_temperature = 500
data.raw.boiler['heat-exchanger'].energy_consumption = '125MW'
--data.raw.boiler['heat-exchanger'].energy_source.max_temperature = 2000
data.raw.boiler['heat-exchanger'].energy_source.specific_heat = '500MJ'
--data.raw.boiler['heat-exchanger'].energy_source.max_transfer = '8GW'

data.raw.generator['steam-turbine'].effectivity = 1
data.raw.generator['steam-turbine'].fluid_usage_per_tick = 1

RECIPE('electric-furnace'):remove_ingredient('super-steel')

RECIPE('solar-panel-equipment'):remove_ingredient('solar-panel')

if not mods.pystellarexpedition then
	for r, _ in pairs(data.raw.recipe) do
		RECIPE(r):replace_ingredient('solar-panel', 'solar-panel-mk01')
	end
end

RECIPE('chemical-science-pack'):add_ingredient({ type = 'item', name = 'nuclear-sample', amount = 1 }):add_ingredient({ type = 'fluid', name = 'organic-acid-anhydride', amount = 50 })
RECIPE('chemical-science-pack'):add_ingredient({ type = 'item', name = 'self-assembly-monolayer', amount = 2 })
RECIPE('chemical-science-pack'):replace_ingredient('tinned-cable', { type = 'item', name = 'small-parts-02', amount = 3 })
RECIPE('chemical-science-pack'):set_fields {
	results = {
		{ type = 'item', name = 'chemical-science-pack', amount = 12 }
	},
	energy_required = 240
}

RECIPE('nuclear-reactor'):add_unlock('uranium-processing'):remove_ingredient('super-steel')

--modify reactor to produce very little energy
--data.raw.reactor['nuclear-reactor'].energy_source.effectivity = 0.2
--data.raw.reactor['nuclear-reactor'].heat_buffer.connections = nil

data.raw.technology['atomic-bomb'].prerequisites = {} 
TECHNOLOGY('atomic-bomb'):add_prereq('uranium-processing')
data.raw.technology["atomic-bomb"].unit.ingredients = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"py-science-pack-2", 1}
}

RECIPE('atomic-bomb'):replace_ingredient('fuelrod-mk01', 'pu-239'):replace_ingredient('neuromorphic-chip', 'controler-mk02')
RECIPE('uranium-rounds-magazine'):replace_ingredient('uranium-238', 'u-238')
RECIPE('uranium-cannon-shell'):replace_ingredient('uranium-238', 'u-238')
RECIPE('explosive-uranium-cannon-shell'):replace_ingredient('uranium-238', 'u-238')
RECIPE('logistic-science-pack'):add_ingredient { type = 'item', name = 'battery-mk01', amount = 3 }

RECIPE('inserter'):clear_ingredients():add_ingredient { 'burner-inserter', 1 }:add_ingredient { 'electronic-circuit', 2 }
	:add_ingredient { 'small-parts-01', 3 }:add_ingredient { 'duralumin', 1 }
RECIPE('long-handed-inserter'):set_fields {
	ingredients = {
		{ 'inserter', 1 },
		{ 'electronic-circuit', 1 },
		{ 'small-parts-01', 5 },
		{ 'belt', 1 },
		{ 'fenxsb-alloy', 1 },
		{ 'chromium', 10 }
	},
	result_count = 2,
	energy_required = 1
}

RECIPE('fast-inserter'):set_fields {
	ingredients = {
		{ 'inserter', 1 },
		{ 'electronic-circuit', 4 },
		{ 'belt', 1 },
		{ 'nbfe-alloy', 3 },
		{ 'vitreloy', 1 },
		{ 'small-parts-01', 10 }
	},
	result_count = 1,
	energy_required = 0.5
}

RECIPE('stack-inserter'):set_fields {
	ingredients = {
		{ 'fast-inserter', 1 },
		{ 'advanced-circuit', 1 },
		{ 'electric-engine-unit', 1 },
		{ 'small-parts-02', 1 },
		{ 'crmoni', 1 },
	},
}

RECIPE('medium-electric-pole'):add_unlock('electric-energy-distribution-1'):remove_ingredient('niobium-plate'):remove_ingredient('nbfe-alloy'):add_ingredient({type = 'item', name = 'aluminium-plate', amount = 4}):add_ingredient({type = 'item', name = 'chromium', amount = 1})

RECIPE('big-electric-pole'):remove_unlock('electric-energy-distribution-1'):add_unlock('electric-energy-distribution-2'):add_ingredient({type = 'item', name = 'concrete', amount = 4}):replace_ingredient('copper-cable', 'tinned-cable')

RECIPE('substation'):remove_unlock('electric-energy-distribution-2'):add_unlock('electric-energy-distribution-4')

ITEM('uranium-235'):add_flag('hidden')
ITEM('uranium-238'):add_flag('hidden')
ITEM('battery'):add_flag('hidden')

RECIPE('centrifuge'):remove_unlock('filtration'):set_fields { hidden = true }
ITEM('centrifuge'):add_flag('hidden')
ENTITY('centrifuge', 'assembling-machine'):add_flag('hidden')

ITEM('speed-module').effect.consumption.bonus = 1.0
ITEM('speed-module-2').effect.consumption.bonus = 1.2
ITEM('speed-module-3').effect.consumption.bonus = 1.5

ITEM('productivity-module').effect.consumption.bonus = 1.2
ITEM('productivity-module-2').effect.consumption.bonus = 1.5
ITEM('productivity-module-3').effect.consumption.bonus = 2.0

ENTITY('beacon', 'beacon').energy_usage = '2MW'

data.raw.tool['space-science-pack'].stack_size = 200

RECIPE{
	type = 'recipe',
	name = 'speed-module',
	enabled = false,
	ingredients =
	{
	  {'utility-box-mk02', 1},
	  {'controler-mk02', 1},
	  {'electronics-mk02', 2}
	},
	energy_required = 15,
	result = 'speed-module'
  }
  
RECIPE{
	type = 'recipe',
	name = 'speed-module-2',
	enabled = false,
	ingredients =
	{
		{'speed-module', 1},
		{'utility-box-mk03', 1},
		{'controler-mk03', 1},
		{'electronics-mk03', 2}
	},
	energy_required = 30,
	result = 'speed-module-2'
  }

RECIPE{
	type = 'recipe',
	name = 'speed-module-3',
	enabled = false,
	ingredients =
	{
		{'speed-module-2', 1},
		{'utility-box-mk04', 1},
		{'controler-mk04', 1},
		{'electronics-mk04', 2},
		{'fes', 1}
	},
	energy_required = 60,
	result = 'speed-module-3'
  }

  RECIPE{
	type = 'recipe',
	name = 'efficiency-module',
	enabled = false,
	ingredients =
	{
	  {'utility-box-mk02', 1},
	  {'controler-mk02', 1},
	  {'electronics-mk02', 2}
	},
	energy_required = 15,
	result = 'efficiency-module'
  }
  
RECIPE{
	type = 'recipe',
	name = 'efficiency-module-2',
	enabled = false,
	ingredients =
	{
		{'efficiency-module', 1},
		{'utility-box-mk03', 1},
		{'controler-mk03', 1},
		{'electronics-mk03', 2}
	},
	energy_required = 30,
	result = 'efficiency-module-2'
  }

RECIPE{
	type = 'recipe',
	name = 'efficiency-module-3',
	enabled = false,
	ingredients =
	{
		{'efficiency-module-2', 1},
		{'utility-box-mk04', 1},
		{'controler-mk04', 1},
		{'electronics-mk04', 2},
		{'fes', 1}
	},
	energy_required = 60,
	result = 'efficiency-module-3'
  }

  RECIPE{
	type = 'recipe',
	name = 'productivity-module',
	enabled = false,
	ingredients =
	{
	  {'utility-box-mk02', 1},
	  {'controler-mk02', 1},
	  {'electronics-mk02', 2}
	},
	energy_required = 15,
	result = 'productivity-module'
  }
  
RECIPE{
	type = 'recipe',
	name = 'productivity-module-2',
	enabled = false,
	ingredients =
	{
		{'productivity-module', 1},
		{'utility-box-mk03', 1},
		{'controler-mk03', 1},
		{'electronics-mk03', 2}
	},
	energy_required = 30,
	result = 'productivity-module-2'
  }

RECIPE{
	type = 'recipe',
	name = 'productivity-module-3',
	enabled = false,
	ingredients =
	{
		{'productivity-module-2', 1},
		{'utility-box-mk04', 1},
		{'controler-mk04', 1},
		{'electronics-mk04', 2},
		{'fes', 1}
	},
	energy_required = 60,
	result = 'productivity-module-3'
  }

data.raw.furnace['steel-furnace'].energy_usage = '3MW'
data.raw.furnace['steel-furnace'].crafting_speed = 4
data.raw.furnace['steel-furnace'].energy_source.type = 'fluid'
data.raw.furnace['steel-furnace'].energy_source.destroy_non_fuel_fluid = false
data.raw.furnace['steel-furnace'].energy_source.burns_fluid = true
data.raw.furnace['steel-furnace'].energy_source.scale_fluid_usage = true
data.raw.furnace['steel-furnace'].energy_source.fluid_usage_per_tick = 2
data.raw.furnace['steel-furnace'].energy_source.fluid_box = {
	base_area = 1,
	height = 2,
	base_level = -1,
	pipe_connections = {
		{type = 'input-output', position = {0.5, 1.5}},
		{type = 'input-output', position = {0.5, -1.5}}
	},
	pipe_covers = py.pipe_covers(false, true, true, true),
	pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
	production_type = 'input',
}

data.raw['roboport']['py-ze'].energy_usage = '350kW'
data.raw['roboport']['py-ze-mk02'].energy_usage = '700kW'
data.raw['roboport']['py-ze-mk03'].energy_usage = '1MW'
data.raw['roboport']['py-ze-mk04'].energy_usage = '2MW'

RECIPE('py-ze-mk02'):remove_unlock('py-accumulator-mk02'):add_unlock('robotics'):replace_ingredient('iron-gear-wheel', 'small-parts-02'):add_ingredient({type = 'item', name = 'self-assembly-monolayer', amount = 1}):add_ingredient { type = 'item', name = 'mechanical-parts-02', amount = 1 }:add_ingredient({type = 'item', name = 'eva', amount = 20})
RECIPE('py-ze-mk03'):remove_unlock('py-accumulator-mk03'):add_unlock('advanced-robotics'):replace_ingredient('iron-gear-wheel', 'small-parts-03'):add_ingredient({type = 'item', name = 'ns-material', amount = 1}):add_ingredient { type = 'item', name = 'mechanical-parts-03', amount = 1 }:replace_ingredient('plastic-bar', 'biopolymer'):add_ingredient({type = 'item', name = 'super-steel', amount = 15}):add_ingredient({type = 'item', name = 'cf', amount = 10}):add_ingredient({type = 'item', name = 'heavy-fermion', amount = 5}):add_ingredient({type = 'item', name = 'superconductor', amount = 3})
RECIPE('py-ze-mk04'):remove_unlock('kevlar-mk02'):add_unlock('ht-robotics'):add_ingredient({type = 'item', name = 'harmonic-absorber', amount = 4}):add_ingredient({type = 'item', name = 'hyperelastic-material', amount = 2}):add_ingredient({type = 'item', name = 'intelligent-unit', amount = 1}):add_ingredient({type = 'item', name = 'metastable-quasicrystal', amount = 1}):add_ingredient({type = 'item', name = 'sc-engine', amount = 1}):add_ingredient { type = 'item', name = 'mechanical-parts-04', amount = 1 }

--mechanical-parts on vanilla stuff--
--RECIPE('train-stop'):add_ingredient { type = 'item', name = 'mechanical-parts-01', amount = 1 }
RECIPE('power-switch'):add_ingredient { type = 'item', name = 'mechanical-parts-01', amount = 1 }
RECIPE('electric-furnace'):add_ingredient { type = 'item', name = 'mechanical-parts-01', amount = 1 }
RECIPE('rocket-silo'):add_ingredient { type = 'item', name = 'mechanical-parts-02', amount = 4 }
RECIPE('flying-robot-frame'):add_ingredient { type = 'item', name = 'mechanical-parts-01', amount = 2 }
RECIPE('chemical-science-pack'):add_ingredient { type = 'item', name = 'mechanical-parts-01', amount = 1 }
RECIPE('space-science-pack'):add_ingredient { type = 'item', name = 'mechanical-parts-04', amount = 1 }

RECIPE('light-armor'):set_fields {
	ingredients = {
		{ 'small-parts-01', 20},
		{ 'inductor1', 4},
		{ 'steel-plate', 20},
	},
	enabled = false
}:add_unlock('steel-axe')
RECIPE('heavy-armor'):set_fields {
	ingredients = {
		{ 'duralumin', 20 },
		{ 'titanium-plate', 40 },
		{ 'electronic-circuit', 25 },
		{ 'plastic-bar', 10 },
		{ 'small-parts-01', 20},
		{ 'latex-slab', 4},
		{ 'intermetallics', 5}
	},
}
RECIPE('modular-armor'):set_fields {
	ingredients = {
		{ 'advanced-circuit', 55 },
		{ 'electronics-mk02', 10 },
		{ 'self-assembly-monolayer', 10 },
		{ 'mechanical-parts-02', 10 },
		{ 'utility-box-mk02', 1 },
		{ 'small-parts-01', 40},
		{ 'small-parts-02', 20},
		{ 'stainless-steel', 10 },
		{ 'filtration-media', 2 },
		{ 'kevlar', 80 },
		{ type = 'fluid', name ='molten-titanium', amount=400 },
	},
	category = 'crafting-with-fluid'
}
RECIPE('power-armor'):set_fields {
	ingredients = {
		{ 'processing-unit', 80 },
		{ 'biobattery', 12 },
		{ 'small-parts-01', 120},
		{ 'small-parts-02', 100},
		{ 'small-parts-03', 80},
		{ 'super-steel', 20 },
		{ 'nanofibrils', 6 },
		{ 'electronics-mk03', 20 },
		{ 'mechanical-parts-03', 20 },
		{ 'utility-box-mk03', 1 },
		{ 'hydraulic-system-mk01', 2 },
		{ 'cooling-tower-mk02', 1 },
		{ 'mositial-nx', 20 },
		{ 'kevlar', 100 },
		{ type = 'fluid', name ='molten-nexelit', amount=600 },
	},
	category = 'crafting-with-fluid'
}
RECIPE('power-armor-mk2'):set_fields {
	ingredients = {
		{ 'intelligent-unit', 115 },
		{ 'quantum-battery', 12 },
		{ 'supercapacitor', 12 },
		{ 'small-parts-02', 100},
		{ 'small-parts-03', 120},
		{ 'electronics-mk04', 30 },
		{ 'mechanical-parts-04', 30 },
		{ 'utility-box-mk04', 1 },
		{ 'hydraulic-system-mk02', 2 },
		{ 'cooling-tower-mk02', 1 },
		{ 'sc-engine', 6 },
		{ 'vacuum-pump-mk04', 2 },
		{ 'ht-pipes', 10 },
		{ 'metallic-glass', 20 },
		{ 'nxzngd', 40 },
		{ 'reduced-nexelit', 20 },
		{ 'biopolymer', 115 },
		{ 'beacon', 1 },
		{ 'kevlar', 120 },
		{ type = 'fluid', name ='molten-super-steel', amount=800 },
	},
	category = 'crafting-with-fluid'
}
RECIPE('fusion-reactor-equipment'):set_fields {
	ingredients = {
		{'low-density-structure', 40},
		{'gastrocapacitor', 10},
		{'intelligent-unit', 20},
		{'mechanical-parts-03', 10},
		{'efficiency-module-3', 2},
		{'blanket', 1},
		{'divertor', 2},
		{ 'big-electric-pole', 1 },
		{ 'biopolymer', 135 },
	},
	category = 'crafting'
}
RECIPE('personal-fusion-cell'):set_fields {
	ingredients = {
		{'sc-unit', 2},
		{'reinforced-wall-shield', 1},
		{'cryocooler', 1},
		{'hts-coil', 8},
		{'super-alloy', 10},
		{'bioreceptor', 1},
		{'iron-nanoparticles', 2},
		{ 'small-parts-03', 10},
		{ 'kondo-processor', 1},
		{ 'medium-electric-pole', 1 },
		{ type = 'fluid', name ='deuterium', amount=100 },
		{ type = 'fluid', name ='tritium', amount=100 },
	},
	category = 'crafting-with-fluid'
}
RECIPE('personal-fusion-cell-refuel'):set_fields {
	ingredients = {
		{'personal-fusion-cell-used', 1},
		{ type = 'fluid', name ='deuterium', amount=100 },
		{ type = 'fluid', name ='tritium', amount=100 },
	},
	category = 'crafting-with-fluid'
}
RECIPE('belt-immunity-equipment'):set_fields {
	ingredients = {
		{'brake-mk01', 1},
		{'intermetallics', 5},
		{'electronic-circuit', 5},
	},
	category = 'crafting'
}
RECIPE('night-vision-equipment'):set_fields {
	ingredients = {
		{'lens', 2},
		{'small-parts-01', 10},
		{'electronic-circuit', 5},
		{'plastic-bar', 5},
	},
	category = 'crafting'
}
RECIPE('personal-roboport-mk2-equipment'):set_fields {
	ingredients = {
		{'py-ze', 1},
		{'small-parts-01', 10},
		{'advanced-circuit', 5},
		{'mechanical-parts-01', 2},
		{'personal-roboport-equipment', 5},
		{'aluminium-plate', 20},
	},
	category = 'crafting'
}
RECIPE('solar-panel-equipment'):set_fields {
	ingredients = {
		{'solar-panel-mk01', 1},
		{'plastic-bar', 5},
		{'lithium', 10},
		{'medium-electric-pole', 1}
	},
	category = 'crafting'
}
RECIPE('exoskeleton-equipment'):set_fields {
	ingredients = {
		{'neuromorphic-chip', 1},
		{'low-density-structure', 4},
		{'hydraulic-system-mk02', 2},
		{'mechanical-parts-04', 1},
		{'sc-engine', 1},
		{'brake-mk04', 1},
		{'nano-mesh', 1},
		{'gearbox-mk04', 1},
		{'super-steel', 10},
		{'processing-unit', 10},
		{'metastable-quasicrystal', 1},
		{'small-parts-03', 30},
	},
	category = 'crafting'
}

data.raw.technology['solar-panel-equipment'].prerequisites = {'solar-mk01', 'modular-armor'}
data.raw.technology['night-vision-equipment'].prerequisites = {'personal-roboport-equipment'}
data.raw.technology['belt-immunity-equipment'].prerequisites = {'personal-roboport-equipment'}
data.raw.technology['exoskeleton-equipment'].prerequisites = {'bio-implants', 'power-armor'}
data.raw.technology['fusion-reactor-equipment'].prerequisites = {'power-armor', 'fusion-mk02'}
data.raw.technology['personal-roboport-mk2-equipment'].prerequisites = {'solar-panel-equipment', 'modular-armor', 'personal-roboport-equipment'}

TECHNOLOGY('solar-panel-equipment'):add_pack('chemical-science-pack')
--TECHNOLOGY('night-vision-equipment'):remove_pack('logistic-science-pack'):add_pack('py-science-pack-1')
--TECHNOLOGY('belt-immunity-equipment'):remove_pack('logistic-science-pack'):add_pack('py-science-pack-1')
TECHNOLOGY('personal-roboport-mk2-equipment'):remove_pack('military-science-pack'):remove_pack('production-science-pack')
TECHNOLOGY('energy-shield-equipment'):add_pack('chemical-science-pack')

data.raw['movement-bonus-equipment']['exoskeleton-equipment'].movement_bonus = 2
data.raw['movement-bonus-equipment']['exoskeleton-equipment'].energy_consumption = '750kW'

data.raw.furnace['electric-furnace'].energy_usage = '10MW'
data.raw.furnace['electric-furnace'].crafting_speed = 8
data.raw.furnace['electric-furnace'].energy_source = {
	type = 'heat',
	max_temperature = 1000,
	specific_heat = '1MJ',
	max_transfer = '2GW',
	min_working_temperature = 500,
	minimum_glow_temperature = 350,
	connections =
	{
		{
			position = { 1.2, 0 },
			direction = defines.direction.east
		},
		{
			position = { -1.2, 0 },
			direction = defines.direction.west
		}
	},
	pipe_covers =
	make_4way_animation_from_spritesheet(
		{
			filename = '__base__/graphics/entity/heat-exchanger/heatex-endings.png',
			width = 32,
			height = 32,
			direction_count = 4,
			hr_version =
			{
				filename = '__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png',
				width = 64,
				height = 64,
				direction_count = 4,
				scale = 0.5
			}
		}),
	heat_pipe_covers =
	make_4way_animation_from_spritesheet(
		apply_heat_pipe_glow {
			filename = '__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png',
			width = 32,
			height = 32,
			direction_count = 4,
			hr_version =
			{
				filename = '__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png',
				width = 64,
				height = 64,
				direction_count = 4,
				scale = 0.5
			}
		}),
	heat_picture =
	{
		north = apply_heat_pipe_glow
		{
			filename = '__base__/graphics/entity/heat-exchanger/heatex-N-heated.png',
			priority = 'extra-high',
			width = 24,
			height = 48,
			shift = util.by_pixel(-1, 8),
			hr_version =
			{
				filename = '__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png',
				priority = 'extra-high',
				width = 44,
				height = 96,
				shift = util.by_pixel(-0.5, 8.5),
				scale = 0.5
			}
		},
		east = apply_heat_pipe_glow
		{
			filename = '__base__/graphics/entity/heat-exchanger/heatex-E-heated.png',
			priority = 'extra-high',
			width = 40,
			height = 40,
			shift = util.by_pixel(-21, -13),
			hr_version =
			{
				filename = '__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png',
				priority = 'extra-high',
				width = 80,
				height = 80,
				shift = util.by_pixel(-21, -13),
				scale = 0.5
			}
		},
		south = apply_heat_pipe_glow
		{
			filename = '__base__/graphics/entity/heat-exchanger/heatex-S-heated.png',
			priority = 'extra-high',
			width = 16,
			height = 20,
			shift = util.by_pixel(-1, -30),
			hr_version =
			{
				filename = '__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png',
				priority = 'extra-high',
				width = 28,
				height = 40,
				shift = util.by_pixel(-1, -30),
				scale = 0.5
			}
		},
		west = apply_heat_pipe_glow
		{
			filename = '__base__/graphics/entity/heat-exchanger/heatex-W-heated.png',
			priority = 'extra-high',
			width = 32,
			height = 40,
			shift = util.by_pixel(23, -13),
			hr_version =
			{
				filename = '__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png',
				priority = 'extra-high',
				width = 64,
				height = 76,
				shift = util.by_pixel(23, -13),
				scale = 0.5
			}
		}
	}
}

ITEM('space-science-pack', 'tool'):set('icon', '__pyalternativeenergygraphics__/graphics/icons/space-science-pack.png')
ITEM('space-science-pack', 'tool'):set('icon_size', 64)
ITEM('space-science-pack', 'tool'):set('icon_mipmaps', nil)

data.raw.recipe['empty-boric-acid-barrel'].results[1].temperature = 10

RECIPE {
    type = "recipe",
    name = "nuclear-artillery-shell",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "pistol", amount = 1},
        {type = "item", name = "piercing-rounds-magazine", amount = 1},
        {type = "item", name = "atomic-bomb", amount = 1},
        {type = "item", name = "artillery-shell", amount = 1},
		{type = "item", name = "nbti-alloy", amount = 10},
        {type = "item", name = "super-steel", amount = 20},
    },
    results = {
        {type = "item", name = "nuclear-artillery-shell", amount = 1},
    },
    main_product = "nuclear-artillery-shell",
}:add_unlock("artillery-2")

data:extend({
	{
		type = "ammo",
		name = "nuclear-artillery-shell",
		icon = "__pyalternativeenergygraphics__/graphics/icons/fatmanbomb_64.png",
		icon_size = 64,
		ammo_type =
		{
		  category = "artillery-shell",
		  target_type = "position",
		  action =
		  {
			type = "direct",
			action_delivery =
			{
			  type = "artillery",
			  projectile = "nuclear-artillery-projectile",
			  starting_speed = 1,
			  direction_deviation = 0,
			  range_deviation = 0,
			  source_effects =
			  {
				type = "create-explosion",
				entity_name = "artillery-cannon-muzzle-flash"
			  }
			}
		  }
		},
		subgroup = "ammo",
		order = "d[explosive-cannon-shell]-d[artillery]",
		stack_size = 1
	  },
	  {
		type = "artillery-projectile",
		name = "nuclear-artillery-projectile",
		flags = {"not-on-map"},
		reveal_map = true,
		map_color = {r=1, g=1, b=0},
		picture =
		{
		  filename = "__base__/graphics/entity/artillery-projectile/hr-shell.png",
		  draw_as_glow = true,
		  width = 64,
		  height = 64,
		  scale = 0.5
		},
		shadow =
		{
		  filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
		  width = 64,
		  height = 64,
		  scale = 0.5
		},
		chart_picture =
		{
		  filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
		  flags = { "icon" },
		  frame_count = 1,
		  width = 64,
		  height = 64,
		  priority = "high",
		  scale = 0.25
		},
		action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "set-tile",
            tile_name = "nuclear-ground",
            radius = 12,
            apply_projection = true,
            tile_collision_mask = { "water-tile" }
          },
          {
            type = "destroy-cliffs",
            radius = 9,
            explosion = "explosion"
          },
          {
            type = "create-entity",
            entity_name = "nuke-explosion"
          },
          {
            type = "camera-effect",
            effect = "screen-burn",
            duration = 60,
            ease_in_duration = 5,
            ease_out_duration = 60,
            delay = 0,
            strength = 6,
            full_strength_max_distance = 200,
            max_distance = 800
          },
          {
            type = "play-sound",
            sound = sounds.nuclear_explosion(0.9),
            play_on_target_position = false,
            -- min_distance = 200,
            max_distance = 1000,
            -- volume_modifier = 1,
            audible_distance_modifier = 3
          },
          {
            type = "play-sound",
            sound = sounds.nuclear_explosion_aftershock(0.4),
            play_on_target_position = false,
            -- min_distance = 200,
            max_distance = 1000,
            -- volume_modifier = 1,
            audible_distance_modifier = 3
          },
          {
            type = "damage",
            damage = {amount = 400, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "huge-scorchmark",
            offsets = {{ 0, -0.5 }},
            check_buildability = true
          },
          {
            type = "invoke-tile-trigger",
            repeat_count = 1
          },
          {
            type = "destroy-decoratives",
            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
            include_decals = true,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
            radius = 14 -- large radius for demostrative purposes
          },
          {
            type = "create-decorative",
            decorative = "nuclear-ground-patch",
            spawn_min_radius = 11.5,
            spawn_max_radius = 12.5,
            spawn_min = 30,
            spawn_max = 40,
            apply_projection = true,
            spread_evenly = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 7,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-ground-zero-projectile",
                starting_speed = 0.6 * 0.8,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 35,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave",
                starting_speed = 0.5 * 0.7,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 26,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                starting_speed = 0.5 * 0.7,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 700,
              radius = 4,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-fire-smoke-explosion",
                starting_speed = 0.5 * 0.65,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 8,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-nuke-shockwave-explosion",
                starting_speed = 0.5 * 0.65,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 300,
              radius = 26,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                starting_speed = 0.5 * 0.65,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 10,
              radius = 8,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "create-entity",
                    entity_name = "nuclear-smouldering-smoke-source",
                    tile_collision_mask = { "water-tile" }
                  }
                }
              }
            }
          }
        }
      }
    },
		final_action =
		{
		  type = "direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
			  {
				type = "create-entity",
				entity_name = "medium-scorchmark-tintable",
				check_buildability = true
			  },
			  {
				type = "invoke-tile-trigger",
				repeat_count = 1
			  },
			  {
			  type = "destroy-decoratives",
			  from_render_layer = "decorative",
			  to_render_layer = "object",
			  include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
			  include_decals = false,
			  invoke_decorative_trigger = true,
			  decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
			  radius = 3.5 -- large radius for demostrative purposes
			  }
			}
		  }
		},
		height_from_ground = 280 / 64
	  }
})

for name, module in pairs(data.raw.module) do
	if name:find('effectivity%-module') then
		module.limitation_blacklist = module.limitation_blacklist or {}
		module.limitation_blacklist[#module.limitation_blacklist+1] = 'electric-boiler-water-to-steam'
	end
end