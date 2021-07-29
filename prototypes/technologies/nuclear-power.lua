TECHNOLOGY {
    type = "technology",
    name = "nuclear-power",
    icon_size = 128,
    icon = "__pyalternativeenergygraphics__/graphics/technology/nuclear-mk01.png",
    effects = {},
    prerequisites = {"uranium-mk01","thermal-mk01"},
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
