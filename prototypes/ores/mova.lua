
ENTITY {
    type = "resource",
    name = "mova",
    category = "mova",
    icon = "__pyalternativeenergygraphics__/graphics/icons/mova.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.545, g = 0.596, b = 0.674},
    minable = {

        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
            {type = 'item', name = "mova", amount = 1}
        },
        --fluid_amount = 100,
        --required_fluid = "coal-gas"
    },
    starting_area = false,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {800},
    stages = {
        sheet = {
            filename = "__pyalternativeenergygraphics__/graphics/entity/crops/mova/hr-mova.png",
            priority = "extra-high",
            width = 128,
            height = 160,
            frame_count = 16,
            variation_count = 1,
            scale = 0.5,
            shift = util.by_pixel(0, -16),
        },
    }
}


data:extend({
    {
        type = "tree",
        name = "mova-fake",
        icon = "__pyalternativeenergygraphics__/graphics/icons/mova.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
        minable =
        {
          count = 4,
          mining_particle = "wooden-particle",
          mining_time = 0.5,
          result = "wood"
        },
        emissions_per_second = {pollution = -0.001},
        max_health = 20,
        collision_box = {{0,0}, {0,0}},
        selection_box = {{0,0}, {0,0}},
        drawing_box = {{-0.6, -1.8}, {0.6, 0.3}},
        subgroup = "trees",
        order = "a[tree]-c[dry-tree]",
        vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        --autoplace = dead_trees_autoplace(0.5),
        pictures =
        {
          --dry-tree
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/crops/mova/mova.png",
            priority = "extra-high",
            width = 64,
            height = 80,
            frame_count = 16,
            variation_count = 1,
            shift = util.by_pixel(0, -16),
            },
        }
      }
})
