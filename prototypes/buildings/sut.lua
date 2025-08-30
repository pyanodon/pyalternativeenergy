data:extend({ {
    type = "collision-layer",
    name = "sut"
} })

data:extend({ {
    type = "tile",
    name = "sut-panel",
    layer = 100,
    map_color = { 1, 1, 1 },
    absorptions_per_second = { pollution = 0 },
    minable = { mining_time = 0.1, result = "sut-panel" },
    collision_mask = { layers = { ground_tile = true, sut = true } },
    check_collision_with_entities = true,
    placeable_by = { item = "sut-panel", count = 1 },
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png",
    icon_size = 64,
    decorative_removal_probability = 1,
    variants = {
        transition = table.deepcopy(TILE("concrete").variants.transition),
        main = {
            {
                picture = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/tile/white.png",
                count = 1,
                size = 1
            }
        },
        inner_corner = {
            picture = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/tile/glass-inner-corner.png",
            count = 8
        },
        outer_corner = {
            picture = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/tile/glass-outer-corner.png",
            count = 8
        },
        side = {
            picture = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/tile/glass-side.png",
            count = 8
        },
        u_transition = {
            picture = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/tile/glass-u.png",
            count = 8
        },
        o_transition = {
            picture = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/tile/glass-o.png",
            count = 1
        }
    },
    walking_speed_modifier = 3.5
} })

data:extend({ {
    type = "collision-layer",
    name = "sut_placement_distance"
} })

RECIPE({
    type = "recipe",
    name = "sut",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "glass",                amount = 1000 },
        { type = "item", name = "small-parts-02",       amount = 400 },
        { type = "item", name = "stainless-steel",      amount = 500 },
        { type = "item", name = "electric-engine-unit", amount = 18 },
        { type = "item", name = "ns-material",          amount = 20 },
        { type = "item", name = "advanced-circuit",     amount = 10 },
        { type = "item", name = "concrete",             amount = 100 },
        { type = "item", name = "mechanical-parts-03",  amount = 1 },
    },
    results = {
        { type = "item", name = "sut", amount = 1 }
    }
}):add_unlock("thermal-mk03")

ITEM({
    type = "item",
    name = "sut",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-tower.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-thermosolar",
    order = "ca",
    place_result = "sut",
    stack_size = 10
})

ENTITY({
    type = "electric-energy-interface",
    name = "sut",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-tower.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 10, result = "sut" },
    max_health = 3250,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = { { -8.7, -8.7 }, { 8.7, 8.7 } },
    selection_box = { { -9, -9 }, { 9, 9 } },
    continuous_animation = true,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        buffer_capacity = "1MJ",
        input_flow_limit = "0W",
        render_no_power_icon = false
    },
    energy_production = "1MW",
    energy_usage = "0kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/top.png",
                width = 608,
                height = 1312,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(1, -321 + 32),
                scale = 0.9473
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/sh.png",
                width = 222,
                height = 592,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(384, 32),
                draw_as_shadow = true,
                scale = 0.9,
            }
        }
    },
    impact_category = "metal-large",
    working_sound = {
        sound = { filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 1.0 },
        idle_sound = { filename = "__pyalternativeenergygraphics__/sounds/hawt-turbine-mk04.ogg", volume = 0.70 },
        apparent_volume = 2.5
    },
    render_layer = "entity-info-icon",
    collision_mask = { layers = { item = true, object = true, player = true, water_tile = true, sut = true, sut_placement_distance = true } }
})

data:extend({ {
    type = "simple-entity-with-force",
    name = "sut-placement-distance",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-tower.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation", "not-on-map" },
    collision_box = { { -200, -200 }, { 200, 200 } },
    collision_mask = { layers = { sut_placement_distance = true } },
    selectable_in_game = false,
    picture = {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1
    }
} })

data:extend({ {
    type = "animation",
    name = "sut-panel-base",
    flags = { "terrain" },
    filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/bottom.png",
    frame_count = 10,
    line_length = 2,
    width = 608,
    height = 48,
    animation_speed = 0.3,
    scale = 0.9473,
    shift = util.by_pixel(1, 278 + 32)
} })

RECIPE({
    type = "recipe",
    name = "sut-panel",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "small-parts-02", amount = 1 },
        { type = "item", name = "py-asphalt",     amount = 2 },
        { type = "item", name = "glass",          amount = 20 },
        { type = "item", name = "mirror-mk03",    amount = 1 }
    },
    results = { { type = "item", name = "sut-panel", amount = 2 } }
}):add_unlock("thermal-mk03")

ITEM({
    type = "item",
    name = "sut-panel",
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-thermosolar",
    order = "cb",
    place_as_tile =
    {
        result = "sut-panel",
        condition = {
            layers =
            {
                sut = true,
                water_tile = true
            }
        },
        condition_size = 1
    },
    stack_size = 1000,
    localised_name = { "tile-name.sut-panel" },
    localised_description = { "tile-description.sut-panel" }
})

do
    local i = 1
    for y = 0, 128 - 64, 64 do
        for x = 0, 1920 - 64, 64 do
            data:extend({ {
                type = "simple-entity",
                name = "sut-panel-" .. i,
                picture = {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/updraft-tower/tile/glass.png",
                    priority = "high",
                    flags = { "terrain" },
                    width = 64,
                    height = 64,
                    x = x,
                    y = y,
                    scale = 0.5,
                    shift = util.by_pixel(16, 16),
                    tint = { 1, 1, 1, 0.7 }
                },
                icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-tower.png",
                icon_size = 64,
                collision_mask = { layers = {} },
                collision_box = { { 0, 0 }, { 0, 0 } },
                hidden = true,
                flags = { "not-on-map", "not-flammable", "not-rotatable", "not-in-kill-statistics", },
                selectable_in_game = false,
                render_layer = "wires"
            } })
            i = i + 1
        end
    end
end

local smoke = table.deepcopy(data.raw[ "trivial-smoke" ][ "turbine-smoke" ])
smoke.duration = 400
smoke.show_when_smoke_off = true
smoke.name = "sut-smoke"
smoke.fade_in_duration = 60
smoke.fade_away_duration = 340
smoke.affected_by_wind = true
smoke.start_scale = 0.4
smoke.end_scale = 2
smoke.color = { 0.5, 0.5, 0.5, 0.2 }
smoke.movement_slow_down_factor = 1
data:extend({ smoke })

data:extend({ {
    name = "sut-smokestack",
    type = "fire",
    hidden = true,
    damage_per_tick = { amount = 0, type = "physical" },
    spread_delay = 0,
    spread_delay_deviation = 0,
    smoke = { {
        name = "sut-smoke",
        frequency = 1,
        starting_vertical_speed = 0.4
    } },
    maximum_lifetime = 60,
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png",
    icon_size = 64,
    localised_name = ""
} })

data:extend({ {
    name = "sut-smokestack-weak",
    type = "fire",
    hidden = true,
    damage_per_tick = { amount = 0, type = "physical" },
    spread_delay = 0,
    spread_delay_deviation = 0,
    smoke = { {
        name = "sut-smoke",
        frequency = 0.31,
        starting_vertical_speed = 0.4
    } },
    maximum_lifetime = 60,
    icon = "__pyalternativeenergygraphics__/graphics/icons/updraft-panel.png",
    icon_size = 64,
    localised_name = ""
} })
