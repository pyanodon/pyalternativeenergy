-- remove solar storage references
storage.solarpanels = nil
storage.unsynced_solarpanels = nil

-- tidal animations
storage.tidal_plants = storage.tidal_plants or {}

local animations = {
  [defines.direction.north] = "tidal-animation-north",
  [defines.direction.east] = "tidal-animation-east",
  [defines.direction.south] = "tidal-animation-south",
  [defines.direction.west] = "tidal-animation-west",
}

for _, surface in pairs(game.surfaces) do
    for _, entity in pairs(surface.find_entities_filtered {
        name = {"tidal-mk01", "tidal-mk02", "tidal-mk03", "tidal-mk04"},
    }) do
    rendering.draw_animation{
      animation = animations[entity.direction],
      target = entity,
      surface = entity.surface,
      render_layer = "object"
    }
    end
end
