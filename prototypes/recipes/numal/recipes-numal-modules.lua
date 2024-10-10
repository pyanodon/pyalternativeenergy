--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "numal-mk02",
    category = "rc",
    allowed_module_categories = {"numal"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "numal",         amount = 2},
        {type = "item", name = "caged-mukmoux", amount = 1},
        {type = "item", name = "guts",          amount = 5},
        {type = "item", name = "bedding",       amount = 10},
        {type = "item", name = "water-barrel",  amount = 15},
    },
    results = {
        {type = "item", name = "numal-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "barrel",     amount = 15},
        {type = "item", name = "numal",      amount = 1, probability = 0.5},
    },
    main_product = "numal-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",       icon_size = 64},
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-numal",
    order = "za"
}:add_unlock("numal-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "numal-mk03",
    category = "rc",
    allowed_module_categories = {"numal"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "numal-mk02",      amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "caged-mukmoux",   amount = 1},
        {type = "item", name = "guts",            amount = 5},
        {type = "item", name = "bedding",         amount = 10},
        {type = "item", name = "water-barrel",    amount = 15},
    },
    results = {
        {type = "item", name = "numal-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "barrel",     amount = 15},
        {type = "item", name = "numal-mk02", amount = 1, probability = 0.6},
    },
    main_product = "numal-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",       icon_size = 64},
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-numal",
    order = "zb"
}:add_unlock("numal-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "numal-mk04",
    category = "rc",
    allowed_module_categories = {"numal"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "numal-mk03",           amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "caged-mukmoux",        amount = 1},
        {type = "item", name = "guts",                 amount = 5},
        {type = "item", name = "bedding",              amount = 10},
        {type = "item", name = "water-barrel",         amount = 15},
    },
    results = {
        {type = "item", name = "numal-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "barrel",     amount = 15},
        {type = "item", name = "numal-mk03", amount = 1, probability = 0.7},
    },
    main_product = "numal-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",       icon_size = 64},
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-numal",
    order = "zc"
}:add_unlock("numal-mk04")


--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "numal-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "numal-mk02",       amount = 4},
        {type = "item",  name = "numal-codex-mk02", amount = 1},
        {type = "item",  name = "bio-scafold",      amount = 5},
        {type = "item",  name = "animal-sample-01", amount = 2},
        {type = "item",  name = "cdna",             amount = 2},
        {type = "fluid", name = "fetal-serum",      amount = 80},
        {type = "fluid", name = "zogna-bacteria",   amount = 50},
        {type = "fluid", name = "water-saline",     amount = 1000},
        {type = "item",  name = "dna-polymerase",   amount = 1},
        {type = "item",  name = "bio-sample",       amount = 10},
    },
    results = {
        {type = "item", name = "numal-mk02", amount = 5},
    },
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png",    icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-numal",
    order = "za"
}:add_unlock("numal-mk02")

RECIPE {
    type = "recipe",
    name = "compile-numal-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "numal-codex",    amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "numal-codex-mk02", amount = 1},
    },
}:add_unlock("numal-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "numal-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "numal-mk03",       amount = 4},
        {type = "item",  name = "numal-codex-mk03", amount = 1},
        {type = "item",  name = "bio-scafold",      amount = 8},
        {type = "item",  name = "cdna",             amount = 2},
        {type = "item",  name = "alien-sample-03",  amount = 1},
        {type = "item",  name = "adrenal-cortex",   amount = 1},
        {type = "item",  name = "paragen",          amount = 1},
        {type = "fluid", name = "mutant-enzymes",   amount = 50},
        {type = "fluid", name = "arqad-honey",      amount = 100},
        {type = "fluid", name = "chelator",         amount = 50},
    },
    results = {
        {type = "item", name = "numal-mk03", amount = 5},
    },
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png",    icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-numal",
    order = "za"
}:add_unlock("numal-mk03")


RECIPE {
    type = "recipe",
    name = "compile-numal-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "numal-codex-mk02",  amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "numal-codex-mk03", amount = 1},
    },
}:add_unlock("numal-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "numal-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = "item",  name = "numal-mk04",             amount = 4},
        {type = "item",  name = "numal-codex-mk04",       amount = 1},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "bio-scafold",            amount = 8},
        {type = "item",  name = "alien-enzymes",          amount = 1},
        {type = "item",  name = "hyaline",                amount = 1},
        {type = "item",  name = "nonconductive-phazogen", amount = 1},
        {type = "item",  name = "reca",                   amount = 1},
        {type = "fluid", name = "clean-organic-pulp",     amount = 100},
        {type = "fluid", name = "gta",                    amount = 50},
        {type = "fluid", name = "water-saline",           amount = 1000},
    },
    results = {
        {type = "item", name = "numal-mk04", amount = 5},
    },
    icons =
    {
        {icon = "__pyalternativeenergygraphics__/graphics/icons/numal.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png",    icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-numal",
    order = "za"
}:add_unlock("numal-mk04")

RECIPE {
    type = "recipe",
    name = "compile-numal-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "numal-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",     amount = 1},
    },
    results = {
        {type = "item", name = "numal-codex-mk04", amount = 1},
    },
}:add_unlock("numal-mk04")
