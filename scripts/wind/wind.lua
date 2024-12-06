Wind = {}
Wind.events = {}

local managed_turbines = {}
local base_names = {}
for turbine, type in pairs {
    ["hawt-turbine-mk01"] = "hawt",
    ["hawt-turbine-mk02"] = "hawt",
    ["hawt-turbine-mk03"] = "hawt",
    ["hawt-turbine-mk04"] = "hawt",
    ["vawt-turbine-mk01"] = "vawt",
    ["vawt-turbine-mk02"] = "vawt",
    ["vawt-turbine-mk03"] = "vawt",
    ["vawt-turbine-mk04"] = "vawt",
    ["multiblade-turbine-mk01"] = "multiblade",
    ["multiblade-turbine-mk03"] = "multiblade"
} do
    managed_turbines[turbine] = type
    managed_turbines[turbine .. "-blank"] = type
    base_names[turbine] = turbine
    base_names[turbine .. "-blank"] = turbine
end

local animated_turbines = {
    ["hawt"] = true,
    ["multiblade"] = true
}

local variation = require "scripts.wind.variation"
-- TODO check animation changes
local draw_animation = rendering.draw_animation

local function seconds(n)
    return 60 * n
end

Wind.events.on_built = function(event)
    local entity = event.entity
    local turbine_type = entity.valid and managed_turbines[entity.name]
    if not turbine_type then return end

    -- Invisible collision entity prevents nearby turbine placement
    local collision = entity.surface.create_entity {
        name = base_names[entity.name] .. "-collision",
        position = entity.position,
        force = entity.force,
        create_build_effect_smoke = false,
    }
    -- Already removed or cancelled
    if not collision or not collision.valid then
        if not entity or not entity.valid then
            return
        end

        local inserted = 0
        local player_index = event.player_index
        local surface = entity.surface
        local position = entity.position
        local item_to_place = entity.prototype.items_to_place_this[1]

        -- Try to return to the player, if possible
        if player_index then
            local player = game.get_player(player_index)
            if not player then
                -- continue
            elseif player.mine_entity(entity, false) then
                inserted = 1
            elseif item_to_place then
                inserted = player.insert(item_to_place)
            end
        end

        -- Otherwise just spill it
        if inserted == 0 and item_to_place then
            surface.spill_item_stack {position = position, stack = item_to_place, enable_looted = true, force = entity.force_index, allow_belts = false}
        end

        local tick = game.tick
        local last_message = storage._last_cancel_creation_message or 0
        if last_message + seconds(1) < tick then
            local cant_build_message = {
                text = {
                    "cant-build-reason.entity-in-the-way",
                    (storage._last_failed_airspace or "")
                },
                position = position,
                create_at_cursor = not not player_index
            }
            if player_index then
                game.get_player(player_index).create_local_flying_text(cant_build_message)
            else
                for _, player in pairs(game.connected_players) do
                    player.create_local_flying_text(cant_build_message)
                end
            end

            storage._last_cancel_creation_message = game.tick
        end

        entity.destroy()
        return
    end
    collision.destructible = false

    local entry = {
        entity = entity,
        base_name = base_names[entity.name],
        collision = collision,
        turbine_type = turbine_type
    }

    -- Animated turbines are destroyed and replaced with a base graphic
    if animated_turbines[turbine_type] then
        local replacement_entity = entity.surface.create_entity {
            name = base_names[entity.name] .. "-blank",
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false,
            player = entity.last_user
        }
        entity.destroy()
        entry.entity = replacement_entity
        Wind.draw_windmill(entry, Wind.calculate_wind_direction(game.surfaces["nauvis"]))
    end

    storage.windmill[entry.entity.unit_number] = entry
    Wind.update_power_generation(entry, Wind.calculate_wind_speed())
end

local function positions_equal(position_a, position_b)
    if position_a.x ~= position_b.x then
        return false
    end
    if position_a.y ~= position_b.y then
        return false
    end
    return true
end

Wind.events.on_script_trigger_effect = function(event)
    if event.effect_id ~= "turbine-area" then
        return
    end
    local source = event.source_entity
    if not source or not source.valid then
        return
    end
    local target = event.target_entity
    if not target or not target.valid then
        return
    end

    if managed_turbines[target.name] and not positions_equal(target.position, source.position) then
        storage._last_failed_airspace = target.localised_name or ("entity-name." .. target.name)
        local surface = target.surface
        local source_box, target_box = source.bounding_box, target.bounding_box
        local ttl = seconds(3)
        rendering.draw_rectangle {
            color = {255, 255, 0},
            width = 4,
            left_top = source_box.left_top,
            right_bottom = source_box.right_bottom,
            surface = surface,
            time_to_live = ttl
        }
        rendering.draw_text {
            text = "!",
            color = {255, 0, 0},
            scale = 3,
            scale_with_zoom = true,
            surface = surface,
            target = target,
            time_to_live = ttl
        }
        rendering.draw_rectangle {
            color = {255, 0, 0},
            width = 4,
            left_top = target_box.left_top,
            right_bottom = target_box.right_bottom,
            surface = surface,
            time_to_live = ttl
        }
        source.destroy()
    end
end

Wind.events.on_destroyed = function(event)
    local entity = event.entity
    if not managed_turbines[entity.name] then return end
    local entry = storage.windmill[entity.unit_number]
    _ = entry and entry.collision and entry.collision.valid and entry.collision.destroy()
    storage.windmill[entity.unit_number] = nil
end

py.on_event(py.events.on_init(), function(event)
    storage.windmill = storage.windmill or {}
end)

function Wind.draw_windmill(windmill_data, direction)
    local anim_id = windmill_data.anim_id
    if not anim_id then
        anim_id = draw_animation {
            animation = windmill_data.base_name .. direction,
            surface = windmill_data.entity.surface,
            target = windmill_data.entity,
            render_layer = "higher-object-above"
        }.id
        windmill_data.anim_id = anim_id
    elseif windmill_data.direction ~= direction then
        -- set_animation(anim_id, windmill_data.base_name .. direction)
        windmill_data.direction = direction
    end
end

function Wind.calculate_wind_direction(surface)
    local wind_dir = surface.wind_orientation
    if wind_dir > 0.0625 and wind_dir <= 0.1875 then
        return "-northeast"
    elseif wind_dir > 0.1875 and wind_dir <= 0.3125 then
        return "-east"
    elseif wind_dir > 0.3125 and wind_dir <= 0.4375 then
        return "-southeast"
    elseif wind_dir > 0.4375 and wind_dir <= 0.5625 then
        return "-south"
    elseif wind_dir > 0.5625 and wind_dir <= 0.6875 then
        return "-southwest"
    elseif wind_dir > 0.6875 and wind_dir <= 0.8125 then
        return "-west"
    elseif wind_dir > 0.8125 and wind_dir <= 0.9375 then
        return "-northwest"
    else
        return "-north"
    end
end

local sin = math.sin
local pi = math.pi
function Wind.calculate_wind_speed()
    local x = game.tick / 10000
    return (sin(2 * x) + sin(pi * x)) / 2
end

-- TODO: Not 100% certain how to pass around entities here so hard coding this for now
local wind_energy_production = {
    ["hawt-turbine-mk01"] = 5 * 1000 * 1000, -- 5MW
    ["hawt-turbine-mk02"] = 25 * 1000 * 1000, -- 25MW
    ["hawt-turbine-mk03"] = 50 * 1000 * 1000, -- 50MW
    ["hawt-turbine-mk04"] = 80 * 1000 * 1000, -- 80MW
    ["vawt-turbine-mk01"] = 4 * 1000 * 1000, -- 4MW
    ["vawt-turbine-mk02"] = 20 * 1000 * 1000, -- 20MW
    ["vawt-turbine-mk03"] = 50 * 1000 * 1000, -- 50MW
    ["vawt-turbine-mk04"] = 85 * 1000 * 1000, -- 85MW
    ["multiblade-turbine-mk01"] = 550 * 1000, -- 550kW
    ["multiblade-turbine-mk03"] = 34 * 1000 * 1000  -- 34MW
}

for name, variance in variation do
    local power = wind_energy_production[name]
    Turbines.lookup[name] = {
        power = function(count)
            return count * power * (1 + variance * Wind.calculate_wind_speed())
        end,
        interface_name = name .. "-interface"
    }
end

Wind.events[61] = function()
    local wind_speed = Wind.calculate_wind_speed()
    local direction = Wind.calculate_wind_direction(game.surfaces["nauvis"])

    -- TODO: Couldn't figure out an easy way to batch this so didn't
    for network_id, name_to_interface in storage.turbines.interfaces do
        local network_counts = storage.turbines.turbine_counts[network_id]
        if network_counts then
            for name, _ in wind_energy_production do
                local interface = name_to_interface[name]
                local count = network_counts[name]
                if interface and count then
                    local total = Turbines.lookup[name].power(count)
                    interface.power_production = total
                    interface.electric_buffer_size = total
                end
            end
        end
    end

    local key, details = storage.last_windmill, nil
    local max_iter = 0
    repeat
        max_iter = max_iter + 1
        key, details = next(storage.windmill, key)
        -- Empty table or end of list
        if not key or not details then
            break
        end
        if details.entity.valid then
            if animated_turbines[details.turbine_type] then
                Wind.draw_windmill(details, direction)
            end
        else
            _ = details.collision.valid and details.collision.destroy()
            if details.anim_id then
                local animation = rendering.get_object_by_id(details.anim_id)
                if animation then animation.destroy() end
            end
            storage.windmill[key] = nil
        end
    until max_iter > 101
    storage.last_windmill = key
end

--TODO: Need to handle GUI updates now that we don't have individual interfaces
