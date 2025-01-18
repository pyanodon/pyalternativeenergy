RECIPE {
    type = "recipe",
    name = "antimony-drill-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "electric-mining-drill", amount = 5},
        {type = "item", name = "electronic-circuit",    amount = 10},
        {type = "item", name = "iron-gear-wheel",       amount = 40},
        {type = "item", name = "aluminium-plate",       amount = 20},
        {type = "item", name = "engine-unit",           amount = 2},
    },
    results = {
        {type = "item", name = "antimony-drill-mk01", amount = 1}
    }
}:add_unlock("antimony-mk01")

RECIPE {
    type = "recipe",
    name = "antimony-drill-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "antimony-drill-mk01",   amount = 1},
        {type = "item", name = "neuroprocessor",          amount = 10},
        {type = "item", name = "advanced-circuit",        amount = 15},
        {type = "item", name = "tin-plate",               amount = 50},
        {type = "item", name = "stainless-steel",         amount = 20},
        {type = "item", name = "self-assembly-monolayer", amount = 10},
        {type = "item", name = "duralumin",               amount = 15},
        {type = "item", name = "nexelit-plate",           amount = 20},
        {type = "item", name = "mechanical-parts-02",     amount = 1},
    },
    results = {
        {type = "item", name = "antimony-drill-mk02", amount = 1}
    }
}:add_unlock("machines-mk03")

RECIPE {
    type = "recipe",
    name = "antimony-drill-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "antimony-drill-mk02", amount = 1},
        {type = "item", name = "titanium-plate",        amount = 20},
        {type = "item", name = "super-steel",           amount = 20},
        {type = "item", name = "biopolymer",            amount = 15},
        {type = "item", name = "graphene-roll",         amount = 20},
        {type = "item", name = "ns-material",           amount = 20},
        {type = "item", name = "processing-unit",       amount = 10},
        {type = "item", name = "electric-engine-unit",  amount = 3},
        {type = "item", name = "mechanical-parts-03",   amount = 1},
    },
    results = {
        {type = "item", name = "antimony-drill-mk03", amount = 1}
    }
}:add_unlock("machines-mk04")

RECIPE {
    type = "recipe",
    name = "antimony-drill-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "antimony-drill-mk03",         amount = 1},
        {type = "item", name = "science-coating",               amount = 15},
        {type = "item", name = "nbfe-alloy",                    amount = 5},
        {type = "item", name = "low-density-structure",         amount = 30},
        {type = "item", name = "super-alloy",                   amount = 20},
        {type = "item", name = "ti-n",                          amount = 100},
        {type = "item", name = "intelligent-unit",              amount = 10},
        {type = "item", name = "superconductor-servomechanims", amount = 10},
        {type = "item", name = "hyperelastic-material",         amount = 15},
        {type = "item", name = "metastable-quasicrystal",       amount = 4},
        {type = "item", name = "sc-engine",                     amount = 3},
        {type = "item", name = "mechanical-parts-04",           amount = 1},
    },
    results = {
        {type = "item", name = "antimony-drill-mk04", amount = 1}
    }
}:add_unlock("machines-mk05")

local function old_energy_source()
    return {
        type = "burner",
        fuel_categories = {"jerry"},
        effectivity = 1,
        light_flicker = {color = {0, 0, 0}},
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = {
            pollution = 20
        },
    }
end

local power_usage_by_tier = {
    "1MW",
    "3MW",
    "6MW",
    "10MW",
}

for i = 1, 4 do
    local name = "antimony-drill-mk0" .. i
    local icon = "__pyalternativeenergygraphics__/graphics/icons/antimonium-drill-mk0" .. i .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alternativeenergy-buildings-mk0" .. i,
        order = "a",
        place_result = name,
        stack_size = 10
    }

    local entity = ENTITY {
        type = "mining-drill",
        name = name,
        icon = icon,
        icon_size = icon_size,
        drawing_box_vertical_extension = 7,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = name},
        fast_replaceable_group = "antimony-drill",
        max_health = 700 * i,
        resource_categories = {"antimonium"},
        corpse = "big-remnants",
        effect_receiver = {
            -- makes green modules 9x less effective in order to not trivalize the fluid fuel challenge.
            -- 20% consumption is still possible with green beacons later on.
            base_effect = {consumption = 9}
        },
        dying_explosion = "big-explosion",
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        module_slots = i,
        mining_speed = i,
        energy_source = {
            type = "fluid",
            effectivity = 1,
            light_flicker = {
                minimum_intensity = 1, -- a static sized light
                maximum_intensity = 1,
                light_intensity_to_size_coefficient = 1,
                color = {1, 0.5, 0.5},
            },
            burns_fluid = true,
            scale_fluid_usage = true,
            destroy_non_fuel_fluid = false,
            fluid_box = {
                volume = 100,
                pipe_connections = {
                    {flow_direction = "input", position = {0, 3.0}, direction = defines.direction.south}
                },
                pipe_covers = table.deepcopy(data.raw["pipe-to-ground"]["ht-pipes-to-ground"].fluid_box.pipe_covers),
                production_type = "input",
            },
            emissions_per_minute = {
                pollution = 2
            },
            smoke = {
                {
                    name = "fire-smoke",
                    deviation = {0.1, 0.1},
                    frequency = 25,
                    north_position = {0, -11.5},
                    south_position = {0, -11.5},
                    east_position = {0, -11.5},
                    west_position = {0, -11.5},
                    starting_vertical_speed = 0.08,
                    starting_frame_deviation = 60
                }
            }
        },
        energy_usage = power_usage_by_tier[i],
        mining_power = 1,
        resource_searching_radius = 4.49 + ((i - 1) * 3),
        resource_drain_rate_percent = 200 * (2 ^ -i),
        vector_to_place_result = {0, -3.65},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 12,
            height = 12
        },
        circuit_connector = circuit_connector_definitions["antimony-drill-mkxx"],
        circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/shade.png",
                        width = 224,
                        height = 224,
                        line_length = 1,
                        frame_count = 1,
                        repeat_count = 50,
                        animation_speed = 0.3,
                        shift = util.by_pixel(-0, -0),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/bot-raw.png",
                        width = 224,
                        height = 224,
                        line_length = 9,
                        frame_count = 50,
                        animation_speed = 0.3,
                        shift = util.by_pixel(-0, -0),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/top-raw.png",
                        width = 224,
                        height = 256,
                        line_length = 9,
                        frame_count = 50,
                        animation_speed = 0.3,
                        shift = util.by_pixel(-0, -240),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/pipes.png",
                        width = 224,
                        height = 224,
                        line_length = 1,
                        repeat_count = 50,
                        shift = util.by_pixel(-0, -0),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/pipes-sh.png",
                        width = 224,
                        height = 224,
                        line_length = 1,
                        repeat_count = 50,
                        draw_as_shadow = true,
                        shift = util.by_pixel(-0, -0),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/sh.png",
                        width = 256,
                        height = 224,
                        line_length = 8,
                        frame_count = 50,
                        animation_speed = 0.3,
                        draw_as_shadow = true,
                        shift = util.by_pixel(16, -0),
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/l.png",
                        width = 224,
                        height = 480,
                        line_length = 1,
                        frame_count = 1,
                        repeat_count = 50,
                        draw_as_glow = true,
                        tint = py.tints[i],
                        blend_mode = "additive",
                        animation_speed = 0.3,
                        shift = util.by_pixel(-0, -128),
                    },
                }
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalternativeenergygraphics__/sounds/antimonium-drill.ogg", volume = 0.55},
            idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/antimonium-drill.ogg", volume = 0.1},
            apparent_volume = 2.5
        }
    }

    if not mods["pystellarexpedition"] then
        local legacy_entity = table.deepcopy(entity)
        legacy_entity.name = "antimonium-drill-mk0" .. i
        legacy_entity.energy_source = old_energy_source()
        legacy_entity.energy_usage = (500 * i) .. "kW"
        legacy_entity.localised_name = {"", {"entity-name.antimony-drill-mk0" .. i}, " (Legacy)"}
        legacy_entity.module_slots = 0
        legacy_entity.hidden = true
        legacy_entity.resource_drain_rate_percent = nil
        legacy_entity.resource_searching_radius = 4.49
        legacy_entity.effect_receiver = nil
        legacy_entity.localised_description = {"entity-description.antimony-drill-mk0" .. i}
        data:extend{legacy_entity}
    end
end