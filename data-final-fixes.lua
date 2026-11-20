py.global_item_replacer("uranium-238", "u-238")
py.global_item_replacer("uranium-235", "u-235")

data.raw.recipe["neutron-pyvoid-fluid"] = nil
data.raw.recipe["vitrified-glass-pyvoid"] = nil


ITEM("processed-light-oil"):set_fields {hidden = true}
ITEM("hot-reaction-gas"):set_fields {hidden = true}