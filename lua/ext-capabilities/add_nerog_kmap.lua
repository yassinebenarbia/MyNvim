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

  local keybind_mapper = neorg.modules.loaded_modules["core.keybinds"].config

  print(vim.inspect(keybind_mapper))
  keybind_mapper.default_keybinds = false

  -- keybind_mapper = {
  --   hook = function (keybinds)
  --     keybinds.map("norg", "n", "gtt", ":Telescope<CR>")
  --     print("dididi")
  --   end,
  -- }

end
return M
