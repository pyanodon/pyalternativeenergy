py.on_event(defines.events.on_script_trigger_effect, function(event)
    local effect_id = event.effect_id
    if effect_id ~= "on_built_hydro" then return end
    local entity = event.target_entity

    entity.operable = false
    entity.rotatable = false
end)