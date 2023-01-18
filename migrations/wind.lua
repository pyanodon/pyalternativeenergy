if global.windmills then
	global.windmill = global.windmill or {}

	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities_filtered{
			name = {
				'hawt-turbine-mk01',
				'hawt-turbine-mk02',
				'hawt-turbine-mk03',
				'hawt-turbine-mk04',
				'vawt-turbine-mk01',
				'vawt-turbine-mk02',
				'vawt-turbine-mk03',
				'vawt-turbine-mk04',
				'multiblade-turbine-mk01',
				'multiblade-turbine-mk03'
			}
		}) do
			local parameters = {
				name = entity.name,
				position = entity.position,
				force = entity.force,
				create_build_effect_smoke = false
			}
			entity.destroy()
			Wind.events.on_built{entity = surface.create_entity(parameters)}
		end
	end
	global.windmills = nil
end