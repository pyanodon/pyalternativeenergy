local resource_autoplace = require("resource-autoplace")

data.raw.planet.nauvis.map_gen_settings.autoplace_controls[ "antimonium" ] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings[ "antimonium" ] = {}

data:extend({ {
    type = "autoplace-control",
    category = "resource",
    name = "antimonium",
    richness = true,
    order = "p"
} })

-- data:extend{{
--     type = "noise-layer",
--     name = "antimonium"
-- }}

ENTITY({
    type = "resource",
    name = "antimonium",
    category = "antimonium", --maybe here
    icon = "__pyalternativeenergygraphics__/graphics/icons/antimonium-ore.png",
    icon_size = 64,
    flags = { "placeable-neutral" },
    order = "a-b-a",
    map_color = { r = 0.850, g = 0.090, b = 0.556 },
    minable = {
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 1,
        results = {
            { type = "item", name = "antimonium-ore", amount = 1 }
        },
    },
    collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tantimonium_removal_probability = 0.7,
    tantimonium_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings({
        name = "antimonium",
        order = "b",
        base_density = 3, -- Typical density is 10. Antimony uses a density of 3 due to the resource_drain_rate_percent property on higher mk levels of antimony drills.
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    }),
    stage_counts = { 20000, 13000, 10000, 5000, 3000, 1000, 500, 100 },
    stages = {
        sheet = {
            filename = "__pyalternativeenergygraphics__/graphics/ore/antimonium/antimonium.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 8,
            variation_count = 8,
            scale = 0.5
        }
    }
})
