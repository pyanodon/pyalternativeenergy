---@diagnostic disable: missing-parameter
local util = require "util"

RECIPE {
    type = "recipe",
    name = "aerial-blimp-mk02",
    energy_required = 50,
    category = "advanced-crafting",
    enabled = false,
    ingredients =
    {
        {type = "item",  name = "aerial-blimp-mk01",       amount = 1},
        {type = "item",  name = "shaft-mk02",              amount = 2},
        {type = "item",  name = "anemometer-mk02",         amount = 4},
        {type = "item",  name = "advanced-circuit",        amount = 5},
        {type = "item",  name = "small-parts-02",          amount = 100},
        {type = "item",  name = "self-assembly-monolayer", amount = 40},
        {type = "item",  name = "utility-box-mk02",        amount = 2},
        {type = "item",  name = "controler-mk02",          amount = 2},
        {type = "item",  name = "rubber",                  amount = 60},
        {type = "item",  name = "aluminium-plate",         amount = 200},
        {type = "item",  name = "nexelit-battery",         amount = 100},
        {type = "item",  name = "eva",                     amount = 80},
        {type = "item",  name = "mechanical-parts-02",     amount = 1},
        {type = "item",  name = "electronics-mk02",        amount = 2},
        {type = "fluid", name = "hydrogen",                amount = 4000},
    },
    results = {{type = "item", name = "aerial-blimp-mk02", amount = 1}}
}:add_unlock("renewable-mk02")

ITEM {
    type = "item-with-tags",
    name = "aerial-blimp-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk02.png",
    icon_size = 64,
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "b",
    place_result = "aerial-blimp-mk02",
    stack_size = 1,
    flags = {"not-stackable"}
}

data:extend
{
    {
        ai_settings = {do_separation = false, path_resolution_modifier = -5},
        type = "unit",
        additional_pastable_entities = {"aerial-blimp-mk01", "aerial-blimp-mk02", "aerial-blimp-mk03", "aerial-blimp-mk04"},
        name = "aerial-blimp-mk02",
        selection_priority = 49,
        icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk02.png",
        icon_size = 64,
        flags = {"placeable-player", "placeable-enemy", "placeable-off-grid"},
        minable = {mining_time = 0.5, result = "aerial-blimp-mk02"},
        max_health = 25,
        order = "b-b-a",
        subgroup = "enemies",
        resistances =
        {
            {
                type = "physical",
                percent = 100
            },
        },
        healing_per_tick = 0.01,
        immune_to_tree_impacts = true,
        has_belt_immunity = true,
        immune_to_rock_impacts = true,
        collision_mask = {layers = {}, not_colliding_with_itself = true},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        attack_parameters = {
            type = "projectile",
            range = 0,
            cooldown = 0,
            ammo_category = "melee",
            ammo_type = _G.make_unit_melee_ammo_type(0),
            animation = py.empty_image()
        },
        vision_distance = 0,
        movement_speed = 0.04,
        distance_per_frame = 0.18,
        absorptions_to_join_attack = {pollution = 0},
        distraction_cooldown = 0,
        --corpse = 'arthurian-corpse',
        dying_explosion = "blood-explosion-small",
        run_animation =
        {
            layers =
            {
                {
                    filenames =
                    {
                        "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/r1.png",
                        "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/r2.png",
                    },
                    slice = 8,
                    lines_per_file = 4,
                    line_length = 8,
                    width = 256,
                    height = 415,
                    frame_count = 1,
                    direction_count = 64,
                    shift = util.mul_shift(util.by_pixel(-0, 64)),
                    scale = 0.7,
                },
                {
                    filenames =
                    {
                        "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/s1.png",
                        "__pyalternativeenergygraphics__/graphics/entity/aerial-mk02/s2.png",
                    },
                    slice = 8,
                    lines_per_file = 4,
                    line_length = 8,
                    width = 160,
                    height = 96,
                    frame_count = 1,
                    direction_count = 64,
                    --draw_as_shadow = true,
                    shift = util.mul_shift(util.by_pixel(128, 288)),
                    scale = 0.55,
                },
            }
        },
        render_layer = "air-object"
    }
}
