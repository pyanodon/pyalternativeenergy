-- Singleton-damnit pattern from jarg

local require = require
-- force canonical name require to ensure only one instance of this library
if ... ~= "__pyalternativeenergy__/prototypes/functions/collision-mask.lua" then
    return require '__pyalternativeenergy__/prototypes/functions/collision-mask.lua'
end

if CollisionData then
    return CollisionData
end

local collision_mask_util = require 'collision-mask-util'
CollisionData = {
    wind_layer = collision_mask_util.get_first_unused_layer()
}

return CollisionData
