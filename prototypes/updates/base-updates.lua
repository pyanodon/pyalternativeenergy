
-- TECH CHANGES
data.raw.technology['uranium-processing'].enabled = true
data.raw.technology['uranium-processing'].hidden = false

TECHNOLOGY('uranium-processing'):remove_pack('chemical-science-pack'):remove_prereq('chemical-science-pack')

TECHNOLOGY('chemical-science-pack'):add_prereq('uranium-processing')
