local M = {}

--- Merge extended options with a default table of options
---@param default? table The default table that you want to merge into
---@param opts? table The new options that should be merged with the default table
---@return table # The merged table
function M.extend_tbl(default, opts)
	opts = opts or {}
	return default and vim.tbl_deep_extend("force", default, opts) or opts
end

--- Merge extended options with a default table of options
---@param default? table The default table that you want to merge into
---@param opts? table The new options that should be merged with the default table 
-- such that opts values will overwrite the default ones
---@return table # The merged table
function M.extend_tbl_over(default, opts)
  opts = opts or {};
  for k,v in pairs(default) do opts[k] = v end
  return opts
end

return M;
