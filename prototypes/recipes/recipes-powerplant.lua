for i = 1, 4 do
    RECIPE {
        type = "recipe",
        name = "molten-salt-0" .. i,
        icons = {
            {
                icon = "__pyalternativeenergygraphics__/graphics/icons/hot-molten-salt.png",
                icon_size = 64,
            },
            {
                icon = "__pyalienlifegraphics__/graphics/icons/over-mk0" .. i .. ".png",
                icon_size = 64,
            }
        },
        category = "powerplant-mk0" .. i,
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 400},
        },
        results = {
            {type = "fluid", name = "hot-molten-salt", amount = 400, temperature = i * 1000},
        }
    }:add_unlock{"coalplant-mk0" .. i, "gasplant-mk0" .. i, "oilplant-mk0" .. i, not py.spoilage_enabled() and "biomassplant-mk0" .. i or nil}
end

if not py.spoilage_enabled() then return end

for i = 1, 4 do
    RECIPE {
        type = "recipe",
        name = "biomass-molten-salt-0" .. i,
        icons = {
            {
                icon = "__pyalternativeenergygraphics__/graphics/icons/hot-molten-salt.png",
                icon_size = 64,
            },
            {
                icon = "__pyalienlifegraphics__/graphics/icons/over-mk0" .. i .. ".png",
                icon_size = 64,
            }
        },
        category = "powerplant-mk0" .. i,
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type = "item", name = "biocrud", amount = 1},
            {type = "fluid", name = "molten-salt", amount = 400},
        },
        results = {
            {type = "fluid", name = "hot-molten-salt", amount = 400, temperature = i * 1000},
        }
    }:add_unlock{"biomassplant-mk0" .. i}
end