local set_mappings = require "MyNvim.capabilities.set_mappings"
local M = {}

---still unimplmented
---@param value any
---@return any
function M.get_var_name(value)

  error("still unimplmented")
  local level = 1
  local info = debug.getinfo(level, "f")
  local func = info.func

  print(debug.getlocal(set_mappings.set_mappings, 1))

local w = debug.getinfo(1, "n").name

  local varName
  for i = 1, math.huge do
    local name, varValue = debug.getlocal(func, i)
    if not name then break end
    if varValue == value then
      varName = name
      break
    end
  end

  if varName then
    return varName
  else
    return nil
  end
end
return M
