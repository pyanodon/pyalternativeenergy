Solar = {}
Solar.events = {}

Solar.animated_solarpanels = {
    ["solar-panel-mk02"] = true,
    ["solar-panel-mk03"] = true
}

py.on_event(py.events.on_init(), function()
    storage.solarpanels = storage.solarpanels or {}
    storage.unsynced_solarpanels = storage.unsynced_solarpanels or {}
end)

Solar.sync_solarpanels = function()
    local new = {}
    for k, panel in pairs(storage.unsynced_solarpanels) do
        if not panel.valid then
            storage.solarpanels[k] = nil
            return
        end

        local surface = panel.surface
        local time = surface.daytime
        if surface.morning <= time and time < (surface.morning + 100 / surface.ticks_per_day) then
            local new_panel = surface.create_entity({
                name = panel.name,
                force = panel.force,
                position = panel.position,
                player = panel.last_user,
                create_build_effect_smoke = false
            })
            new_panel.operable = false
            storage.solarpanels[panel.unit_number] = nil
            storage.solarpanels[new_panel.unit_number] = new_panel
            panel.destroy()
        else
            new[panel.unit_number] = panel
        end
    end
    storage.unsynced_solarpanels = new
end

Solar.events[100] = function()
    for k, panel in pairs(storage.solarpanels) do
        if not panel.valid then
            storage.solarpanels[k] = nil
            return
        end

        local daylight = Thermosolar.calc_daylight(panel.surface)
        if panel.name == "anti-solar" then daylight = 1 - daylight end

        if daylight == 0 then
            panel.power_production = 0
            panel.electric_buffer_size = 0
            panel.active = false
            panel.custom_status = {
                diode = defines.entity_status_diode.red,
                label = { (panel.name == "anti-solar") and "entity-status.requires-moonlight" or "entity-status.requires-sunlight" }
            }
        else
            panel.power_production = panel.prototype.get_max_energy_production() * daylight * panel.surface.solar_power_multiplier
            panel.electric_buffer_size = panel.power_production
            panel.active = true
            panel.custom_status = nil
        end
    end

    if next(storage.unsynced_solarpanels) then
        Solar.sync_solarpanels()
    end
end

Solar.events.on_built = function(event)
    local entity = event.entity
    if not Solar.animated_solarpanels[entity.name] then return end
    storage.solarpanels[entity.unit_number] = entity
    storage.unsynced_solarpanels[entity.unit_number] = entity
    entity.operable = false
end

Solar.events.on_destroyed = function(event)
    local entity = event.entity
    if not Solar.animated_solarpanels[entity.name] then return end
    storage.solarpanels[entity.unit_number] = nil
    storage.unsynced_solarpanels[entity.unit_number] = nil
end
