require('__stdlib__/stdlib/data/data').Util.create_data_globals()

-- (( Groups ))--
require('prototypes/item-groups')
-- ))

-- (( Categories ))--
require('prototypes/recipe-categories')
require('prototypes/fuel-categories')
-- ))

-- (( Technology ))--
require("prototypes.technologies.antimony")

-- ))

--(( RESOURCES ))--
require("prototypes.ores.geothermal-crack")
require("prototypes.ores.ree")
require("prototypes.ores.antimonium")

-- ))

-- (( RECIPEs ))--
require('prototypes/recipes/recipes')
require('prototypes/recipes/recipes-sb')
require("prototypes/recipes/recipes-nuclear")
-- ))

-- (( ITEMs ))--
require('prototypes/items/items')

-- (( FLUIDs ))--
require("prototypes/fluids/neutron")
require("prototypes/fluids/uranium")
require("prototypes/fluids/dirty-uranium")
require("prototypes/fluids/geothermal-water")
require("prototypes/fluids/sb-pulp-01")
require("prototypes/fluids/sb-pulp-02")
require("prototypes/fluids/sb-pulp-03")
require("prototypes/fluids/sb-pulp-04")
require("prototypes/fluids/sb-pulp-05")
require("prototypes/fluids/sb-11-conc")
require("prototypes/fluids/sb-conc")
require("prototypes/fluids/sb-final-conc")
require("prototypes/fluids/sb-low-conc")
require("prototypes/fluids/sb-58-conc")
require("prototypes/fluids/dowfroth-250")

-- ))

-- (( BUILDINGS ))--
require("prototypes/buildings/hawt-turbine-mk01")
require("prototypes/buildings/hawt-turbine-mk02")
require("prototypes/buildings/hawt-turbine-mk03")
require("prototypes/buildings/hawt-turbine-mk04")
require("prototypes/buildings/multiblade-turbine-mk03")
require("prototypes/buildings/multiblade-turbine-mk01")
require("prototypes/buildings/vawt-turbine-mk01")
require("prototypes/buildings/vawt-turbine-mk02")
require("prototypes/buildings/vawt-turbine-mk03")
require("prototypes/buildings/vawt-turbine-mk04")
require("prototypes/buildings/steam-turbine-mk02")
require("prototypes/buildings/steam-turbine-mk03")
require("prototypes/buildings/steam-turbine-mk04")
require("prototypes/buildings/solar-panel-mk01")
require("prototypes/buildings/solar-panel-mk02")
require("prototypes/buildings/solar-panel-mk03")
require("prototypes/buildings/solar-panel-mk04")
require("prototypes/buildings/lrf-mk03")
require("prototypes/buildings/geothermal-plant-mk01")
require("prototypes/buildings/sut")
require("prototypes/buildings/sut-panel")
require("prototypes/buildings/mdh")
require("prototypes/buildings/anti-solar")
require("prototypes/buildings/solar-tower")
require("prototypes/buildings/solar-tower-panel")
require("prototypes/buildings/lightning-catcher")
require("prototypes/buildings/nexelit-substation")
require("prototypes/buildings/thermal-panel-furnace-prototype")
require("prototypes/buildings/solar-concentrator")
require("prototypes/buildings/stirling-concentrator")
require("prototypes/buildings/ree-mining-drill-mk01")
require("prototypes/buildings/ree-mining-drill-mk02")
require("prototypes/buildings/ree-mining-drill-mk03")
require("prototypes/buildings/ree-mining-drill-mk04")
require("prototypes/buildings/antimonium-drill-mk01")
require("prototypes/buildings/antimonium-drill-mk02")
require("prototypes/buildings/antimonium-drill-mk03")
require("prototypes/buildings/antimonium-drill-mk04")
require("prototypes/buildings/nuclear-reactor-mk01")
require("prototypes/buildings/nuclear-reactor-mk02-a")
require("prototypes/buildings/nuclear-reactor-mk02")
require("prototypes/buildings/nuclear-reactor-mk03")
require("prototypes/buildings/nuclear-reactor-mk04")
require("prototypes/buildings/neutron-absorber-mk01")
require("prototypes/buildings/neutron-absorber-mk02")
require("prototypes/buildings/neutron-absorber-mk03")
require("prototypes/buildings/neutron-absorber-mk04")
require("prototypes/buildings/neutron-moderator-mk01")
require("prototypes/buildings/neutron-moderator-mk02")
require("prototypes/buildings/neutron-moderator-mk03")
require("prototypes/buildings/neutron-moderator-mk04")
require("prototypes/buildings/accumulator-mk03")
require("prototypes/buildings/offshore-example")
-- ))

--data.raw['utility-constants'].default.main_menu_background_image_location = '__pycoalprocessinggraphics__/graphics/pycp-wall.jpg'
