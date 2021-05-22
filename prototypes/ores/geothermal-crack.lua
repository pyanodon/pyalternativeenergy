local resource_autoplace = require("resource-autoplace")

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
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "geothermal-crack",
        order = "b",
        base_density = 3,
        base_spots_per_km2 = 1.25,
        random_probability = 1 / 48,
        has_starting_area_placement = false,
        random_spot_size_minimum = 1,
        random_spot_size_maximum = 2,
        additional_richness = 10000,
        regular_rq_factor_multiplier = 1
        --starting_rq_factor_multiplier = 2,
        --candidate_spot_count = 20
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
