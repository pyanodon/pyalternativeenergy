Wind = {}
Wind.events = {}

local animated_wind_turbines = {
	['hawt'] = true,
	['multiblade'] = true
}

local variation = require 'variation'
local draw_animation = rendering.draw_animation
local set_animation = rendering.set_animation
local valid_anim = rendering.is_valid
local set_animation_speed = rendering.set_animation_speed

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

    local windmill_data = {
        entity = entity,
        base_name = base_name,
        collision = collision,
        turbine_type = turbine_type
    }

    local wind_speed = Wind.calculate_wind_speed()
	if animated_wind_turbines[turbine_type] then
        -- Destroy and replace with turbine-less base
        local new_entity = entity.surface.create_entity{
            name = base_name .. '-blank',
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false
        }
        entity.destroy()
        -- Update our entry
        windmill_data.entity = new_entity
        global.windmill[new_entity.unit_number] = windmill_data
		local direction = Wind.calculate_wind_direction(game.surfaces['nauvis'])
		Wind.draw_windmill(windmill_data, direction, wind_speed)
    else
        global.windmill[entity.unit_number] = windmill_data
    end
    Wind.update_power_generation(windmill_data, wind_speed)
end

Wind.events.on_destroyed = function(event)
	local entity = event.entity
    if entity.type ~= 'electric-energy-interface' then return end
	local windmill_data = global.windmill[entity.unit_number]
	if not windmill_data then return end

	local collision = windmill_data.collision
	if collision.valid then collision.destroy() end

	global.windmill[entity.unit_number] = nil
end

Wind.events.on_init = function(event)
	global.windmill = global.windmill or {}
    global.last_windmill = nil
end

function Wind.draw_windmill(windmill_data, direction, wind_speed)
    local anim_id = windmill_data.anim_id
    local new_anim = windmill_data.base_name .. direction
    if not anim_id or not valid_anim(anim_id) then
        anim_id = draw_animation({
            animation = new_anim,
            surface = windmill_data.entity.surface,
            target = windmill_data.collision
        })
        windmill_data.anim_id = anim_id
    elseif windmill_data.direction ~= direction then
        set_animation(anim_id, new_anim)
        windmill_data.direction = direction
    end
    -- Update to follow the rough wind speed
    set_animation_speed(anim_id, math.abs(wind_speed))
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

Wind.events[61] = function()
    local wind_speed = Wind.calculate_wind_speed()
    local direction = Wind.calculate_wind_direction(game.surfaces['nauvis'])

    local key, details = global.last_windmill, nil
    local max_iter = 0
    repeat
        max_iter = max_iter + 1
        key, details = next(global.windmill, key)
        -- Empty table or end of list
        if not key or not details then
            break
        end
        if details.entity.valid then
            if animated_wind_turbines[details.turbine_type] then
                Wind.draw_windmill(details, direction, wind_speed)
            end
            Wind.update_power_generation(details, wind_speed)
        else
            _ = details.collision.valid and details.collision.destroy()
            _ = details.anim_id and rendering.destroy(details.anim_id)
            global.windmill[key] = nil
        end
    until max_iter > 101
    global.last_windmill = key
end