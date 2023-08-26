local M = {}
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
