-- This file locks the rotation of the antimony drill to either the east or west orientations
-- This exists becuase the entity graphics are incompatible with pipe connections to the north or south.

local allowed_directions = {
    [defines.direction.east] = defines.direction.west,
    [defines.direction.west] = defines.direction.east,
}

local antimony_drills = {
    ["antimony-drill-mk01"] = true,
    ["antimony-drill-mk02"] = true,
    ["antimony-drill-mk03"] = true,
    ["antimony-drill-mk04"] = true,
}

local function rotate_antimony_drill(entity)
    local direction = entity.direction
    if allowed_directions[direction] then return end

    while not allowed_directions[direction] do
        direction = (direction + 1) % 16
    end

    entity.direction = direction
end

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if not entity.valid then return end
    if not antimony_drills[entity.name] then return end
    rotate_antimony_drill(entity)
end)

py.on_event(defines.events.on_player_rotated_entity, function(event)
    local entity = event.entity
    if not entity.valid then return end
    if not antimony_drills[entity.name] then return end
    
    local direction = entity.direction
    local previous_direction = event.previous_direction

    if allowed_directions[direction] then
        -- The player has rotated an antimony drill to a valid direction. No action needed.
        return
    end

    if allowed_directions[previous_direction] and not allowed_directions[direction] then
        -- The player has rotated an antimony drill. Swap it between the two valid directions.
        local new_rotation = allowed_directions[previous_direction]
        entity.direction = new_rotation
        return
    end

    -- Edge case: The player has rotated an antimony drill however we do not know the direction of rotation.
    -- We will rotate the drill to the nearest valid direction.
    rotate_antimony_drill(entity)
end)
