RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "electronic-circuit",  amount = 20},
        {type = "item", name = "iron-gear-wheel",     amount = 150},
        {type = "item", name = "nbfe-alloy",          amount = 30},
        {type = "item", name = "concrete",            amount = 50},
        {type = "item", name = "steel-plate",         amount = 100},
        {type = "item", name = "aluminium-plate",     amount = 50},
        {type = "item", name = "nexelit-plate",       amount = 50},
        {type = "item", name = "niobium-pipe",        amount = 10},
        {type = "item", name = "mechanical-parts-01", amount = 2},
        {type = "item", name = "intermetallics",      amount = 20},
    },
    results = {
        {type = "item", name = "neutron-absorber-mk01", amount = 1}
    }
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "neutron-absorber-mk01",   amount = 1},
        {type = "item", name = "advanced-circuit",        amount = 25},
        {type = "item", name = "small-parts-02",          amount = 100},
        {type = "item", name = "fenxsb-alloy",            amount = 15},
        {type = "item", name = "refined-concrete",        amount = 50},
        {type = "item", name = "stainless-steel",         amount = 100},
        {type = "item", name = "lead-plate",              amount = 50},
        {type = "item", name = "lithium",                 amount = 30},
        {type = "item", name = "eva",                     amount = 20},
        {type = "item", name = "electronics-mk02",        amount = 3},
        {type = "item", name = "mechanical-parts-02",     amount = 1},
        {type = "item", name = "self-assembly-monolayer", amount = 10},
    },
    results = {
        {type = "item", name = "neutron-absorber-mk02", amount = 1}
    }
}:add_unlock("nuclear-power-mk02")

RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "neutron-absorber-mk02", amount = 1},
        {type = "item", name = "processing-unit",       amount = 30},
        {type = "item", name = "small-parts-03",        amount = 100},
        {type = "item", name = "nichrome",              amount = 20},
        {type = "item", name = "biopolymer",            amount = 20},
        {type = "item", name = "super-steel",           amount = 50},
        {type = "item", name = "cf",                    amount = 40},
        {type = "item", name = "hydraulic-system-mk01", amount = 4},
        {type = "item", name = "utility-box-mk03",      amount = 1},
        {type = "item", name = "electronics-mk03",      amount = 1},
        {type = "item", name = "ns-material",           amount = 15},
        {type = "item", name = "mechanical-parts-03",   amount = 1},

    },
    results = {
        {type = "item", name = "neutron-absorber-mk03", amount = 1}
    }
}:add_unlock("nuclear-power-mk03")

RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "neutron-absorber-mk03",   amount = 1},
        {type = "item", name = "intelligent-unit",        amount = 10},
        {type = "item", name = "low-density-structure",   amount = 50},
        {type = "item", name = "nano-mesh",               amount = 10},
        {type = "item", name = "cooling-system",          amount = 10},
        {type = "item", name = "super-alloy",             amount = 100},
        {type = "item", name = "divertor",                amount = 10},
        {type = "item", name = "hydraulic-system-mk02",   amount = 4},
        {type = "item", name = "utility-box-mk04",        amount = 1},
        {type = "item", name = "electronics-mk04",        amount = 1},
        {type = "item", name = "metastable-quasicrystal", amount = 10},
        {type = "item", name = "control-unit",            amount = 10},
        {type = "item", name = "ti-n",                    amount = 30},
        {type = "item", name = "mechanical-parts-04",     amount = 1},
    },
    results = {
        {type = "item", name = "neutron-absorber-mk04", amount = 1}
    }
}:add_unlock("nuclear-power-mk04")

for i = 1, 4 do
    if not mods.pyrawores and i == 2 then return end

    local name = "neutron-absorber-mk0" .. i
    local icon = "__pyalternativeenergygraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alternativeenergy-buildings-mk0" ..i,
        order = "a",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = name},
        max_health = 200 * i,
        corpse = "big-remnants",
        dying_explosion = "solar-panel-explosion",
        collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        forced_symmetry = "diagonal-pos",
        crafting_categories = {"neutron-absorber"},
        crafting_speed = i,
        energy_source = {
            type = "fluid",
            effectivity = 1,
            emissions_per_minute = {
                pollution = 0
            },
            destroy_non_fuel_fluid = false,
            fluid_box =
            {
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input-output", position = {0, -1.0}, direction = defines.direction.north},
                    {flow_direction = "input-output", position = {0, 1.0},  direction = defines.direction.south}
                },
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                production_type = "input-output",
                filter = "boric-acid"
            },
            burns_fluid = false,
            scale_fluid_usage = false,
            fluid_usage_per_tick = (i * 2 / 60) + 0.00001,
            maximum_temperature = 10,
        },
        energy_usage = "1W",
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(6, -87),
                    west_position = util.by_pixel(6, -87),
                    south_position = util.by_pixel(6, -87),
                    east_position = util.by_pixel(6, -87),
                    animation = {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/l.png",
                        frame_count = 15,
                        line_length = 5,
                        width = 224,
                        height = 288,
                        animation_speed = 0.3,
                        run_mode = "forward-then-backward",
                        draw_as_glow = true,
                        scale = 0.5,
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/off.png",
                        width = 224,
                        height = 416,
                        frame_count = 1,
                        shift = util.by_pixel(8, -56),
                        scale = 0.5,
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/mask.png",
                        width = 224,
                        height = 416,
                        frame_count = 1,
                        shift = util.by_pixel(8, -56),
                        tint = py.tints[i],
                        scale = 0.5,
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/sh.png",
                        width = 288,
                        height = 192,
                        frame_count = 1,
                        shift = util.by_pixel(24, 0),
                        scale = 0.5,
                        draw_as_shadow = true,
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {
                    {flow_direction = "input-output", position = {1.0, 0.0},  direction = defines.direction.east},
                    {flow_direction = "input-output", position = {-1.0, 0.0}, direction = defines.direction.west}
                }
            },
        },
        impact_category = "metal-large",
        fast_replaceable_group = "neutron-absorber"
    }
end

-- Q:
-- Melon I’m curious how my change breaks the syrup turd

-- A:
-- With this turd the composter becomes a burner generator consuming sweet syrup. In order for burner generators to work the API allows 2 possible modes.
-- mode A: the burner's speed is based on fuel value
-- mode B: the burner's speed is based on the (current fluid temp - default temperature)
-- mode A is not viable as this would cause all fluid fuels to be burnable in the turd composter
-- thus we must use mode B.
-- all recipes that produce sweet syrup cannot produce the fluid at default temp. 

data.raw.fluid["boric-acid"].default_temperature = 0
data.raw.fluid["boric-acid"].max_temperature = 10
data.raw.recipe["boric-acid"].results[1].temperature = 10
