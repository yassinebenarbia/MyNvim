local M = {}

--- Append table with value
---@param tbl? table The table you want to append into
---@param val? any The value you want to append
---@return table # The new appended table
function M.append_table(tbl, val)

  tbl[#tbl+1] = val
  return tbl

  
end

return M
