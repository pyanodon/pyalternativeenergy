local noise = require("noise")

DATA {
    type = "autoplace-control",
    category = "resource",
    name = "geothermal-crack",
    richness = true,
    order = "r-co"
}

DATA {
    type = "noise-layer",
    name = "geothermal-crack"
}

DATA {
    type = "resource",
    name = "geothermal-crack",
    category = "geothermal-crack",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-crack.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.639, g = 0.074, b = 0.007},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "geothermal-crack-particle",
        mining_time = 1,
        results = {
            {
            type = "fluid",
            name = "geothermal-water",
            amount = 100,
            temperature = 3000,
            }
        },
        fluid_amount = 100,
        required_fluid = "pressured-water"
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "geothermal-crack",
        order = "b",
        probability_expression = noise.define_noise_function( function(x, y, tile, map)
            local frequency_multiplier = noise.var("control-setting:geothermal-crack:frequency:multiplier")
            -- 0% chance of spawning in starting area (tier == 0)
            local tier = noise.clamp(noise.var("tier"), 0, 1)
            -- 1 in 64x64 chunks
            local desired_frequency = 1 / (64 * 64^2)
            return tier * desired_frequency * frequency_multiplier
          end),
        richness_expression = noise.define_noise_function( function(x, y, tile, map)
            local richness_multiplier = noise.var("control-setting:geothermal-crack:size:multiplier")
            local distance_value = noise.var("distance")
            local scalar = 2^16
            return distance_value * scalar * richness_multiplier
        end)
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyalternativeenergygraphics__/graphics/ore/geothermal-crack/geothermal-crack.png",
            priority = "extra-high",
            width = 352,
            height = 352,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}
