local shared = {}

function shared.calc_daylight(surface)
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

function shared.calc_average_daylight(surface)
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

return shared