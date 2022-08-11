require('__stdlib__/stdlib/data/data').Util.create_data_globals()


-- Update Kombat Drones
if mods["Kombat_Drones"] then
  TECHNOLOGY("infantry-depot")
    :add_pack("logistic-science-pack")
    :add_pack("military-science-pack")
    :remove_prereq("military")
    :add_prereq("logistics-2")
    :add_prereq("fast-inserter")
    :add_prereq("advanced-electronics")
    :add_prereq("military-science-pack")

  TECHNOLOGY("heavy-infantry")
    :add_pack("military-science-pack")
    :add_prereq("heavy-armor")

  TECHNOLOGY("power-infantry")
    :add_pack("chemical-science-pack")
    :add_prereq("chemical-science-pack")
    :add_prereq("modular-armor")

  RECIPE("infantry-depot")
    :add_ingredient({type = "item", name = "advanced-circuit", amount = 10})
    :add_ingredient({type = "item", name = "fast-transport-belt", amount = 10})
    :add_ingredient({type = "item", name = "fast-inserter", amount = 10})

  RECIPE("basic-infantry"):add_ingredient({type = "item", name = "electronic-circuit", amount = 2})
  RECIPE("heavy-infantry"):add_ingredient({type = "item", name = "advanced-circuit", amount = 2})
  RECIPE("power-infantry"):add_ingredient({type = "item", name = "processing-unit", amount = 2})
end

-- Update Mining Drones
if mods["Mining_Drones"] then
  TECHNOLOGY {
    type = "technology",
    name = "mining-depot",
    localised_name = {"mining-depot"},
    icon = "__Mining_Drones__/data/technologies/mining_drones_tech.png",
    icon_size = 256,
    order = "a",
    upgrade = false,
    prerequisites = {"modules", "mining-productivity-1"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "mining-depot"
      },
      {
        type = "unlock-recipe",
        recipe = "mining-drone"
      },
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 45
    }
  }

  TECHNOLOGY("mining-drone-mining-speed-1")
    :add_prereq("mining-depot")
  TECHNOLOGY("mining-drone-productivity-1")
    :add_prereq("mining-depot")

  RECIPE("mining-depot")
    :set_enabled(false)
    :add_ingredient({type = "item", name = "electronic-circuit", amount = 10})

  RECIPE("mining-drone")
    :set_enabled(false)
    :add_ingredient({type = "item", name = "electric-motor", amount = 1})
end


-- Update Transport Drones
if mods["Transport_Drones"] then
  TECHNOLOGY("transport-system")
    :add_prereq("logistics-2")
    :add_prereq("advanced-electronics")

  TECHNOLOGY("fast-road")
    :add_prereq("concrete")


  for _, depot in pairs ({"request-depot", "supply-depot", "fuel-depot", "fluid-depot", "buffer-depot"}) do
    RECIPE(depot):add_ingredient({type = "item", name = "electronic-circuit", amount = 5})
  end

  RECIPE("transport-drone"):add_ingredient({type = "item", name = "electronic-circuit", amount = 1})
end


-- Update Construction Drones
if mods["Updated_Construction_Drones"] then
  RECIPE("Construction Drone"):add_ingredient({type = "item", name = "electric-motor", amount = 2})
end

-- Update AAI Vehicles
if mods["aai-programmable-vehicles"] and mods["aai-vehicles-miner"] then
  TECHNOLOGY("basic-vehicles")
    :replace_pack("automation-science-pack", "automation-science-pack", 5)
    :add_prereq("logistics")
    :add_prereq("circuit-network")

  TECHNOLOGY("vehicle-miner")
    :replace_pack("automation-science-pack", "automation-science-pack", 5)
    :add_prereq("logistics")
    :add_prereq("circuit-network")

  TECHNOLOGY("position-beacon")
    :add_prereq("basic-vehicles")

  TECHNOLOGY("vehicle-chaingunner")
    :replace_pack("automation-science-pack", "automation-science-pack", 10)
    :add_prereq("steel-processing")

  RECIPE("basic-vehicles")
    :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 12})
  RECIPE("vehicle-miner")
    :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 8})
  RECIPE("vehicle-chaingunner")
    :add_ingredient({type = "item", name = "iron-gear-wheel", amount = 16})
    :add_ingredient({type = "item", name = "steel-plate", amount = 4})

end

-- Update AAI Ironclad
if mods["aai-vehicles-ironclad"] and mods["cargo-ships"] then
  TECHNOLOGY("ironclad")
    :remove_prereq("automobilism")
    :add_prereq("water_transport")

  RECIPE("ironclad")
    :add_ingredient({type = "item", name = "advanced-circuit", amount = 6})
end

-- Update Hovercrafts
if mods["Hovercrafts"] and mods["cargo-ships"] then
  TECHNOLOGY("hcraft-tech")
    :remove_prereq("automobilism")
    :add_prereq("robotics")
    :add_prereq("water_transport")

  RECIPE("hcraft-recipe")
    :add_ingredient({type = "item", name = "flying-robot-frame", amount = 2})
    :add_ingredient({type = "item", name = "advanced-circuit", amount = 4})

end

-- Update Aircraft
if mods["Aircraft"] then
  TECHNOLOGY("advanced-aerodynamics")
    :remove_prereq("automobilism")
    :add_prereq("robotics")
    :add_prereq("rocket-fuel")
end


-- Update DeadlockLargerLamp
if mods["DeadlockLargerLamp"] then
  RECIPE("deadlock-copper-lamp"):add_ingredient({type = "item", name = "glass", amount = 2})
  RECIPE("deadlock-floor-lamp"):add_ingredient({type = "item", name = "glass", amount = 1})
  RECIPE("deadlock-large-lamp"):add_ingredient({type = "item", name = "glass", amount = 6})
end


-- Update Miniloader
if mods["miniloader"] then
  RECIPE("chute-miniloader"):add_ingredient({type = "item", name = "burner-inserter", amount = 2})
end


-- Update RampantArsenal
if mods["RampantArsenal"] then
  RECIPE("rifle-item-rampant-arsenal"):add_ingredient({type = "item", name = "motor", amount = 1})

  TECHNOLOGY("gun-turret")
    :replace_pack("automation-science-pack", "automation-science-pack", 5)
    :add_prereq("electronics")

  RECIPE("gun-turret"):add_ingredient({type = "item", name = "electronic-circuit", amount = 1})
end

-- Update Crafting Research Speed
if mods["Crafting_Speed_Research"] then
  TECHNOLOGY("crafting-speed-upgrade-1")
    :add_pack("logistic-science-pack")
    :add_prereq("modules")

  TECHNOLOGY("crafting-speed-upgrade-2")
    :add_pack("logistic-science-pack")

  TECHNOLOGY("crafting-speed-upgrade-3")
    :add_pack("logistic-science-pack")
end


-- data.raw.torch.torch["energy_usage"] = "37.8kW"
-- data.raw.torch.torch["energy_consumption"] = "100MW"

-- energy_usage = "37.8kW",
-- energy_consumption = "1.8MW",
-- fuel_inventory_size = 1,
-- energy_source =
--     {
--       type = "electric",
--       usage_priority = "secondary-output",
--       buffer_capacity = "1TW",
--       render_no_network_icon = false
--     }
