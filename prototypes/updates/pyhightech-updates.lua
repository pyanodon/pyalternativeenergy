
--TECHNOLOGY--

--BUILDINDS--
RECIPE("clay-pit-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("chipshooter-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("pcb-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("fbreactor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("particle-accelerator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 20})
RECIPE("electronics-factory-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 1})
RECIPE("pulp-mill-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("nano-assembler-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 15})



-----RECIPES-----
RECIPE('accumulator-mk03'):add_unlock({"nano-tech"})
RECIPE('oxalic-acid'):replace_ingredient("sulfuric-acid", "cyanic-acid")
RECIPE('crystalized-gd'):set_category("fbreactor")

RECIPE("pa-uranium-235"):remove_unlock('nucleo')
RECIPE("sodium-silicate"):remove_unlock('nano-tech'):add_unlock({"silicon-mk01"})
RECIPE("silica-powder"):remove_unlock('nano-tech'):add_unlock({"silicon-mk01"})
RECIPE('silicon-wafer'):remove_unlock('placeholder') -- MUST SOLVE THAT WHEN THINGS GOT FIXED
RECIPE("electronic-circuit"):add_ingredient({type = "item", name = "battery-mk01", amount = 1})
RECIPE("intelligent-unit"):add_ingredient({type = "item", name = "quantum-battery", amount = 2})
RECIPE("intelligent-unit"):add_ingredient({type = "item", name = "photonic-chip", amount = 1})


----EXCLUSIVE RECIPES----
