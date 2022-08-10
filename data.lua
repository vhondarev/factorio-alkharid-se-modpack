require('__stdlib__/stdlib/data/data').Util.create_data_globals()


-- Update Kombat Drones
if mods["Kombat_Drones"] then
  TECHNOLOGY("infantry-depot"):add_pack("logistic-science-pack")

  RECIPE("infantry-depot")
    :add_ingredient({type = "item", name = "electronic-circuit", amount = 10})
    :add_ingredient({type = "item", name = "transport-belt", amount = 10})
    :add_ingredient({type = "item", name = "inserter", amount = 10})

  RECIPE("basic-infantry"):add_ingredient({type = "item", name = "electronic-circuit", amount = 2})
  
  RECIPE("heavy-infantry"):add_ingredient({type = "item", name = "advanced-circuit", amount = 2})
  RECIPE("power-infantry"):add_ingredient({type = "item", name = "processing-unit", amount = 2})
end

-- Update Mining Drones
if mods["Mining_Drones"] then
  RECIPE("mining-depot"):add_ingredient({type = "item", name = "electronic-circuit", amount = 10})
  RECIPE("mining-drone"):add_ingredient({type = "item", name = "electric-motor", amount = 1})
end


-- Update Transport Drones
if mods["Transport_Drones"] then
  for _, depot in pairs ({"request-depot", "supply-depot", "fuel-depot", "fluid-depot", "buffer-depot"}) do
    RECIPE(depot):add_ingredient({type = "item", name = "electronic-circuit", amount = 5})
  end

  RECIPE("transport-drone"):add_ingredient({type = "item", name = "electronic-circuit", amount = 1})
end


-- Update Construction Drones
if mods["Updated_Construction_Drones"] then
  RECIPE("Construction Drone"):add_ingredient({type = "item", name = "electric-motor", amount = 2})
end


-- Update AAI Ironclad
if mods["miniloader"] then
  TECHNOLOGY("ironclad")
    :remove_prereq("automobilism")
    :add_prereq("water_transport")
end

-- Update Hovercrafts
if mods["Hovercrafts"] then
  TECHNOLOGY("hcraft-tech")
    :remove_prereq("automobilism")
    :add_prereq("robotics")
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
  RECIPE("deadlock-copper-lamp"):add_ingredient({type = "item", name = "glass", amount = 1})
  RECIPE("deadlock-floor-lamp"):add_ingredient({type = "item", name = "glass", amount = 1})
  RECIPE("deadlock-large-lamp"):add_ingredient({type = "item", name = "glass", amount = 2})
end


-- Update Miniloader
if mods["miniloader"] then
  RECIPE("chute-miniloader"):add_ingredient({type = "item", name = "burner-inserter", amount = 2})
end


-- Update RampantArsenal
if mods["RampantArsenal"] then
  RECIPE("rifle-item-rampant-arsenal"):add_ingredient({type = "item", name = "motor", amount = 1})
end
