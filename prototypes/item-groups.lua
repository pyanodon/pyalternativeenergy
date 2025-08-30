data:extend({
    {
        type = "item-group",
        name = "py-alternativeenergy",
        order = "u",
        inventory_order = "u",
        icon = "__pyalternativeenergygraphics__/graphics/icons/group/item-group.png",
        icon_size = 64
    },
    --MKS--
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-buildings-mk01",
        group = "py-alternativeenergy",
        order = "aa"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-buildings-mk02",
        group = "py-alternativeenergy",
        order = "ab"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-buildings-mk03",
        group = "py-alternativeenergy",
        order = "ac"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-buildings-mk04",
        group = "py-alternativeenergy",
        order = "ad"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-fluids",
        group = "py-alternativeenergy",
        order = "ba"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-items",
        group = "py-alternativeenergy",
        order = "bc"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-intermetallics-1",
        group = "py-alternativeenergy",
        order = "bd"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-intermetallics-2",
        group = "py-alternativeenergy",
        order = "be"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-intermetallics-3",
        group = "py-alternativeenergy",
        order = "bf"
    },
    {
        type = "item-subgroup",
        name = "py-rawores-thorium",
        group = "py-rawores",
        order = "br"
    },
    {
        type = "item-subgroup",
        name = "py-rawores-gd",
        group = "py-rawores",
        order = "bs"
    },
    {
        type = "item-subgroup",
        name = "py-nuclear-waste",
        group = "py-alternativeenergy",
        order = "nw"
    },
    {
        type = "item-subgroup",
        name = "py-nuclear",
        group = "py-alternativeenergy",
        order = "nu"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-parts",
        group = "py-alternativeenergy",
        order = "z"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-engine-units",
        group = "py-alternativeenergy",
        order = "zz"
    },
    --SPECIALS--
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-special-buildings",
        group = "py-alternativeenergy",
        order = "af"
    },
    {
        type = "item-subgroup",
        name = "py-alternativeenergy-thermosolar",
        group = "py-alternativeenergy",
        order = "ae"
    },
    {
        type = "item-subgroup",
        name = "test",
        group = "py-alternativeenergy",
        order = "az"
    },
    {
        type = "item-subgroup",
        name = "py-rawores-uranium-depleted",
        group = "py-rawores",
        order = "bma"
    },
})

data.raw.item[ "engine-unit" ].subgroup = "py-alternativeenergy-engine-units"
data.raw.item[ "electric-engine-unit" ].subgroup = "py-alternativeenergy-engine-units"
