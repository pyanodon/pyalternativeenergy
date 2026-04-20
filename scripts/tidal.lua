Tidal = {}
Tidal.events = {}

py.on_event(py.events.on_init(), function()
    storage.tidal_plants = storage.tidal_plants or {}
    for _, planet in pairs(game.planets) do
        -- reset properties
        if planet.surface then
            planet.surface.set_property("py-tide-height-variance", planet.prototype.surface_properties["py-tide-height-variance"] or planet.surface.get_property("py-tide-height-variance"))
            planet.surface.set_property("py-tide-height-min", planet.prototype.surface_properties["py-tide-height-min"] or planet.surface.get_property("py-tide-height-min"))
            planet.surface.set_property("py-tide-height-max", planet.prototype.surface_properties["py-tide-height-max"] or planet.surface.get_property("py-tide-height-max"))
        end
    end
end)

local animations = {
  [defines.direction.north] = "tidal-animation-north",
  [defines.direction.east] = "tidal-animation-east",
  [defines.direction.south] = "tidal-animation-south",
  [defines.direction.west] = "tidal-animation-west",
}

py.on_event(defines.events.on_script_trigger_effect, function(event)
    local effect_id = event.effect_id
    if effect_id ~= "on_built_hydro" then return end
    local entity = event.target_entity

    entity.operable = false
    entity.rotatable = false

    rendering.draw_animation{
      animation = animations[entity.direction],
      target = entity,
      surface = entity.surface,
      render_layer = "object"
    }

    local solar_panel = entity.surface.create_entity {
        name = entity.name .. "-solar",
        position = entity.position,
        force = entity.force_index,
        quality = entity.quality,
    }

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

-- triple sine wave out of sync, clamped [0, 1]
local sin = math.sin
local pi = math.pi
function Tidal.calculate_tide_height(variance)
    local x = game.tick / 30000 * variance
    return (sin(2 * x) + 1 / 2 + sin(3 * pi * x) + sin(9 * pi * x)) / 6 + 0.5
end

Tidal.events[83] = function()
    for _, surface in pairs(game.surfaces) do
        -- tide height calculations
        local variance = surface.get_property("py-tide-height-variance")
        -- skip surfaces that do not change
        if variance ~= 0 then
            local min_height = surface.get_property("py-tide-height-min")
            local max_height = surface.get_property("py-tide-height-max")
            local tide_height = Tidal.calculate_tide_height(variance) * (max_height - min_height) + min_height -- adjusted to [min, max]
            surface.set_property("py-tide-height", tide_height)
        end
    end
end
