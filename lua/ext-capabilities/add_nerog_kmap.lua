local M = {}

---sets up keymaps related to nerog
---@param maps table table of keymaps, that is "mode related"
---Example:
---  add_neorg_kmap({
--     {"mode", "sub-mode", "keymap", "option"},
--     {"mode", "sub-mode", "keymap", "option"}
--})
function M.add_neorg_kmap(maps)

  local status, neorg= pcall(require, 'neorg')
  if not status then
    warn("neorg is not found")
  end
  print(vim.inspect(neorg.config))

end
return M
