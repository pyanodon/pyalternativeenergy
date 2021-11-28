RECIPE {
    type = "recipe",
    name = "photonic-chip",
    category = "electronic",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fdtd", amount = 1},
        {type = "item", name = "fbg", amount = 2},
        {type = "item", name = "milfe", amount = 3},
        {type = "item", name = "anti-reflex-glass", amount = 2},
        {type = "item", name = "biopolymer", amount = 3},
        {type = "item", name = "optical-fiber", amount = 3},
        {type = "item", name = "lithium-niobate", amount = 5},
        {type = "item", name = "colloidal-silica", amount = 2},
        {type = "item", name = "transparent-anode", amount = 1},
        {type = "fluid", name = "vacuum", amount = 500},
    },
    results = {
        {type = "item", name = "photonic-chip", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "fbg",
    category = "pcb",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "laser-module", amount = 2},
        {type = "item", name = "cladded-core", amount = 1},
        {type = "item", name = "dbr", amount = 4},
        {type = "item", name = "gaas", amount = 2},
        {type = "fluid", name = "hydrogen", amount = 500},
    },
    results = {
        {type = "item", name = "fbg", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "fdtd",
    category = "nano",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "sc-unit", amount = 1},
        {type = "item", name = "photonic-crystal", amount = 1},
        {type = "item", name = "dbr", amount = 2},
        {type = "item", name = "dieletric-mirror", amount = 4},
        {type = "fluid", name = "helium", amount = 100},
    },
    results = {
        {type = "item", name = "fdtd", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "dieletric-mirror",
    category = "gas-separator",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "ti-n", amount = 2},
        {type = "item", name = "photonic-crystal", amount = 1},
        {type = "item", name = "zno-nanoparticles", amount = 1},
        {type = "item", name = "sb-oxide", amount = 4},
        {type = "item", name = "glass", amount = 10},
    },
    results = {
        {type = "item", name = "dieletric-mirror", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "ti-n",
    category = "hpf",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 5},
        {type = "fluid", name = "nitrogen", amount = 200},
        {type = "fluid", name = "hot-air", amount = 200},
    },
    results = {
        {type = "item", name = "ti-n", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "animal-reflectors",
    category = "biofactory",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "animal-eye", amount = 10},
        {type = "item", name = "purine-analogues", amount = 2},
        {type = "item", name = "lab-instrument", amount = 4},
        {type = "item", name = "arqad-propolis", amount = 2},
        {type = "fluid", name = "organic-solvent", amount = 200},
        {type = "fluid", name = "water", amount = 200},
        {type = "fluid", name = "arqad-jelly", amount = 50},
    },
    results = {
        {type = "item", name = "animal-reflectors", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "photonic-crystal",
    category = "nmf",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "animal-reflectors", amount = 1},
        {type = "item", name = "inverse-opal", amount = 1},
        {type = "fluid", name = "helium", amount = 100},
    },
    results = {
        {type = "item", name = "photonic-crystal", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "inverse-opal",
    category = "research",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "biopolymer", amount = 5},
        {type = "item", name = "colloidal-silica", amount = 2},
        {type = "item", name = "hardener", amount = 1},
        {type = "item", name = "yag-laser-module", amount = 1},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
    },
    results = {
        {type = "item", name = "inverse-opal", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "hardener",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "plastic-bar", amount = 3},
        {type = "item", name = "glycidylamine", amount = 2},
        {type = "item", name = "phenol", amount = 10},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
        {type = "fluid", name = "fatty-acids", amount = 100},
        {type = "fluid", name = "organic-acid-anhydride", amount = 100},
    },
    results = {
        {type = "item", name = "hardener", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")

RECIPE {
    type = "recipe",
    name = "glycidylamine",
    category = "research",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "flask", amount = 5},
        {type = "fluid", name = "ech", amount = 100},
        {type = "fluid", name = "aniline", amount = 100},
    },
    results = {
        {type = "item", name = "glycidylamine", amount = 1},
    },
    --main_product = "middle-processed-lard",
}:add_unlock("photonics")