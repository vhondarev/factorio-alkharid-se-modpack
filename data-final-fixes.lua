require('__stdlib__/stdlib/data/data').Util.create_data_globals()

RECIPE("vehicle-hauler")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 10})
  :add_ingredient({type = "item", name = "inserter", amount = 6})

RECIPE("vehicle-miner")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 10})
  :add_ingredient({type = "item", name = "burner-inserter", amount = 1})

RECIPE("vehicle-miner-mk2")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 20})
  :add_ingredient({type = "item", name = "inserter", amount = 2})

RECIPE("vehicle-miner-mk3")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 40})
  :add_ingredient({type = "item", name = "fast-inserter", amount = 4})

RECIPE("vehicle-miner-mk4")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 60})
  :add_ingredient({type = "item", name = "stack-inserter", amount = 6})

RECIPE("vehicle-miner-mk5")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 80})
  :add_ingredient({type = "item", name = "stack-filter-inserter", amount = 12})

RECIPE("vehicle-chaingunner")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 16})
  :add_ingredient({type = "item", name = "steel-plate", amount = 4})

RECIPE("gun-turret"):add_ingredient({type = "item", name = "electronic-circuit", amount = 1})
