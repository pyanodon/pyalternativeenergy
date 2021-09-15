RECIPE {
    type = "recipe",
    name = "extract-auog-eye",
    category = "slaughterhouse-auog",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "caged-auog", amount = 1},
    },
    results = {
        {type = "item", name = "animal-eye", amount = 2},
        {type = "item", name = "cage", amount = 1},
    },
    main_product = "animal-eye",
}:add_unlock("photonics")