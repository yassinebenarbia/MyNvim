---@breif [[
---Store Keymaps related to external plugins
---@breif ]]
local mapper = require("MyNvim.capabilities.set_mappings")
mapper.map_mappings({
  n = {
    -- Neorg
    { '<leader>nw', ':Telescope neorg workspaces<CR>', {} },
    { '<leader>nc', ':Neorg toggle-concealer<CR>', {} },

    -- Others

    { '<leader>tC', ':Telescope perma_colorscheme <CR>', {} },

  },
})
