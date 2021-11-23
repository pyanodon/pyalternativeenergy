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
        {type = "item", name = "utility-box-mk01", amount = 5},
        {type = "item", name = "yaw-drive-mk01", amount = 1},
        {type = "item", name = "brake-mk01", amount = 1},
        {type = "item", name = "electronics-mk01", amount = 2},
        {type = "item", name = "shaft-mk01", amount = 1},
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
    category = "electronic",
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
        {type = "item", name = "battery-mk01", amount = 3},
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

--MK02

RECIPE {
    type = "recipe",
    name = "blade-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "item", name = "nxsb-alloy", amount = 5},
        {type = "item", name = "rayon", amount = 5},
    },
    results = {
        {type = "item", name = "blade-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "rotor-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "blade-mk02", amount = 3},
        {type = "item", name = "bolts", amount = 30},
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "item", name = "nxsb-alloy", amount = 10},
        {type = "item", name = "rubber", amount = 10},
        {type = "item", name = "rayon", amount = 10},
    },
    results = {
        {type = "item", name = "rotor-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "yaw-drive-mk02",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "engine-unit", amount = 1},
        {type = "item", name = "eva", amount = 20},
        {type = "item", name = "stainless-steel", amount = 40},
        {type = "item", name = "nbfe-alloy", amount = 30},
        {type = "item", name = "rubber", amount = 20},
        {type = "fluid", name = "heavy-oil", amount = 200},
        {type = "item", name = "small-parts-02", amount = 50},
        {type = "item", name = "rayon", amount = 15},
    },
    results = {
        {type = "item", name = "yaw-drive-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "vane-mk02",
    category = "casting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "fiberglass", amount = 20},
        {type = "item", name = "mold", amount = 2},
    },
    results = {
        {type = "item", name = "vane-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "anemometer-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "bakelite", amount = 30},
        {type = "item", name = "steel-plate", amount = 5},
        {type = "item", name = "small-parts-02", amount = 15},
    },
    results = {
        {type = "item", name = "anemometer-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "utility-box-mk02",
    category = "electronic",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "stainless-steel", amount = 20},
        {type = "item", name = "bakelite", amount = 30},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "small-parts-02", amount = 20},
        {type = "item", name = "red-wire", amount = 20},
        {type = "item", name = "glass", amount = 10},
    },
    results = {
        {type = "item", name = "utility-box-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "tower-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "nbfe-alloy", amount = 40},
        {type = "item", name = "nxsb-alloy", amount = 15},
        {type = "item", name = "stainless-steel", amount = 30},
        {type = "item", name = "small-parts-02", amount = 20},
        {type = "item", name = "solder", amount = 20},
    },
    results = {
        {type = "item", name = "tower-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "shaft-mk02",
    category = "casting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "molten-stainless-steel", amount = 100},
        {type = "item", name = "mold", amount = 2},
    },
    results = {
        {type = "item", name = "shaft-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "gearbox-mk02",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "small-parts-02", amount = 200},
        {type = "item", name = "aluminium-plate", amount = 30},
        {type = "item", name = "niobium-plate", amount = 20},
        {type = "item", name = "stainless-steel", amount = 100},
        {type = "item", name = "titanium-plate", amount = 50},
        {type = "item", name = "belt", amount = 10},
        {type = "item", name = "nxsb-alloy", amount = 25},
        {type = "fluid", name = "lubricant", amount = 300},
    },
    results = {
        {type = "item", name = "gearbox-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "electronics-mk02",
    category = "electronic",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "pcb2", amount = 2},
        {type = "item", name = "mosfet", amount = 50},
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "item", name = "capacitor2", amount = 30},
        {type = "item", name = "resistor2", amount = 15},
        {type = "item", name = "red-wire", amount = 50},
        {type = "item", name = "solder", amount = 5},
        {type = "item", name = "epoxy", amount = 10},
        {type = "item", name = "iron-plate", amount = 5},
        {type = "item", name = "glass", amount = 4},
        {type = "item", name = "bakelite", amount = 20},

    },
    results = {
        {type = "item", name = "electronics-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "controler-mk02",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "small-lamp", amount = 10},
        {type = "item", name = "nexelit-battery", amount = 5},
        {type = "item", name = "eva", amount = 20},
        {type = "item", name = "bakelite", amount = 15},
        {type = "item", name = "small-parts-02", amount = 20},
    },
    results = {
        {type = "item", name = "controler-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "brake-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "ceramic", amount = 30},
        {type = "item", name = "cellulose", amount = 25},
        {type = "item", name = "bakelite", amount = 10},
        {type = "item", name = "stainless-steel", amount = 10},
        {type = "item", name = "aramid", amount = 20},
        {type = "item", name = "small-parts-02", amount = 10},
    },
    results = {
        {type = "item", name = "brake-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

RECIPE {
    type = "recipe",
    name = "nacelle-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "eva", amount = 10},
        {type = "item", name = "small-parts-02", amount = 150},
        {type = "item", name = "gearbox-mk02", amount = 1},
        {type = "item", name = "shaft-mk02", amount = 1},
        {type = "item", name = "controler-mk02", amount = 1},
        {type = "item", name = "utility-box-mk02", amount = 1},
        {type = "item", name = "yaw-drive-mk02", amount = 1},
        {type = "item", name = "brake-mk02", amount = 1},
        {type = "item", name = "stainless-steel", amount = 40},
    },
    results = {
        {type = "item", name = "nacelle-mk02", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk02")

--MK03

RECIPE {
    type = "recipe",
    name = "blade-mk03",
    category = "casting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "molten-aluminium", amount = 400},
        {type = "fluid", name = "molten-silver", amount = 100},
        {type = "item", name = "mold", amount = 2},
        {type = "item", name = "aramid", amount = 5},
        {type = "item", name = "phenolicboard", amount = 5},
    },
    results = {
        {type = "item", name = "blade-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "rotor-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "blade-mk03", amount = 3},
        {type = "item", name = "alag-alloy", amount = 10},
        {type = "item", name = "latex", amount = 10},
        {type = "item", name = "aramid", amount = 10},
        {type = "item", name = "nxsb-alloy", amount = 5},
        {type = "item", name = "cyanoacrylate", amount = 15},
        {type = "item", name = "fiberglass", amount = 50},
        {type = "item", name = "small-parts-03", amount = 40},
    },
    results = {
        {type = "item", name = "rotor-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "yaw-drive-mk03",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "electric-engine-unit", amount = 2},
        {type = "item", name = "fiberglass", amount = 20},
        {type = "item", name = "super-steel", amount = 50},
        {type = "item", name = "nbti-alloy", amount = 30},
        {type = "item", name = "mositial-nx", amount = 5},
        {type = "fluid", name = "grease", amount = 300},
        {type = "item", name = "small-parts-03", amount = 100},
        {type = "item", name = "aramid", amount = 25},
    },
    results = {
        {type = "item", name = "yaw-drive-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "vane-mk03",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "super-steel", amount = 20},
        {type = "item", name = "nbfe-alloy", amount = 5},
        {type = "item", name = "small-parts-03", amount = 20},
    },
    results = {
        {type = "item", name = "vane-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "anemometer-mk03",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "plastic-bar", amount = 20},
        {type = "item", name = "cyanoacrylate", amount = 15},
        {type = "item", name = "super-steel", amount = 10},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "small-parts-03", amount = 40},
        {type = "item", name = "glass", amount = 20},
    },
    results = {
        {type = "item", name = "anemometer-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "utility-box-mk03",
    category = "electronic",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "super-steel", amount = 40},
        {type = "item", name = "plastic-bar", amount = 20},
        {type = "item", name = "processing-unit", amount = 20},
        {type = "item", name = "small-parts-03", amount = 50},
        {type = "item", name = "red-wire", amount = 50},
        {type = "item", name = "green-wire", amount = 50},
        {type = "item", name = "titanium-plate", amount = 10},
    },
    results = {
        {type = "item", name = "utility-box-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "tower-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "nbti-alloy", amount = 50},
        {type = "item", name = "alag-alloy", amount = 15},
        {type = "item", name = "super-steel", amount = 100},
        {type = "item", name = "small-parts-03", amount = 20},
        {type = "item", name = "concrete", amount = 30},
        {type = "item", name = "titanium-plate", amount = 50},
        {type = "item", name = "mositial-nx", amount = 3},
    },
    results = {
        {type = "item", name = "tower-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "shaft-mk03",
    category = "casting",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "molten-super-steel", amount = 200},
        {type = "item", name = "mold", amount = 2},
        {type = "item", name = "boron-carbide", amount = 10},
    },
    results = {
        {type = "item", name = "shaft-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "gearbox-mk03",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "small-parts-03", amount = 300},
        {type = "item", name = "alag-alloy", amount = 30},
        {type = "item", name = "niobium-plate", amount = 20},
        {type = "item", name = "super-steel", amount = 100},
        {type = "item", name = "mositial-nx", amount = 3},
        {type = "item", name = "nbti-alloy", amount = 40},
        {type = "item", name = "belt", amount = 10},
        {type = "item", name = "boron-carbide", amount = 20},
        {type = "item", name = "nxsb-alloy", amount = 40},
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "grease", amount = 200},
    },
    results = {
        {type = "item", name = "gearbox-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "electronics-mk03",
    category = "electronic",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "pcb3", amount = 2},
        {type = "item", name = "neuromorphic-chip", amount = 20},
        {type = "item", name = "processor", amount = 1},
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "item", name = "capacitor2", amount = 20},
        {type = "item", name = "capacitor3", amount = 40},
        {type = "item", name = "resistor3", amount = 15},
        {type = "item", name = "solder", amount = 5},
        {type = "item", name = "epoxy", amount = 10},
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "glass", amount = 5},
        {type = "item", name = "plastic-bar", amount = 20},

    },
    results = {
        {type = "item", name = "electronics-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "controler-mk03",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "processing-unit", amount = 10},
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "small-lamp", amount = 10},
        {type = "item", name = "plastic-bar", amount = 20},
        {type = "item", name = "biobattery", amount = 3},
        {type = "item", name = "small-parts-03", amount = 50},
    },
    results = {
        {type = "item", name = "controler-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "brake-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "nxsb-alloy", amount = 20},
        {type = "item", name = "graphite", amount = 25},
        {type = "item", name = "ceramic", amount = 40},
        {type = "item", name = "phenolicboard", amount = 10},
        {type = "item", name = "super-steel", amount = 10},
        {type = "item", name = "cyanoacrylate", amount = 15},
        {type = "item", name = "small-parts-03", amount = 20},
    },
    results = {
        {type = "item", name = "brake-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "hydraulic-system-mk01",
    category = "crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "niobium-pipe", amount = 20},
        {type = "item", name = "rubber", amount = 50},
        {type = "item", name = "cyanoacrylate", amount = 15},
        {type = "item", name = "pump", amount = 2},
        {type = "item", name = "small-parts-03", amount = 20},
    },
    results = {
        {type = "item", name = "hydraulic-system-mk01", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")

RECIPE {
    type = "recipe",
    name = "nacelle-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "cyanoacrylate", amount = 10},
        {type = "item", name = "small-parts-03", amount = 200},
        {type = "item", name = "gearbox-mk03", amount = 1},
        {type = "item", name = "controler-mk03", amount = 1},
        {type = "item", name = "shaft-mk03", amount = 1},
        {type = "item", name = "utility-box-mk03", amount = 1},
        {type = "item", name = "yaw-drive-mk03", amount = 1},
        {type = "item", name = "hydraulic-system-mk01", amount = 4},
        {type = "item", name = "brake-mk03", amount = 1},
        {type = "item", name = "super-steel", amount = 100},
    },
    results = {
        {type = "item", name = "nacelle-mk03", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("wind-mk03")