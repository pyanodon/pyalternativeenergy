require('__stdlib__/stdlib/data/data').Util.create_data_globals()

-- (( Groups ))--
require('prototypes/item-groups')
-- ))

-- (( Categories ))--
require('prototypes/recipe-categories')
require('prototypes/fuel-categories')
-- ))

-- (( Technology ))--

-- ))

-- (( RESOURCEs ))--

-- ))

-- (( RECIPEs ))--
require('prototypes/recipes/recipes')
require("prototypes/recipes/recipes-nuclear")
-- ))

-- (( ITEMs ))--
require('prototypes/items/items')

-- (( FLUIDs ))--
require("prototypes/fluids/neutron")
require("prototypes/fluids/uranium")
require("prototypes/fluids/dirty-uranium")

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
require("prototypes/buildings/nuclear-reactor-mk02")
-- ))

--data.raw['utility-constants'].default.main_menu_background_image_location = '__pycoalprocessinggraphics__/graphics/pycp-wall.jpg'
