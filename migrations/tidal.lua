storage.tidal_plants = storage.tidal_plants or {}

local migrated_count = 0
for _, surface in pairs(game.surfaces) do
    for _, tidal_plant in pairs(surface.find_entities_filtered({
        name = { "tidal-mk01", "tidal-mk02", "tidal-mk03", "tidal-mk04" },
    })) do
        if not storage.tidal_plants[tidal_plant.unit_number] or not storage.tidal_plants[tidal_plant.unit_number].valid then
            local solar_panel = surface.create_entity({
                name = tidal_plant.name .. "-solar",
                position = tidal_plant.position,
                force = tidal_plant.force_index,
                quality = tidal_plant.quality
            })

            solar_panel.destructible = false
            solar_panel.minable_flag = false
            solar_panel.rotatable = false
            solar_panel.operable = false

            storage.tidal_plants[tidal_plant.unit_number] = solar_panel

            migrated_count = migrated_count + 1
        end
    end
end

if migrated_count ~= 0 then
    game.print("Migrated " .. migrated_count .. " tidal energy generators to the new system. Enjoy UPS improvements =)")
end
