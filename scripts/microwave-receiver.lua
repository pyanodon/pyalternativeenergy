Microwave_Receiver = {}
Microwave_Receiver.events = {}

Microwave_Receiver.max_satellites_per_receiver = 20
Microwave_Receiver.power_production_per_satellite = 80000

local Table = require('__stdlib__/stdlib/utils/table')
local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Microwave_Receiver.events.on_init = function()
	global.microwave_receivers = global.microwave_receivers or {}
end

function Microwave_Receiver.recalc_satellite_distribution(force)
	local total_launched = force.get_item_launched('microwave-satellite')
	local total_receivers = 0
	for _, microwave_data in pairs(global.microwave_receivers) do
		if microwave_data.force == force then total_receivers = total_receivers + 1 end
	end
	local average_satellites = math.min(Microwave_Receiver.max_satellites_per_receiver, math.ceil(total_launched / total_receivers))

	for _, microwave_data in pairs(global.microwave_receivers) do
		if total_launched >= average_satellites then
			microwave_data.allocated_satellites = average_satellites
			total_launched = total_launched - average_satellites
		else
			microwave_data.allocated_satellites = total_launched
			total_launched = 0
		end

		local entity = microwave_data.entity
		entity.power_production = microwave_data.allocated_satellites * Microwave_Receiver.power_production_per_satellite
		entity.electric_buffer_size = entity.power_production
	end

	for _, player in pairs(game.connected_players) do
		if player.force == force then
			local gui = player.gui.screen.microwave_receiver_gui
			if gui then Microwave_Receiver.update_gui(gui) end
		end
	end
end

Microwave_Receiver.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if entity.name ~= 'microwave-receiver' then return end
	global.microwave_receivers[entity.unit_number] = {unit_number = entity.unit_number, entity = entity, allocated_satellites = 0, force = entity.force}
	Microwave_Receiver.recalc_satellite_distribution(entity.force)
end

Microwave_Receiver.events.on_destroyed = function(event)
	local entity = event.entity
	if entity.name ~= 'microwave-receiver' then return end
	global.microwave_receivers[entity.unit_number] = nil
	Microwave_Receiver.recalc_satellite_distribution(entity.force)
end

Microwave_Receiver.events.on_rocket_launched = function(event)
	Microwave_Receiver.recalc_satellite_distribution(event.rocket.force)
end

Microwave_Receiver.events.on_gui_opened = function(event)
	local player = game.get_player(event.player_index)
	local entity = event.entity
	if event.gui_type ~= defines.gui_type.entity or entity.name ~= 'microwave-receiver' then return end

	local main_frame = player.gui.screen.add{type = 'frame', name = 'microwave_receiver_gui', caption = entity.prototype.localised_name, direction = 'vertical'}
	main_frame.style.width = 340
	main_frame.tags = {unit_number = entity.unit_number, force = player.force.name}
	main_frame.auto_center = true
	player.opened = main_frame

	local content_frame = main_frame.add{type = 'frame', name = 'content_frame', direction = 'vertical', style = 'inside_shallow_frame_with_padding'}
	local content_flow = content_frame.add{type = 'flow', name = 'content_flow', direction = 'vertical'}
	content_flow.style.vertical_spacing = 8
	content_flow.style.margin = {-4, 0, -4, 0}
	content_flow.style.vertical_align = 'center'

	local camera_frame = content_flow.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = {entity.position.x, entity.position.y - 2}, surface_index = entity.surface.index}
	camera.visible = true
	camera.style.height = 180
	camera.zoom = 0.5

	content_flow.add{type = 'progressbar', name = 'progressbar', style = 'electric_satisfaction_statistics_progressbar'}.style.horizontally_stretchable = true

	content_flow.add{type = 'line'}

	content_flow.add{type = 'label', name = 'total_launched'}
	content_flow.add{type = 'label', name = 'total_built'}

	Microwave_Receiver.update_gui(main_frame)
end

Microwave_Receiver.events.on_gui_closed = function(event)
	local player = game.get_player(event.player_index)
	if (event.gui_type or player.opened_gui_type) == defines.gui_type.custom then
		local gui = player.gui.screen.microwave_receiver_gui
		if gui then gui.destroy() end
	end
end

function Microwave_Receiver.update_gui(gui)
	local force = game.forces[gui.tags.force]
	if not force or not force.valid then return end
	local microwave_data = global.microwave_receivers[gui.tags.unit_number]
	if not microwave_data then gui.destroy(); return end
	local content_flow = gui.content_frame.content_flow

	content_flow.progressbar.value = microwave_data.allocated_satellites / Microwave_Receiver.max_satellites_per_receiver
	content_flow.progressbar.caption = {
		'',
		microwave_data.allocated_satellites .. '/' .. Microwave_Receiver.max_satellites_per_receiver,
		'    ',
		FUN.format_energy(microwave_data.allocated_satellites * Microwave_Receiver.power_production_per_satellite, 'W')
	}
	content_flow.total_launched.caption = {'microwave-receiver-gui.launched-satellites', force.get_item_launched('microwave-satellite')}

	local total_built = 0
	for _, microwave_data in pairs(global.microwave_receivers) do
		if microwave_data.force == force then total_built = total_built + 1 end
	end
	content_flow.total_built.caption = {'microwave-receiver-gui.total-receivers', total_built}
end
