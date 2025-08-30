data.raw.planet.nauvis.map_gen_settings.autoplace_controls["geothermal-crack"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["geothermal-crack"] = {}

data:extend({ {
    type = "autoplace-control",
    category = "resource",
    name = "geothermal-crack",
    richness = true,
    order = "r-co"
} })

-- data:extend{{
--     type = "noise-layer",
--     name = "geothermal-crack"
-- }}

data:extend({
    {
        type = "noise-expression",
        name = "py_geothermal_crack_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_geothermal_crack_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_geothermal_crack",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_geothermal_crack_starting_area * py_geothermal_crack_desired_frequency * var("control:geothermal-crack:frequency")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_geothermal_crack_richness",
        expression = "2^16 * var('distance') * var('control:geothermal-crack:richness')"
    }
})

data:extend({ {
    type = "resource",
    name = "geothermal-crack",
    category = "geothermal-crack",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-crack.png",
    icon_size = 64,
    flags = { "placeable-neutral" },
    order = "a-b-a",
    map_color = { r = 0.639, g = 0.074, b = 0.007 },
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
    collision_box = { { -5.3, -5.3 }, { 5.3, 5.3 } },
    selection_box = { { -5.5, -5.5 }, { 5.5, 5.5 } },
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    collision_mask = { layers = { resource = true } },
    autoplace = {
        name = "geothermal-crack",
        order = "b-geothermal-crac",
        control = "geothermal-crack",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_geothermal_crack",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_geothermal_crack_richness"
    },
    stage_counts = { 0 },
    stages = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/ore/geothermal-crack/geothermal-crack.png",
                priority = "extra-high",
                width = 352,
                height = 352,
                frame_count = 1,
                variation_count = 1,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/ore/geothermal-crack/glow.png",
                priority = "extra-high",
                draw_as_glow = true,
                width = 352,
                height = 352,
                frame_count = 1,
                variation_count = 1,
                shift = util.by_pixel(0, 0)
            }
        }
    }
} })
