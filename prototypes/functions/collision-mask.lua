-- Singleton-damnit pattern from jarg

local require = require
-- force canonical name require to ensure only one instance of this library
if ... ~= "__pyalternativeenergy__/prototypes/functions/collision-mask.lua" then
    return require '__pyalternativeenergy__/prototypes/functions/collision-mask.lua'
end

if CollisionData then
    return CollisionData
end

data:extend{{
    type = "collision-layer",
    name = "wind_layer"
}}
CollisionData = {
    wind_layer = "wind_layer"
}

return CollisionData
