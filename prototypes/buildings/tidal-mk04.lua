RECIPE {
    type = "recipe",
    name = "tidal-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "tidal-mk03",                    amount = 1},
        {type = "item", name = "ti-n",                          amount = 50},
        {type = "item", name = "nbfe-alloy",                    amount = 40},
        {type = "item", name = "science-coating",               amount = 15},
        {type = "item", name = "carbon-aerogel",                amount = 100},
        {type = "item", name = "super-alloy",                   amount = 200},
        {type = "item", name = "intelligent-unit",              amount = 10},
        {type = "item", name = "superconductor-servomechanims", amount = 10},
        {type = "item", name = "metastable-quasicrystal",       amount = 10},
        {type = "item", name = "shaft-mk04",                    amount = 3},
        {type = "item", name = "brake-mk04",                    amount = 3},
        {type = "item", name = "utility-box-mk04",              amount = 2},
        {type = "item", name = "gearbox-mk04",                  amount = 3},
        {type = "item", name = "mechanical-parts-04",           amount = 10},
    },
    results = {{type = "item", name = "tidal-mk04", amount = 1}}
}:add_unlock("tidal-mk04")

ITEM {
    type = "item",
    name = "tidal-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/tidal-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "d",
    place_result = "tidal-mk04",
    stack_size = 10
}

local tidal = ENTITY {
    type = "simple-entity-with-owner",
    name = "tidal-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/tidal-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tidal-mk04"},
    placeable_by = {item = "tidal-mk04", count = 1},
    fast_replaceable_group = "tidal",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.7, -5.3}, {2.7, 5.3}},
    selection_box = {{-2.9, -5.4}, {2.9, 5.4}},
    collision_mask = {layers = {object = true, train = true, is_object = true, is_lower_object = true}}, -- collide just with object-layer(s) and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
    tile_buildability_rules = {
        {area = {{-2, -5}, {2, 1}},  required_tiles = {layers = {water_tile = true}},  colliding_tiles = {layers = {ground_tile = true}}, remove_on_collision = true},
        {area = {{-2, 1.6}, {2, 5}}, required_tiles = {layers = {ground_tile = true}}, colliding_tiles = {layers = {water_tile = true}},  remove_on_collision = true}
    },
    placeable_position_visualization = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization),
    custom_tooltip_fields = {
        {
        name = {"entity-tooltip.output"},
        value = {"entity-tooltip.output-per-meter", "50MW"}
        }
    },
    created_effect = {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "script",
                effect_id = "on_built_hydro"
            }
        }
    },
    picture = {
        south = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/terrain.png",
                    width = 224,
                    height = 224,
                    shift = util.by_pixel(0, 70),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/raw-half.png",
                    width = 224,
                    height = 192,
                    shift = util.by_pixel(0, -138),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/mask.png",
                    width = 224,
                    height = 192,
                    shift = util.by_pixel(0, -138),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/turbine.png",
                    width = 224,
                    height = 224,
                    shift = util.by_pixel(0, 70),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/ao-half.png",
                    width = 224,
                    height = 192,
                    shift = util.by_pixel(0, -138),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-half.png",
                    width = 224,
                    height = 192,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -138),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/north/sh-down.png",
                    width = 224,
                    height = 224,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 70),
                },
            }
        },
        east = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/terrain.png",
                    width = 224,
                    height = 256,
                    shift = util.by_pixel(96, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/raw-half.png",
                    width = 192,
                    height = 256,
                    shift = util.by_pixel(-112, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/mask.png",
                    width = 192,
                    height = 256,
                    shift = util.by_pixel(-112, -6),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/turbine.png",
                    width = 224,
                    height = 256,
                    shift = util.by_pixel(96, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao.png",
                    width = 192,
                    height = 256,
                    shift = util.by_pixel(-112, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/ao-turbine.png",
                    width = 224,
                    height = 256,
                    shift = util.by_pixel(96, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh.png",
                    width = 192,
                    height = 256,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-112, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/east/sh-turbine.png",
                    width = 224,
                    height = 256,
                    draw_as_shadow = true,
                    shift = util.by_pixel(96, -6),
                }
            }
        },
        north = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/terrain.png",
                    width = 224,
                    height = 224,
                    shift = util.by_pixel(0, -90),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/raw.png",
                    width = 224,
                    height = 192,
                    shift = util.by_pixel(0, 118),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/mask.png",
                    width = 224,
                    height = 192,
                    shift = util.by_pixel(0, 118),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/turbine.png",
                    width = 224,
                    height = 224,
                    shift = util.by_pixel(0, -90),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/ao.png",
                    width = 224,
                    height = 192,
                    shift = util.by_pixel(0, 118),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh.png",
                    width = 224,
                    height = 192,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 118),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/south/sh-down.png",
                    width = 224,
                    height = 224,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, -90),
                }
            }
        },
        west = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/terrain.png",
                    width = 224,
                    height = 224,
                    shift = util.by_pixel(-96, 10),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/raw.png",
                    width = 192,
                    height = 256,
                    shift = util.by_pixel(112, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/mask.png",
                    width = 192,
                    height = 256,
                    shift = util.by_pixel(112, -6),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/turbine.png",
                    width = 224,
                    height = 224,
                    shift = util.by_pixel(-96, 10),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao.png",
                    width = 192,
                    height = 256,
                    shift = util.by_pixel(112, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/ao-turb.png",
                    width = 224,
                    height = 224,
                    shift = util.by_pixel(-96, 10),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh.png",
                    width = 192,
                    height = 256,
                    draw_as_shadow = true,
                    shift = util.by_pixel(112, -6),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/tidal/west/sh-down.png",
                    width = 224,
                    height = 224,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-96, 10),
                }
            }
        }
    }
}

local solar_panel = table.deepcopy(tidal)
solar_panel.hidden = true
solar_panel.animation = nil
solar_panel.minable = nil
solar_panel.fast_replaceable_group = nil
table.insert(solar_panel.flags, "not-blueprintable")
solar_panel.collision_box = {{-5.3, -5.3}, {5.3, 5.3}}
solar_panel.selection_box = {{-0, -0}, {0, 0}}
solar_panel.localised_name = solar_panel.localised_name or {"entity-name." .. solar_panel.name}
solar_panel.localised_description = solar_panel.localised_description or {"entity-name." .. solar_panel.name}
solar_panel.name = solar_panel.name .. "-solar"
solar_panel.type = "solar-panel"
solar_panel.created_effect = nil
solar_panel.placeable_position_visualization = nil
solar_panel.tile_buildability_rules = nil
solar_panel.selectable_in_game = false
solar_panel.picture = nil
solar_panel.collision_mask = {layers = {}}
solar_panel.energy_source = {
    type = "electric",
    usage_priority = "solar",
    buffer_capacity = "1GJ",
    input_flow_limit = "0W",
    render_no_power_icon = false
}
solar_panel.production = "50MW"
solar_panel.performance_at_day = 1
solar_panel.performance_at_night = 1
solar_panel.solar_coefficient_property = "py-tide-height"
data:extend{solar_panel}
