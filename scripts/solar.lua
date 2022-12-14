Solar = {}
Solar.events = {}

Solar.animated_solarpanels = {
	['anti-solar'] = true,
	['solar-panel-mk02'] = true,
	['solar-panel-mk03'] = true
}

Solar.events.on_init = function()
	global.solarpanels = global.solarpanels or {}
end

Solar.events[61] = function()
	local daylight
	for _, panel in pairs(global.solarpanels) do
		daylight = daylight or Thermosolar.calc_daylight(panel.surface)
		if panel.name == 'anti-solar' then daylight = 1 - daylight end

		if daylight == 0 then
			panel.power_production = 0
			panel.electric_buffer_size = 0
			panel.active = false
		else
			panel.power_production = panel.prototype.max_energy_production * daylight * panel.surface.solar_power_multiplier
			panel.electric_buffer_size = panel.power_production * 60
			panel.active = true
		end
	end
end

Solar.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if Solar.animated_solarpanels[entity.name] then
		global.solarpanels[entity.unit_number] = entity
	end
end

Solar.events.on_destroyed = function(event)
	global.solarpanels[event.entity.unit_number] = nil
end