for _, surface in pairs(game.surfaces) do
  local has_recipe = false
  for _, refinery in pairs(surface.find_entities_filtered{name = {"heavy-oil-refinery-mk01", "heavy-oil-refinery-mk02", "heavy-oil-refinery-mk02", "heavy-oil-refinery-mk02"}}) do
    if refinery.valid and (refinery.get_recipe() or {}).name == "rubber-from-oleochemicals" then
      has_recipe = true
      break
    end
  end
  if has_recipe then
    game.print({"command-output.update-note", {"mod-name.pyalternativeenergy"}, "[recipe=rubber-from-oleochemicals] ([img=entity.heavy-oil-refinery-mk01][img=entity.heavy-oil-refinery-mk02][img=entity.heavy-oil-refinery-mk03][img=entity.heavy-oil-refinery-mk04]) had the oleochemicals input moved from North to South for consistency with other rubber recipes, you will need to adjust your existing production lines."})
  end
end