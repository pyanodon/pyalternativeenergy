for i = 1, 4 do
    local turbine_name = 'aerial-blimp-mk0' .. i
    data:extend{{
        type = 'accumulator',
        name = turbine_name .. '-interface',
        localised_name = {'entity-name.' .. turbine_name},
        localised_description = {'entity-description.' .. turbine_name},
        icon = data.raw['item-with-tags'][turbine_name].icon,
        icon_size = 64,
        flags = {'not-on-map', 'placeable-off-grid', 'not-flammable', 'hidden', 'hide-alt-info'},
        minable = nil,
        max_health = 1,
        selectable_in_game = false,
        energy_source = {
            type = 'electric',
            buffer_capacity = (100*2^i) .. 'MJ',
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

RECIPE {
    type = 'recipe',
    name = 'aerial-base',
    energy_required = 5,
    enabled = false,
    ingredients = {
        {'iron-plate', 100},
        {'glass', 50},
        {'automated-factory-mk01', 2},
        {'aluminium-plate', 50},
        {'steel-plate', 50},
        {'iron-gear-wheel', 100},
        {'pipe', 25},
        {'intermetallics', 10},
    },
    results = {
        {type = 'item', name = 'aerial-base', amount = 1}
    }
}:add_unlock('renewable-mk02')

ITEM {
    type = 'item',
    name = 'aerial-base',
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-base.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-special-buildings',
    order = 'f',
    place_result = 'aerial-base',
    stack_size = 10
}

ENTITY {
    type = 'electric-energy-interface',
    name = 'aerial-base-animation',
    localised_name = {'entity-name.aerial-base'},
    localised_description = {'entity-description.aerial-base'},
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-base.png',
    icon_size = 64,
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    flags = {'hidden', 'not-on-map'},
    selectable_in_game = false,
    animation = {
        layers = {
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/aerial-base/r.png',
                width = 352,
                height = 448,
                frame_count = 19,
                line_length = 5,
                animation_speed = 1/5,
                shift = util.by_pixel(0, -48)
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/aerial-base/l.png',
                width = 352,
                height = 448,
                frame_count = 19,
                line_length = 5,
                animation_speed = 1/5,
                draw_as_glow = true,
                shift = util.by_pixel(0, -48)
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/aerial-base/mask.png',
                width = 352,
                height = 448,
                frame_count = 19,
                line_length = 5,
                animation_speed = 1/5,
                shift = util.by_pixel(0, -48),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
            },
            {
                filename = '__pyalternativeenergygraphics__/graphics/entity/aerial-base/sh.png',
                width = 384,
                height = 352,
                frame_count = 19,
                line_length = 5,
                animation_speed = 1/5,
                draw_as_shadow = true,
                shift = util.by_pixel(16, -0)
            },
        },
    },
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
        emissions_per_minute = 0,
        buffer_capacity = '1MJ',
        output_flow_limit = '0W'
    },
    continuous_animation = true,
    gui_mode = 'none',
    energy_usage = '1MW',
    energy_production = '0W',
}

local circuit_wire_connection_point = {
    shadow = {
        red = {0.984375, 1.10938},
        green = {0.890625, 1.10938}
    },
    wire = {
        red = {0.6875, 0.59375},
        green = {0.6875, 0.71875}
    }
}

ENTITY {
    type = 'constant-combinator',
    name = 'aerial-base',
    activity_led_light_offsets = {{0, 0}, {0, 0}, {0, 0}, {0, 0}},
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-base.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'aerial-base'},
    max_health = 150,
    corpse = 'big-remnants',
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    circuit_wire_connection_points = {
        circuit_wire_connection_point,
        circuit_wire_connection_point,
        circuit_wire_connection_point,
        circuit_wire_connection_point
    },
    circuit_wire_max_distance = 9,
    circuit_connector_sprites = _G.circuit_connector_definitions['accumulator'].sprites,
    item_slot_count = 4,
    integration_patch_render_layer = 'lower-object-above-shadow',
    integration_patch = {
        filename = '__pyalternativeenergygraphics__/graphics/entity/aerial-base/r.png',
        priority = 'high',
        width = 352,
        height = 448,
        shift = util.by_pixel(0, -48)
    },
}

ENTITY {
    type = 'container',
    name = 'aerial-base-chest',
    localised_name = {'entity-name.aerial-base'},
    localised_description = {'entity-description.aerial-base'},
    icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-base.png',
    icon_size = 64,
    flags = {'hidden', 'not-on-map'},
    selectable_in_game = false,
    picture = {
        filename = '__core__/graphics/empty.png',
        width = 1,
        height = 1
    },
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    inventory_size = 60,
    enable_inventory_bar = false,
    scale_info_icons = true,
    inventory_type = 'with_bar'
}