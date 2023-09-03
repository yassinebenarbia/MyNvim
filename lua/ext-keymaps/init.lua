---@breif [[
---Store Keymaps related to external plugins
---@breif ]]
local status, capability = pcall(require, "ext-capabilities.add_nerog_kmap")
if not status then
  error("unable to set external keymap")
end

capability.add_neorg_kmap()
