local M = {}

---This function is used to set mappings 
---@param map? table map of keymaps
---Example:
---  set_mappings({
---    {"mode", "map", "function", "option"},
---    {"mode", "map", "function", "option"},
--     ...
---  })
function M.set_mappings(maps)

  for _, value in pairs(maps) do

    if #(value) == 4 then

      vim.keymap.set(value[1], value[2], value[3], value[4])

    end

  end

end

---function used to set mappings by setting a set of mappings for each mode
---@param maps table set of key-value pairs where the key is the mode and value is another table of keymap, function and options
---Example:
---  map_mappings({
--     mode = {
--       {"map", "function", "option"},
--       {"map", "function", "option"},
---    },
---    mode = {
--       {"map", "function", "option"},
--       {"map", "function", "option"},
---    }
---  })
function M.map_mappings(maps)

  -- mmaps stands for mini maps
  -- mmap stands for mini map
  for mode, mmaps in pairs(maps) do

    if #mmaps ~= 3 then
      goto continue
    end

    for _, mmap in pairs(mmaps) do

      vim.keymap.set(mode, mmap[1], mmap[2], mmap[3])

    end

    ::continue::

  end

end

return M
