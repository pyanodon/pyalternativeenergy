if not mods["elevated-rails"] then return end
local meld = require("__core__.lualib.meld")

local updates = {}

updates.locomotive =
{
    pictures =
    {
        slope_angle_between_frames = 1.25,
        sloped =
        {
            layers =
            {
                util.sprite_load("__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sloped/loco-sloped",
                    {
                        dice = 4,
                        priority = "very-low",
                        direction_count = 160,
                        scale = 0.5,
                        usage = "train"
                    }
                ),
                util.sprite_load("__pyalternativeenergygraphics__/graphics/entity/mk04-train/locomotive/sloped/glow-sloped",
                    {
                        dice = 4,
                        priority = "very-low",
                        flags = {"mask"},
                        direction_count = 160,
                        apply_runtime_tint = true,
                        draw_as_light = true,
                        scale = 0.5,
                        usage = "train"
                    }
                )
            }
        }
    }
}

updates.fluid_wagon =
{
    pictures =
    {
        slope_angle_between_frames = 1.25,
        sloped =
        {
            layers =
            {
                util.sprite_load("__pyalternativeenergygraphics__/graphics/entity/mk04-train/fluid-wagon/sloped/fluid-sloped",
                    {
                        priority = "very-low",
                        direction_count = 160,
                        scale = 0.5,
                        usage = "train"
                    }
                )
            }
        }
    }
}

updates.cargo_wagon =
{
    pictures =
    {
        slope_angle_between_frames = 1.25,
        sloped =
        {
            layers =
            {
                util.sprite_load("__pyalternativeenergygraphics__/graphics/entity/mk04-train/cargo-wagon/sloped/wagon-sloped",
                    {
                        priority = "very-low",
                        direction_count = 160,
                        scale = 0.5,
                        usage = "train"
                    }
                )
            }
        }
    }
}


meld(data.raw["locomotive"]["mk04-locomotive"], updates.locomotive)
meld(data.raw["fluid-wagon"]["mk04-fluid-wagon"], updates.fluid_wagon)
meld(data.raw["cargo-wagon"]["mk04-wagon"], updates.cargo_wagon)