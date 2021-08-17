
RECIPE("nuclear-sample"):replace_ingredient('uranium-ore', 'pu-238')

TECHNOLOGY('diamond-mining'):remove_pack('chemical-science-pack'):remove_pack('py-science-pack-2'):remove_prereq('excavation-2'):add_prereq('machines-mk02')


RECIPE("lead-container"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
RECIPE("science-coating"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
RECIPE("coated-container"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
RECIPE("grease-table-mk01"):remove_unlock('diamond-mining'):add_unlock('machines-mk02')