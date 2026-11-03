data:extend{
  { -- value modulated at runtime. does nothing when set during data stage
    type = "surface-property",
    name = "py-wind-speed",
    default_value = 1,
    hidden = true,
    hidden_in_factoriopedia = true
  },
  { -- minimum wind speed km/h
    type = "surface-property",
    name = "py-wind-speed-min",
    default_value = 0,
  },
  { -- maximum wind speed km/h
    type = "surface-property",
    name = "py-wind-speed-max",
    default_value = 0,
  },
  { -- speed at which wind speed changes. 0 is disabled, 1 is normal, > 1 is faster changes, < 1 is slower changes
    type = "surface-property",
    name = "py-wind-speed-variance",
    default_value = 0,
    hidden = true,
    hidden_in_factoriopedia = true
  },
  { -- value modulated at runtime. does nothing when set during data stage
    type = "surface-property",
    name = "py-tide-height",
    default_value = 1,
    hidden = true,
    hidden_in_factoriopedia = true
  },
  { -- minimum tide height m
    type = "surface-property",
    name = "py-tide-height-min",
    default_value = 0,
  },
  { -- maximum tide height m
    type = "surface-property",
    name = "py-tide-height-max",
    default_value = 0,
  },
  { -- speed at which tide height changes. 0 is disabled, 1 is normal, > 1 is faster changes, < 1 is slower changes
    type = "surface-property",
    name = "py-tide-height-variance",
    default_value = 0,
    hidden = true,
    hidden_in_factoriopedia = true
  },
}

data.raw.planet.nauvis.surface_properties = data.raw.planet.nauvis.surface_properties or {}
data.raw.planet.nauvis.surface_properties["py-wind-speed-min"] = 20  -- 20  km/h
data.raw.planet.nauvis.surface_properties["py-wind-speed-max"] = 100 -- 100 km/h
data.raw.planet.nauvis.surface_properties["py-wind-speed-variance"] = 1
data.raw.planet.nauvis.surface_properties["py-wind-speed"] = 60 -- avg, for planners like YAFC
data.raw.planet.nauvis.surface_properties["py-tide-height-min"] = 8  -- 8  m
data.raw.planet.nauvis.surface_properties["py-tide-height-max"] = 12 -- 12 m
data.raw.planet.nauvis.surface_properties["py-tide-height-variance"] = 1
data.raw.planet.nauvis.surface_properties["py-tide-height"] = 10 -- avg, for planners like YAFC