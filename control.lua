script.on_init(function()
  if not remote.interfaces["freeplay"] then
      return
  end
  local created_items = remote.call("freeplay", "get_created_items")
  created_items["Construction Drone"] = 2
  remote.call("freeplay", "set_created_items", created_items)
end)

