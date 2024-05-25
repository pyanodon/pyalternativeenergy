local noise = require 'noise'

data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "geothermal-crack",
    richness = true,
    order = "r-co"
}}

data:extend{{
    type = "noise-layer",
    name = "geothermal-crack"
}}

data:extend{{
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
    collision_mask = {"resource-layer"},
    autoplace = {
        name = "geothermal-crack",
        order = "b-geothermal-crac",
        control = "geothermal-crack",
        -- We return the chance of spawning on any given tile here
        probability_expression = noise.define_noise_function( function(x, y, tile, map)

            -- This is the user's map setting for the frequency of this ore
            local frequency_multiplier = noise.var("control-setting:geothermal-crack:frequency:multiplier")
            -- 0% chance of spawning in starting area (tier == 0)
            -- Using this is equivalent to has_starting_area_placement = false
            local tier = noise.clamp(noise.var("tier"), 0, 1)
            -- 1 in 64 chunks (each chunk is 64x64 tiles)
            local desired_frequency = 1 / (64 * 64^2)
            -- Our final chance, likely a very, very small decimal
            return tier * desired_frequency * frequency_multiplier
          end),
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = noise.define_noise_function( function(x, y, tile, map)
            -- This is the user's map setting for richness of this ore
            -- We ignore size here because we're always a single tile resource
            local richness_multiplier = noise.var("control-setting:geothermal-crack:richness:multiplier")
            -- This is the distance from the starting position, which is how vanilla scales ore yield
            local distance_value = noise.var("distance")
            -- This is our multiplier for the above, determining the yield gains over distance
            local scalar = 2^16
            -- Add it all together or what is likely a pretty big number
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
}}
