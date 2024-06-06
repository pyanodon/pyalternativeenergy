Thermosolar = {}
Thermosolar.events = {}

Thermosolar.tower_range = 100

Thermosolar.events.on_init = function(event)
    global.solar_updraft_towers = global.solar_updraft_towers or {}
    global.tower_circles = global.tower_circles or {}
	global.heliostat_towers = global.heliostat_towers or {}
	local steam = game.fluid_prototypes['pressured-steam']
	local joules_per_unit = steam.heat_capacity * steam.max_temperature
	local mk04_max_output_in_w = game.entity_prototypes['steam-turbine-mk04'].fluid_usage_per_tick * joules_per_unit * 60
	global.heliostat_tower_max_power_output = Heliostat.mk04_turbines_supported_per_maxed_tower * mk04_max_output_in_w
	global.energy_per_heliostat = global.heliostat_tower_max_power_output / Heliostat.max_heliostats
end

local tower_circle_render_items = {
	['sut'] = true,
	['sut-panel'] = true,
	['solar-tower-building'] = true,
	['solar-tower-panel'] = true
}

local function draw_circle(tower_data)
	if not global.tower_circles[tower_data.unit_number] then
		global.tower_circles[tower_data.unit_number] = rendering.draw_circle{
			draw_on_ground = true, color = {r = 100, g = 53.3, b = 0, a = 0.5}, radius = Thermosolar.tower_range,
			target = tower_data.entity, filled = true, surface = tower_data.entity.surface
		}
	end
end

Thermosolar.events.on_player_cursor_stack_changed = function(event)
    for _, player in pairs(game.connected_players) do
        local stack = player.cursor_stack
        if stack and stack.valid_for_read and tower_circle_render_items[stack.name] then
            for _, tower_data in pairs(global.solar_updraft_towers) do
                draw_circle(tower_data)
            end
			for _, tower_data in pairs(global.heliostat_towers) do
                draw_circle(tower_data)
            end
            return
        end
    end

    for _, circle in pairs(global.tower_circles) do
        rendering.destroy(circle)
    end
    global.tower_circles = {}
end

function Thermosolar.calc_daylight(surface)
	local time = surface.daytime
	local day_start = surface.dawn
	local sunset_start = surface.dusk
	local night_start = surface.evening
	local sunrise_start = surface.morning

	local time_multiplier
	if day_start <= time or time < sunset_start then
		time_multiplier = 1
	elseif night_start <= time and time < sunrise_start then
		time_multiplier = 0
	elseif sunset_start <= time and time < night_start then
		time_multiplier = 1 + (sunset_start - time) * (1 / (night_start - sunset_start))
	elseif sunrise_start <= time and time < day_start then
		time_multiplier = 1 + (day_start - time) * (1 / (sunrise_start - day_start))
	end
	return time_multiplier
end

function Thermosolar.calc_average_daylight(surface)
	local day_start = surface.dawn
	local sunset_start = surface.dusk
	local night_start = surface.evening
	local sunrise_start = surface.morning

	local sunset_length = surface.ticks_per_day * (night_start - sunset_start)
	local night_length = surface.ticks_per_day * (sunrise_start - night_start)
	local sunrise_length = surface.ticks_per_day * (day_start - sunrise_start)
	local day_length = surface.ticks_per_day - sunset_length - night_length - sunrise_length

	return (day_length + sunset_length/2 + sunrise_length/2) / surface.ticks_per_day
end