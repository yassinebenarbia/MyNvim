local M = {}

---This function is used to set mappings 
---@param map? table map of keymaps
---Example:
---  keymaps_mapper({
---    {"mode", "map", "function", "option"},
---    {"mode", "map", "function", "option"},
--     ...
---  })
function M.keymaps_mapper(maps)

  for _, value in pairs(t) do

    if #(maps) == 4 then
      
      vim.keymap.set(value[1], value[2], value[3], value[4])

    end
    
  end

end

return M
