local M = {}

--- Merge extended options with a default table of options
---@param default? table The default table that you want to merge into
---@param opts? table The new options that should be merged with the default table
---@return table # The merged table
function M.extend_tbl(default, opts)
	opts = opts or {}
	return default and vim.tbl_deep_extend("force", default, opts) or opts
end

---Merge extended options with a default table of options
---@param default? table The default table that you want to merge into
---@param opts? table The new options that should be merged with the default table 
---such that opts values will overwrite the default ones
---@return table # The merged table
---Note: overrides conflicting values
function M.extend_tbl_over(default, opts)
  opts = opts or {}
  for _,v in pairs(opts) do
    if v ~= nil then
      table.insert(default,v)
    end
  end
  return default
end

---Merge extended options with a default table of options and set's the lazy attribute of the opts table to the lVal value
---@param default? table The default table that you want to merge into
---@param opts? table The new options that should be merged with the default table 
---@param lVal? boolean the desired value of the lazy attribute
---such that opts values will overwrite the default ones
---@return table # The merged table
---Note: overrides conflicting values and the lazy attribute is set to the opts array
function M.extend_tbl_over_and_set_lazy(default, opts, lVal)
  opts = opts or {}
  for _,v in pairs(opts) do
    if v ~= nil then
      if v.lazy == nil then
        v.lazy = lVal
      end
      table.insert(default,v)
    end
  end
  return default
end

return M;
