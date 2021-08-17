if mods["pyalienlife"] then
    require("prototypes/updates/pyalienlife-updates")
end
if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end
if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end
if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

--disable combustion recipes--
RECIPE('acetylene-combustion'):set_fields{hidden = true}
RECIPE('coalgas-combustion'):set_fields{hidden = true}
RECIPE('syngas-combustion'):set_fields{hidden = true}
RECIPE('supercritical-combustion'):set_fields{hidden = true}
RECIPE('ultrasupercritical-combustion'):set_fields{hidden = true}
RECIPE('diesel-combustion'):set_fields{hidden = true}
RECIPE('gasoline-combustion'):set_fields{hidden = true}
RECIPE('heavy-oil-combustion'):set_fields{hidden = true}
RECIPE('light-oil-combustion'):set_fields{hidden = true}
RECIPE('methanol-combustion'):set_fields{hidden = true}
RECIPE('olefin-combustion'):set_fields{hidden = true}
RECIPE('combustion-olefin'):set_fields{hidden = true}
RECIPE('petgas-combustion'):set_fields{hidden = true}
RECIPE('refsyngas-combustion'):set_fields{hidden = true}
RECIPE('hydrogen-combustion'):set_fields{hidden = true}
RECIPE('lard-combustion'):set_fields{hidden = true}
RECIPE('bio-oil-combustion'):set_fields{hidden = true}
RECIPE('fuel-oil-combustion'):set_fields{hidden = true}
RECIPE('natural-gas-combustion'):set_fields{hidden = true}
RECIPE('aromatics-combustion'):set_fields{hidden = true}
RECIPE('scrude-combustion'):set_fields{hidden = true}
RECIPE('crude-oil-combustion'):set_fields{hidden = true}
RECIPE('naphtha-combustion'):set_fields{hidden = true}
RECIPE('tall-oil-combustion'):set_fields{hidden = true}
RECIPE('coalslurry-combustion'):set_fields{hidden = true}
RECIPE('ethanol-combustion'):set_fields{hidden = true}
RECIPE('fish-oil-combustion'):set_fields{hidden = true}
RECIPE('methane-combustion'):set_fields{hidden = true}
RECIPE('oleochemical-combustion'):set_fields{hidden = true}
RECIPE('diborane-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk02-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk03-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk04-combustion'):set_fields{hidden = true}
RECIPE('fuelrodmk05-combustion'):set_fields{hidden = true}
RECIPE('kerosene-combustion'):set_fields{hidden = true}
RECIPE('lubricant-combustion'):set_fields{hidden = true}
RECIPE('xylenol-combustion'):set_fields{hidden = true}
RECIPE('benzene-combustion'):set_fields{hidden = true}