Solar = {}
Solar.events = {}

Solar.animated_solarpanels = {
	['anti-solar'] = true,
	['solar-panel-mk02'] = true,
	['solar-panel-mk03'] = true
}

Solar.events.on_init = function()
	global.solarpanels = global.solarpanels or {}
	global.unsynced_solarpanels = global.solarpanels or {}
end

Solar.sync_solarpanels = function()
	local new = {}
	for _, panel in pairs(global.unsynced_solarpanels) do
		local surface = panel.surface
		local time = surface.daytime
		if surface.morning <= time and time < (surface.morning + 100 / surface.ticks_per_day) then
			local new_panel = surface.create_entity{
				name = panel.name,
				force = panel.force,
				position = panel.position,
				player = panel.last_user,
				create_build_effect_smoke = false
			}
			new_panel.operable = false
			global.solarpanels[panel.unit_number] = nil
			global.solarpanels[new_panel.unit_number] = new_panel
			panel.destroy()
		else
			new[panel.unit_number] = panel
		end
	end
	global.unsynced_solarpanels = new
end

Solar.events[100] = function()
	for _, panel in pairs(global.solarpanels) do
		local daylight = Thermosolar.calc_daylight(panel.surface)
		if panel.name == 'anti-solar' then daylight = 1 - daylight end

		if daylight == 0 then
			panel.power_production = 0
			panel.electric_buffer_size = 0
			panel.active = false
		else
			panel.power_production = panel.prototype.max_energy_production * daylight * panel.surface.solar_power_multiplier
			panel.electric_buffer_size = panel.power_production
			panel.active = true
		end
	end

	if next(global.unsynced_solarpanels) then
		Solar.sync_solarpanels()
	end
end

Solar.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if not Solar.animated_solarpanels[entity.name] then return end
	global.solarpanels[entity.unit_number] = entity
	global.unsynced_solarpanels[entity.unit_number] = entity
	entity.operable = false
end

Solar.events.on_destroyed = function(event)
	local entity = event.created_entity or event.entity
	if not Solar.animated_solarpanels[entity.name] then return end
	global.solarpanels[entity.unit_number] = nil
	global.unsynced_solarpanels[entity.unit_number] = nil
end