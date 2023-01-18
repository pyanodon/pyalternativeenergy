Wind = {}
Wind.events = {}

local variation = require 'variation'

Wind.events.on_built = function(event)
	local entity = event.created_entity or event.entity
    if not entity.valid or entity.type ~= 'electric-energy-interface' then return end
	local turbine_type, mk = string.match(entity.name, ('^(%a+)%-turbine%-(mk%d+)'))
	if not turbine_type then return end
    local surface = entity.surface
	local base_name = turbine_type .. '-turbine-' .. mk

	local collision = surface.create_entity{
		name = base_name .. '-collision',
		position = entity.position,
		force = entity.force,
		create_build_effect_smoke = false,
	}

    local windmill_data = {entity = entity, base_name = base_name, collision = collision, turbine_type = turbine_type}
	global.windmill[entity.unit_number] = windmill_data

	if turbine_type == 'multiblade' or turbine_type == 'hawt' then
		local direction = Wind.calculate_wind_direction(game.surfaces['nauvis'])
		Wind.draw_windmill(windmill_data, direction)
    else
        Wind.update_power_generation(windmill_data, Wind.calculate_wind_speed())
    end
end

Wind.events.on_destroyed = function(event)
	local entity = event.entity
    if not entity.valid or entity.type ~= 'electric-energy-interface' then return end
	local windmill_data = global.windmill[entity.unit_number]
	if not windmill_data then return end

	local collision = windmill_data.collision
	if collision.valid then collision.destroy() end

	global.windmill[entity.unit_number] = nil
end

Wind.events.on_init = function(event)
	global.windmill = global.windmill or {}
end

function Wind.draw_windmill(windmill_data, direction)
    local animation_name = windmill_data.base_name .. direction
	local entity = windmill_data.entity
    if entity.name == animation_name then return end

    local new_mill = entity.surface.create_entity{
        name = animation_name,
        position = entity.position,
        force = entity.force,
        create_build_effect_smoke = false
    }
	windmill_data.entity = new_mill
    global.windmill[new_mill.unit_number] = windmill_data
    global.windmill[entity.unit_number] = nil
    Wind.update_power_generation(windmill_data, Wind.calculate_wind_speed())

    entity.destroy()
end

function Wind.calculate_wind_direction(surface)
    local wind_dir = surface.wind_orientation
    local dir = '-north'
    if wind_dir > 0.0625 and wind_dir <= 0.1875 then
        dir = '-northeast'
    elseif wind_dir > 0.1875 and wind_dir <= 0.3125 then
        dir = '-east'
    elseif wind_dir > 0.3125 and wind_dir <= 0.4375 then
        dir = '-southeast'
    elseif wind_dir > 0.4375 and wind_dir <= 0.5625 then
        dir = '-south'
    elseif wind_dir > 0.5625 and wind_dir <= 0.6875 then
        dir = '-southwest'
    elseif wind_dir > 0.6875 and wind_dir <= 0.8125 then
        dir = '-west'
    elseif wind_dir > 0.8125 and wind_dir <= 0.9375 then
        dir = '-northwest'
    end
    return dir
end

local sin = math.sin
local pi = math.pi
function Wind.calculate_wind_speed()
    local x = game.tick / 10000
    return (sin(2 * x) + sin(pi * x)) / 2
end

function Wind.update_power_generation(windmill_data, wind_speed)
    local entity = windmill_data.entity
    local power_output = entity.prototype.max_energy_production * (1 + variation[windmill_data.base_name] * wind_speed)
    entity.power_production = power_output
    entity.electric_buffer_size = power_output
end

local animated_wind_turbines = {
	['hawt'] = true,
	['multiblade'] = true
}

Wind.events[501] = function()
    local direction = Wind.calculate_wind_direction(game.surfaces['nauvis'])

    local copy = {}
    for k, windmill_data in pairs(global.windmill) do
		if animated_wind_turbines[windmill_data.turbine_type] then
			copy[k] = windmill_data
		end
	end

    for _, windmill_data in pairs(copy) do
        Wind.draw_windmill(windmill_data, direction)
    end
end

Wind.events[123] = function()
    local wind_speed = Wind.calculate_wind_speed()

	for _, windmill_data in pairs(global.windmill) do
		if windmill_data.entity.valid then
            Wind.update_power_generation(windmill_data, wind_speed)
        end
    end
end