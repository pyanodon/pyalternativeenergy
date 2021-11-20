--MK01

RECIPE {
    type = "recipe",
    name = "blade-mk01",
    category = "wpu",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "treated-wood", amount = 10},
        {type = "item", name = "melamine", amount = 5},
    },
    results = {
        {type = "item", name = "blade-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "yaw-drive-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "iron-stick", amount = 1},
        {type = "item", name = "steel-plate", amount = 30},
        {type = "item", name = "duralumin", amount = 20},
        {type = "item", name = "rubber", amount = 15},
        {type = "item", name = "small-parts-01", amount = 50},
    },
    results = {
        {type = "item", name = "yaw-drive-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "vane-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 15},
        {type = "item", name = "bolts", amount = 50},
    },
    results = {
        {type = "item", name = "vane-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "utility-box-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 10},
        {type = "item", name = "copper-plate", amount = 25},
        {type = "item", name = "electronic-circuit", amount = 3},
        {type = "item", name = "plastic-bar", amount = 5},
        {type = "item", name = "tinned-cable", amount = 50},
    },
    results = {
        {type = "item", name = "utility-box-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "tower-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 50},
        {type = "item", name = "bolts", amount = 30},
        {type = "item", name = "solder", amount = 15},
    },
    results = {
        {type = "item", name = "tower-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "shaft-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "fenxsb-alloy", amount = 10},
        {type = "item", name = "solder", amount = 15},
    },
    results = {
        {type = "item", name = "shaft-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "rotor-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "blade-mk01", amount = 7},
        {type = "item", name = "bolts", amount = 35},
        {type = "item", name = "treated-wood", amount = 10},
        {type = "item", name = "melamine", amount = 10},
    },
    results = {
        {type = "item", name = "rotor-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "nacelle-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "melamine-resin", amount = 10},
        {type = "item", name = "small-parts-01", amount = 50},
        {type = "item", name = "gearbox-mk01", amount = 1},
        {type = "item", name = "controler-mk01", amount = 1},
        {type = "item", name = "yaw-drive-mk01", amount = 1},
        {type = "item", name = "brake-mk01", amount = 1},
        {type = "item", name = "electronics-mk01", amount = 2},
        {type = "item", name = "iron-plate", amount = 30},
    },
    results = {
        {type = "item", name = "nacelle-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "gearbox-mk01",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 100},
        {type = "item", name = "duralumin", amount = 20},
        {type = "item", name = "steel-plate", amount = 25},
        {type = "item", name = "titanium-plate", amount = 20},
        {type = "item", name = "fenxsb-alloy", amount = 20},
        {type = "fluid", name = "fish-oil", amount = 100},
    },
    results = {
        {type = "item", name = "gearbox-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "electronics-mk01",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "pcb1", amount = 2},
        {type = "item", name = "vacuum-tube", amount = 5},
        {type = "item", name = "capacitor1", amount = 10},
        {type = "item", name = "resistor1", amount = 20},
        {type = "item", name = "tinned-cable", amount = 10},
        {type = "item", name = "solder", amount = 5},
        {type = "item", name = "iron-plate", amount = 5},
        {type = "item", name = "glass", amount = 4},

    },
    results = {
        {type = "item", name = "electronics-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "controler-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "electronic-circuit", amount = 4},
        {type = "item", name = "iron-plate", amount = 5},
        {type = "item", name = "glass", amount = 4},
        {type = "item", name = "ore-quartz", amount = 5},
    },
    results = {
        {type = "item", name = "controler-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "brake-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "ceramic", amount = 10},
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "glass", amount = 10},
        {type = "item", name = "steel-plate", amount = 5},
        {type = "item", name = "vitreloy", amount = 2},
        {type = "item", name = "small-parts-01", amount = 10},
    },
    results = {
        {type = "item", name = "brake-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")

RECIPE {
    type = "recipe",
    name = "anemometer-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "plastic-bar", amount = 10},
        {type = "item", name = "small-parts-01", amount = 15},
    },
    results = {
        {type = "item", name = "anemometer-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk01")