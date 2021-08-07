local fun = require("__pyrawores__/prototypes/functions/functions")

fun.results_replacer("20-u-powder", "sand", "uranium-238", 70)
RECIPE("40-u-powder"):add_result({type = "item", name = "uranium-238", amount = 50})
RECIPE("70-u-powder"):add_result({type = "item", name = "uranium-238", amount = 20})
RECIPE("yellow-cake"):add_result({type = "item", name = "uranium-238", amount = 10})
