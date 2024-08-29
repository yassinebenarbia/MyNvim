local M = {}
---split the table to it's quivenent list of keys and values 
---@param table table the desired table to split
---@return table table table with lKeys key for list of keys and lValues for list of values respectively 
function M.split_table(table)
  local lKeys = {}
  local lValues = {}
  for key, value in pairs(table) do
    lKeys[#lKeys+1] = key
    lValues[#lValues+1] = value
  end
  return {
    lKeys = lKeys,
    lValues = lValues
  }
end
return M
