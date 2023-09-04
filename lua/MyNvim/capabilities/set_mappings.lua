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

  -- ToDo: erro message that emmits to the user he's parameter name used in the function
  -- maybe it's value, and how it should be, for example "'var' is expected to be 'type' 
  -- but found 'another'"
  -- and if provided with straight value, it can be like, "expected 'type' got 'another'"
  -- Resource: https://www.phind.com/agent?cache=cllyieppw000amq08pkyqcm1j
  if type(maps) ~= "table" then
    error("expected table in set_mappings function")
  end

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

    if type(maps) ~= "table" then
      error("map_mappings expect a table but got "..type(maps))
    end

    for _, mmap in pairs(mmaps) do

      if #mmap == 3 then

        -- print(mode, mmap[1], mmap[2], mmap[3])
        vim.keymap.set(mode, mmap[1], mmap[2], mmap[3])
        
      end

    end

  end

end

return M
