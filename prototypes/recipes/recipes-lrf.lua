RECIPE({
    type = "recipe",
    name = "lrf-steam-1",
    category = "lrf",
    enabled = false,
    energy_required = 4,
    main_product = "pressured-steam",
    ingredients = {
        { type = "fluid", name = "pressured-water", amount = 1000 },
        { type = "fluid", name = "molten-salt",     amount = 100, minimum_temperature = 2000, ignored_by_stats = 100 },
    },
    results = {
        { type = "fluid", name = "pressured-steam", amount = 1000, temperature = 2000 },
        { type = "fluid", name = "molten-salt",     amount = 100,  temperature = 1000, ignored_by_stats = 100, ignored_by_productivity = 100 },
    },
    hidden = true
}):add_unlock("thermal-mk01")

RECIPE({
    type = "recipe",
    name = "lrf-steam-2",
    category = "lrf2",
    enabled = false,
    energy_required = 4,
    main_product = "pressured-steam",
    ingredients = {
        { type = "fluid", name = "pressured-water", amount = 1000 },
        { type = "fluid", name = "molten-salt",     amount = 100, minimum_temperature = 3000, ignored_by_stats = 100 },
    },
    results = {
        { type = "fluid", name = "pressured-steam", amount = 1000, temperature = 3000 },
        { type = "fluid", name = "molten-salt",     amount = 100,  temperature = 1000, ignored_by_stats = 100, ignored_by_productivity = 100 },
    },
    hidden = true
}):add_unlock("thermal-mk02")
