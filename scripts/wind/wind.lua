Wind = {}
Wind.events = {}

local managed_turbines = {}
local base_names = {}
for turbine, type in pairs({
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
}) do
    managed_turbines[turbine] = type
    managed_turbines[turbine .. "-blank"] = type
    base_names[turbine] = turbine
    base_names[turbine .. "-blank"] = turbine
end

local animated_turbines = {
    ["hawt"] = true,
    ["multiblade"] = true
}

local variation = require("scripts.wind.variation")
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
    local collision = entity.surface.create_entity({
        name = base_names[entity.name] .. "-collision",
        position = entity.position,
        force = entity.force,
        create_build_effect_smoke = false,
    })
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
            surface.spill_item_stack({ position = position, stack = item_to_place, enable_looted = true, force = entity.force_index, allow_belts = false })
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
        local replacement_entity = entity.surface.create_entity({
            name = base_names[entity.name] .. "-blank",
            position = entity.position,
            force = entity.force,
            create_build_effect_smoke = false,
            player = entity.last_user
        })
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
        rendering.draw_rectangle({
            color = { 255, 255, 0 },
            width = 4,
            left_top = source_box.left_top,
            right_bottom = source_box.right_bottom,
            surface = surface,
            time_to_live = ttl
        })
        rendering.draw_text({
            text = "!",
            color = { 255, 0, 0 },
            scale = 3,
            scale_with_zoom = true,
            surface = surface,
            target = target,
            time_to_live = ttl
        })
        rendering.draw_rectangle({
            color = { 255, 0, 0 },
            width = 4,
            left_top = target_box.left_top,
            right_bottom = target_box.right_bottom,
            surface = surface,
            time_to_live = ttl
        })
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
        windmill_data.anim_id = draw_animation({
            animation = windmill_data.base_name .. direction,
            surface = windmill_data.entity.surface,
            target = windmill_data.entity,
            render_layer = "higher-object-above"
        }).id
    elseif windmill_data.direction ~= direction then
        windmill_data.direction = direction
        local animation = rendering.get_object_by_id(windmill_data.anim_id)
        if animation then animation.destroy() end
        windmill_data.anim_id = draw_animation({
            animation = windmill_data.base_name .. direction,
            surface = windmill_data.entity.surface,
            target = windmill_data.entity,
            render_layer = "higher-object-above"
        }).id
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

function Wind.update_power_generation(windmill_data, wind_speed)
    local entity = windmill_data.entity
    local power_output = entity.prototype.get_max_energy_production() * (1 + variation[windmill_data.base_name] * wind_speed)
    entity.power_production = power_output
    entity.electric_buffer_size = power_output
end

Wind.events[61] = function()
    local wind_speed = Wind.calculate_wind_speed()
    local direction = Wind.calculate_wind_direction(game.surfaces["nauvis"])

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
            Wind.update_power_generation(details, wind_speed)
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
