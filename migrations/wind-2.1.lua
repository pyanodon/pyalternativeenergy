local targets = {}
local collision_targets = {}

rendering.clear("pyalternativeenergy")

-- Build our list of targets
for _, turbine_type in pairs {"hawt", "vawt", "multiblade"} do
    for tier = 1, 4 do
        local turbine = string.format("%s-turbine-mk0%d", turbine_type, tier)
        local base = string.format("%s-turbine-mk0%d-blank", turbine_type, tier)
        local airspace = string.format("%s-turbine-mk0%d-collision", turbine_type, tier)
        if prototypes.entity[turbine] then
            targets[#targets + 1] = turbine
        end
        if prototypes.entity[base] then
            targets[#targets + 1] = base
        end
        if prototypes.entity[airspace] then
            collision_targets[#collision_targets + 1] = airspace
        end
    end
end

-- Clear out the existing global state
-- storage.windmills is 2 versions ago
storage.windmill = {}
storage.windmills = nil

for _, surface in pairs(game.surfaces) do
    -- Yeet the collision boxes
    for _, airbox in pairs(surface.find_entities_filtered {name = collision_targets}) do
        airbox.destroy()
    end
    -- Re-place our turbines
    for _, turbine in pairs(surface.find_entities_filtered {name = targets}) do
        local parameters = {
            name = turbine.name:gsub("%-blank", ""),
            position = turbine.position,
            force = turbine.force,
            create_build_effect_smoke = false
        }
        turbine.destroy()
        Wind.events.on_built {entity = surface.create_entity(parameters)}
    end
end
