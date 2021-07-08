TECHNOLOGY {
    type = "technology",
    name = "nuclear-power",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects = {},
    prerequisites = {"uranium-mk01"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30,
      count = 800
    },
    order = "e-p-b-c"
  }
