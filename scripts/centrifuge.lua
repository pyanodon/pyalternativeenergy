local Centrifuge = {}
Centrifuge.events = {}
---@type table<int, {[1]: int, [2]: LuaEntity}>
Centrifuge.building_speeds = {}

local step_values = {1, 2, 4, 6, 8}
local speed_names = {'low', 'medium', 'high', 'ultrahigh'}

---@param dict {[1]: int, [2]: LuaEntity}
local function update_speed(dict)
	local inventory = dict[2].get_module_inventory() --[[@as LuaInventory]]
	inventory.clear()
    local tiers = {1, 2, nil, 3, 4}
    local tier = tiers[dict[1] % 5 + 1]
    if tier then inventory.insert{name='centrifuge-speed-' .. tier, count=1} end
end

Centrifuge.events.on_built = function(event)
    local entity = event.created_entity or event.entity --[[@as LuaEntity]]
    if not entity.valid or not string.find(entity.name, 'centrifuge%-mk0') then return end
    local tags = event.tags --[[@as Tags]]
    local bacon = entity.surface.create_entity{
        name='hidden-beacon-turd',
        position=entity.position,
        force=entity.force,
    }
    local tier = tonumber(string.sub(entity.name, string.find(entity.name, '0%d')))
    Centrifuge.building_speeds[entity.unit_number] = {(tags and tags.speed) or (-3 + 5 * tier), bacon}
    update_speed(Centrifuge.building_speeds[entity.unit_number])
end

Centrifuge.events.on_destroyed = function(event)
    local entity = event.created_entity or event.entity --[[@as LuaEntity]]
    if not entity.valid or not string.find(entity.name, 'centrifuge%-mk0') then return end
    Centrifuge.building_speeds[entity.unit_number][2].destroy()
    Centrifuge.building_speeds[entity.unit_number] = nil
end

Centrifuge.events.on_player_setup_blueprint = function(event)
    local modified_entities = {}
    for id, entry in pairs(event.mapping.get()) do
        if Centrifuge.building_speeds[entry.unit_number] then
            modified_entities[id] = Centrifuge.building_speeds[entry.unit_number][1]
        end
    end
    local player = game.get_player(event.player_index)
    if not player then return end
    local blueprint = player.cursor_stack
    if not blueprint or not blueprint.valid_for_read then return end
    local entities = blueprint.get_blueprint_entities()
    if not entities then return end
    for _, entity in pairs(entities) do
        if modified_entities[entity.entity_number] then
            blueprint.set_blueprint_entity_tag(entity.entity_number, 'speed', modified_entities[entity.entity_number])
        end
    end
end

---@param building_speed number
---@return string
local function rpm_to_str(building_speed)
    local num = step_values[building_speed % 5 + 1] * 10 ^ (3 + math.floor(building_speed / 5))
    local suffixes = {'', 'k', 'M'}
    for _, suffix in pairs(suffixes) do
        if num / 1000 >= 1 then
            num = num / 1000
        else
            return num .. suffix
        end
    end
    return num .. 'G'
end

---@param building_speed string
---@return number | nil
local function str_to_rpm(building_speed)
    local pattern = '[12468]0*[kmgKMG]?'
    if not string.find(building_speed, pattern) then return end
    local suffixes = {['k']=0, ['M']=1, ['G']=2} --can't input letters into the box but i made it already so it stays
    local steps = {['1']=1, ['2']=2, ['4']=3, ['6']=4, ['8']=5}
    local num = 0
    num = num + steps[string.sub(building_speed, 1, 1)] + string.len(string.match(building_speed, '0+') or '') * 5
    local suffix = string.sub(building_speed, -1)
    if suffixes[suffix] then
        num = num + suffixes[suffix] * 15
    end
    return num
end

Centrifuge.events.on_gui_opened = function(event)
    if event.gui_type ~= defines.gui_type.entity then return end
    local entity = event.entity --[[@as LuaEntity]]
    if not string.find(entity.name, 'centrifuge%-mk0') then return end
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    if player.gui.relative.Speed then
        player.gui.relative.Speed.destroy()
    end

    local dial = player.gui.relative.add{
        type = 'frame',
        name = 'Speed',
        anchor = {
            gui = defines.relative_gui_type.assembling_machine_select_recipe_gui,
            position = defines.relative_gui_position.right
        },
        direction = 'vertical',
        caption = 'Rotation speed (RPM)'
    }
    local speed = dial.add{type = 'flow', name = 'speed_flow'}
    local building_speed = Centrifuge.building_speeds[entity.unit_number][1] or 2
    speed.style.vertical_align = 'center'
    speed.add{type = 'label', name = 'speed_label'}
    speed.add{
        type = 'slider',
        name = 'speed',
        minimum_value = 0,
        maximum_value = #step_values * entity.name:match('%d+') - 1,
        value = building_speed,
        discrete_slider = true,
    }
    speed.add{
        type = 'textfield',
        name = 'speed_num',
        text = rpm_to_str(building_speed),
        numeric = true,
        lose_focus_on_confirm = true,
    }.style.maximal_width = 50

    dial.add{type = 'button', name = 'py_centrifuge_confirm', caption = 'CONFIRM'}
end

gui_events[defines.events.on_gui_value_changed]['speed'] = function(event)
    local speed = event.element
    speed.parent.speed_num.text = rpm_to_str(speed.slider_value)
end

gui_events[defines.events.on_gui_text_changed]['speed_num'] = function(event)
    local speed = event.element
    local speed_number = str_to_rpm(speed.text)
    if speed_number then speed.parent.speed.slider_value = speed_number end
end

gui_events[defines.events.on_gui_click]['py_centrifuge_confirm'] = function(event)
    if event.element.name ~= 'py_centrifuge_confirm' then return end

    local gui = event.element.parent
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local centrifuge = player.opened --[[@as LuaEntity]]
    if not centrifuge then return end
    local speed = gui.speed_flow.speed.slider_value
    local speed_name = speed_names[math.floor(speed / 5)+1]
    local building_data = Centrifuge.building_speeds[centrifuge.unit_number --[[@as int]]]
    building_data[1] = speed
    update_speed(building_data)
    if not string.find(centrifuge.name, '-' .. speed_name) then
        new_centrifuge = centrifuge.surface.create_entity{
            name = string.sub(centrifuge.name, 1, 16) .. speed_name,
            position = centrifuge.position,
            force = centrifuge.force_index,
            create_build_effect_smoke = false
        }
        Centrifuge.building_speeds[new_centrifuge.unit_number] = building_data
        centrifuge.destroy()
    end
end

return Centrifuge