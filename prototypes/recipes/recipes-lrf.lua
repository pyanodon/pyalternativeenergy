

local temp = 1000
local max_temp = temp - 5
local min_temp = 0

for i = 0, 10 do

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

    if i > 0 then
        if i == 1 then
            min_temp = -1000
        end

        RECIPE {
            type = "recipe",
            name = "lrf-salt-heating-" .. (i + 10),
            category = "lrf-panel2",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = min_temp + 1000, maximum_temperature = max_temp + 1000},
            },
            results = {
                {type = "fluid", name = "molten-salt", amount = 100, temperature = temp + 1000},
            },
        }:add_unlock("thermal-mk02")

        if i == 1 then
            min_temp = -2000
        end

        RECIPE {
            type = "recipe",
            name = "lrf-salt-heating-" .. (i + 20),
            category = "lrf-panel3",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = min_temp + 2000, maximum_temperature = max_temp + 2000},
            },
            results = {
                {type = "fluid", name = "molten-salt", amount = 100, temperature = temp + 2000},
            },
        }:add_unlock("thermal-mk03")

        if i == 1 then
            min_temp = -3000
        end

        RECIPE {
            type = "recipe",
            name = "lrf-salt-heating-" .. (i + 30),
            category = "lrf-panel4",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = min_temp + 3000, maximum_temperature = max_temp + 3000},
            },
            results = {
                {type = "fluid", name = "molten-salt", amount = 100, temperature = temp + 3000},
            },
        }:add_unlock("thermal-mk04")

    end

    temp = temp + 100
    max_temp = temp - 5
    min_temp = max_temp - 250

    log(i)
    log(temp)

end

    RECIPE {
        type = "recipe",
        name = "lrf-steam-1",
        category = "lrf",
        enabled = false,
        energy_required = 1,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = 1900, maximum_temperature = 2100},
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 2000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk01")

    RECIPE {
        type = "recipe",
        name = "lrf-steam-2",
        category = "lrf2",
        enabled = false,
        energy_required = 1,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = 2900, maximum_temperature = 3100},
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 3000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk02")

    RECIPE {
        type = "recipe",
        name = "lrf-steam-3",
        category = "lrf3",
        enabled = false,
        energy_required = 1,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = 3900, maximum_temperature = 4100},
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 4000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk03")

    RECIPE {
        type = "recipe",
        name = "lrf-steam-4",
        category = "lrf4",
        enabled = false,
        energy_required = 1,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 100, minimum_temperature = 3900, maximum_temperature = 4100},
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 5000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk04")
