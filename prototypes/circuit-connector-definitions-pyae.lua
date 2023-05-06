-- Holds circuit connection definitions for PyAE entities.
-- variation counts from 0 (Python-like).

antimonium_drill_connector_definitions = circuit_connector_definitions.create
(
  universal_connector_template,
  {--Directions are up, right, down, left.
    { variation = 27, main_offset = util.by_pixel(33, 8), shadow_offset = util.by_pixel(27, 20), show_shadow = false }, 
    { variation = 27, main_offset = util.by_pixel(33, 8), shadow_offset = util.by_pixel(27, 20), show_shadow = false },
    { variation = 27, main_offset = util.by_pixel(33, 8), shadow_offset = util.by_pixel(27, 20), show_shadow = false },
    { variation = 27, main_offset = util.by_pixel(33, 8), shadow_offset = util.by_pixel(27, 20), show_shadow = false }
  }
)

geothermal_plant_connector_definitions = circuit_connector_definitions.create
(
  universal_connector_template,
  {
    { variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false }, 
    { variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false },
    { variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false },
    { variation = 26, main_offset = util.by_pixel(60, 155), shadow_offset = util.by_pixel(54, 167), show_shadow = false }
  }
)