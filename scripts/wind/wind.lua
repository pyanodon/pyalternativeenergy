Wind = {}
Wind.events = {}

local managed_turbines = {}
local base_names = {}
for turbine, type in pairs{
    ['hawt-turbine-mk01'] = 'hawt',
    ['hawt-turbine-mk02'] = 'hawt',
    ['hawt-turbine-mk03'] = 'hawt',
    ['hawt-turbine-mk04'] = 'hawt',
    ['vawt-turbine-mk01'] = 'vawt',
    ['vawt-turbine-mk02'] = 'vawt',
    ['vawt-turbine-mk03'] = 'vawt',
    ['vawt-turbine-mk04'] = 'vawt',
    ['multiblade-turbine-mk01'] = 'multiblade',
    ['multiblade-turbine-mk03'] = 'multiblade'
} do
    managed_turbines[turbine] = type
    managed_turbines[turbine..'-blank'] = type
    base_names[turbine] = turbine
    base_names[turbine..'-blank'] = turbine
end

local animated_turbines = {
    ['hawt'] = true,
    ['multiblade'] = true
}

local variation = require 'variation'
local draw_animation, set_animation, valid_animation, set_animation_speed = rendering.draw_animation, rendering.set_animation, rendering.is_valid, rendering.set_animation_speed

Wind.events.on_built = function(event)
    local entity = event.created_entity or event.entity
    local turbine_type = entity.valid and managed_turbines[entity.name]
    if not turbine_type then return end

    -- Invisible collision entity prevents nearby turbine placement
    local collision = entity.surface.create_entity{
        name = base_names[entity.name]..'-collision',
        position = entity.position,
        force = entity.force,
        create_build_effect_smoke = false,
    }
    collision.destructible = false

    local entry = {
        entity = entity,
        base_name = base_names[entity.name],
        collision = collision,
        turbine_type = turbine_type
    }

    -- Animated turbines are destroyed and replaced with a base graphic
    if animated_turbines[turbine_type] then
        local replacement_entity = entity.surface.create_entity{
            name = base_names[entity.name]..'-blank',
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false,
            player = entity.last_user
        }
        entity.destroy()
        entry.entity = replacement_entity
        Wind.draw_windmill(entry, Wind.calculate_wind_direction(game.surfaces['nauvis']))
    end

    global.windmill[entry.entity.unit_number] = entry
    Wind.update_power_generation(entry, Wind.calculate_wind_speed())
end

Wind.events.on_destroyed = function(event)
    local entity = event.entity
    if not managed_turbines[entity.name] then return end
    local entry = global.windmill[entity.unit_number]
    _ = entry and entry.collision and entry.collision.valid and entry.collision.destroy()
    global.windmill[entity.unit_number] = nil
end

Wind.events.on_init = function(event)
    global.windmill = global.windmill or {}
end

function Wind.draw_windmill(windmill_data, direction)
    local anim_id = windmill_data.anim_id
    if not anim_id or not valid_animation(anim_id) then
        anim_id = draw_animation({
            animation = windmill_data.base_name .. direction,
            surface = windmill_data.entity.surface,
            target = windmill_data.entity,
            render_layer = 'higher-object-above'
        })
        windmill_data.anim_id = anim_id
    elseif windmill_data.direction ~= direction then
        set_animation(anim_id, windmill_data.base_name .. direction)
        windmill_data.direction = direction
    end
end

function Wind.calculate_wind_direction(surface)
    local wind_dir = surface.wind_orientation
    if wind_dir > 0.0625 and wind_dir <= 0.1875 then
        return '-northeast'
    elseif wind_dir > 0.1875 and wind_dir <= 0.3125 then
        return '-east'
    elseif wind_dir > 0.3125 and wind_dir <= 0.4375 then
        return '-southeast'
    elseif wind_dir > 0.4375 and wind_dir <= 0.5625 then
        return '-south'
    elseif wind_dir > 0.5625 and wind_dir <= 0.6875 then
        return '-southwest'
    elseif wind_dir > 0.6875 and wind_dir <= 0.8125 then
        return '-west'
    elseif wind_dir > 0.8125 and wind_dir <= 0.9375 then
        return '-northwest'
    else
        return '-north'
    end
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
            if animated_turbines[details.turbine_type] then
                Wind.draw_windmill(details, direction)
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