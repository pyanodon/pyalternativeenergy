local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

FUN.global_item_replacer("uranium-238", "u-238")
FUN.global_item_replacer("uranium-235", "u-235")

data.raw.recipe['neutron-pyvoid-fluid'] = nil

for _, drill in pairs(data.raw['mining-drill']) do
    if drill.animations and not drill.graphics_set then
        drill.graphics_set = {
            animation = drill.animations,
            max_animation_progress = 1,
            min_animation_progress = 1
        }
        if not drill.wet_mining_graphics_set then
            drill.wet_mining_graphics_set = drill.graphics_set
        end
    end
end