py.on_event(py.events.on_init(), function()
    storage.tidal_plants = storage.tidal_plants or {}
end)

py.on_event(defines.events.on_script_trigger_effect, function(event)
    local effect_id = event.effect_id
    if effect_id ~= "on_built_hydro" then return end
    local entity = event.target_entity

    entity.operable = false
    entity.rotatable = false

    local solar_panel = entity.surface.create_entity({
        name = entity.name .. "-solar",
        position = entity.position,
        force = entity.force_index,
        quality = entity.quality
    })

    solar_panel.destructible = false
    solar_panel.minable_flag = false
    solar_panel.rotatable = false
    solar_panel.operable = false

    storage.tidal_plants[entity.unit_number] = solar_panel
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if not entity.valid or not entity.unit_number then return end
    local solar_panel = storage.tidal_plants[entity.unit_number]
    storage.tidal_plants[entity.unit_number] = nil
    if not solar_panel or not solar_panel.valid then return end
    solar_panel.destroy()
end)
