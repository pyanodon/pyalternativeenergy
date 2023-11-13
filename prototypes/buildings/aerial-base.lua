for i = 1, 4 do
    local turbine_name = 'aerial-blimp-mk0' .. i
    data:extend{{
        type = 'accumulator',
        name = turbine_name .. '-interface',
        localised_name = {'entity-name.' .. turbine_name},
        localised_description = {'entity-description.' .. turbine_name},
        icon = data.raw['item-with-tags'][turbine_name].icon,
        icon_size = 64,
        flags = {'not-on-map', 'placeable-off-grid', 'not-flammable'},
        minable = nil,
        max_health = 1,
        selectable_in_game = false,
        energy_source = {
            type = 'electric',
            buffer_capacity = (200*2^i) .. 'MJ',
            usage_priority = 'primary-output',
            input_flow_limit = '0kW',
            render_no_network_icon = false,
            render_no_power_icon = false
        },
        collision_mask = {},
        charge_cooldown = 0,
        discharge_cooldown = 0
    }}
end