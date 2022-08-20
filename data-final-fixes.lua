require('__stdlib__/stdlib/data/data').Util.create_data_globals()

local torchTable = data.raw["burner-generator"]["torch"]
torchTable.energy_source.type = "burner"
torchTable.max_power_output = "10kW"

local vehicleAddLampList = {
  "car", "tank", "vehicle-hauler", "vehicle-miner", "vehicle-chaingunner", "vehicle-warden",
  "vehicle-flame-tank", "boat","better-cargo-plane","cargo-plane", "gunship", "jet", "flying-fortress"
}

local militaryDisableHandCraftList = {
  "car", "tank", "vehicle-chaingunner", "vehicle-flame-tank", "gunship", "jet", "flying-fortress", "ironclad", "spidertron",
  "basic-infantry", "heavy-infantry", "power-infantry",
}

for k,v in pairs(vehicleAddLampList) do
  RECIPE(v)
    :add_ingredient({type = "item", name = "small-lamp", amount = 1})
end

for k,v in pairs(militaryDisableHandCraftList) do
  RECIPE(v)
    :change_category("advanced-crafting")
end

RECIPE("vehicle-hauler")
  :replace_ingredient("motor", {type = "item", name = "motor", amount = 10})
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 20})
  :add_ingredient({type = "item", name = "inserter", amount = 6})

RECIPE("vehicle-miner")
  :replace_ingredient("motor", {type = "item", name = "motor", amount = 10})
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 20})
  :add_ingredient({type = "item", name = "burner-inserter", amount = 2})
  :add_ingredient({type = "item", name = "electronic-circuit", amount = 6})

RECIPE("vehicle-miner-mk2")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 40})
  :add_ingredient({type = "item", name = "inserter", amount = 2})

RECIPE("vehicle-miner-mk3")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 60})
  :add_ingredient({type = "item", name = "fast-inserter", amount = 4})

RECIPE("vehicle-miner-mk4")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 80})
  :add_ingredient({type = "item", name = "stack-inserter", amount = 6})

RECIPE("vehicle-miner-mk5")
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 100})
  :add_ingredient({type = "item", name = "stack-filter-inserter", amount = 12})

RECIPE("vehicle-chaingunner")
  :replace_ingredient("iron-plate", {type = "item", name = "iron-plate", amount = 40})
  :replace_ingredient("motor", {type = "item", name = "motor", amount = 12})
  :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 40})
  :add_ingredient({type = "item", name = "steel-plate", amount = 20})
  :add_ingredient({type = "item", name = "electronic-circuit", amount = 10})

RECIPE("ironclad")
  :add_ingredient({type = "item", name = "advanced-circuit", amount = 10})

RECIPE("gun-turret"):add_ingredient({type = "item", name = "electronic-circuit", amount = 1})
