-- Holds circuit connection definitions for PyAE entities.
-- variation counts from 0 (Python-like).

circuit_connector_definitions["antimony-drill-mkxx"] = circuit_connector_definitions.create_vector
    (
      universal_connector_template,
      { --Directions are up, right, down, left.
        {variation = 23, main_offset = util.by_pixel(65, -24), shadow_offset = util.by_pixel(59, -12), show_shadow = false},
        {variation = 23, main_offset = util.by_pixel(65, -24), shadow_offset = util.by_pixel(59, -12), show_shadow = false},
        {variation = 23, main_offset = util.by_pixel(65, -24), shadow_offset = util.by_pixel(59, -12), show_shadow = false},
        {variation = 23, main_offset = util.by_pixel(65, -24), shadow_offset = util.by_pixel(59, -12), show_shadow = false}
      }
    )

circuit_connector_definitions["geothermal-plant-mk01"] = circuit_connector_definitions.create_vector
    (
      universal_connector_template,
      {
        {variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false},
        {variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false},
        {variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false},
        {variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false}
      }
    )

circuit_connector_definitions["ree-mining-drill-mkxx"] = circuit_connector_definitions.create_vector
    (
      universal_connector_template,
      { --Directions are up, right, down, left.
        {variation = 26, main_offset = util.by_pixel(60, 32), shadow_offset = util.by_pixel(54, 44), show_shadow = false},
        {variation = 26, main_offset = util.by_pixel(60, 32), shadow_offset = util.by_pixel(54, 44), show_shadow = false},
        {variation = 26, main_offset = util.by_pixel(60, 32), shadow_offset = util.by_pixel(54, 44), show_shadow = false},
        {variation = 26, main_offset = util.by_pixel(60, 32), shadow_offset = util.by_pixel(54, 44), show_shadow = false}
      }
    )
