

local temp = 1250
local max_temp = temp - 5
local min_temp = 0

for i = 1, 16 do

    RECIPE {
        type = "recipe",
        name = "lrf-salt-heating-" .. i,
        category = "lrf-panel",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = min_temp, maximum_temperature = max_temp},
        },
        results = {
            {type = "fluid", name = "molten-salt", amount = 100, temperature = temp},
        },
    }:add_unlock("thermal-mk01")

    temp = temp + 250
    max_temp = temp - 5
    min_temp = max_temp - 250

end

temp = 2000
max_temp = temp + 5
min_temp = temp - 5

for i = 1, 3 do
    RECIPE {
        type = "recipe",
        name = "lrf-steam-" .. i,
        category = "lrf",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = min_temp, maximum_temperature = max_temp},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = temp},
        },
    }:add_unlock("thermal-mk01")

    temp = temp + 1000
    max_temp = temp + 5
    min_temp = temp - 5
end
