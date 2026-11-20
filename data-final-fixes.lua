py.global_item_replacer("uranium-238", "u-238")
py.global_item_replacer("uranium-235", "u-235")

data.raw.recipe["neutron-pyvoid-fluid"] = nil
data.raw.recipe["vitrified-glass-pyvoid"] = nil

FLUID("combustion-mixture1"):set_fields {hidden = true}
RECIPE("gasturbinemk01"):remove_unlock("energy-1"):set_fields {hidden = true}
RECIPE("gasturbinemk02"):remove_unlock("machines-mk03"):set_fields {hidden = true}
RECIPE("gasturbinemk03"):remove_unlock("machines-mk04"):set_fields {hidden = true}
ITEM("gasturbinemk01"):set_fields {hidden = true}
ITEM("gasturbinemk02"):set_fields {hidden = true}
ITEM("gasturbinemk03"):set_fields {hidden = true}