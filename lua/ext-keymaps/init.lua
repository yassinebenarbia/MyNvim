---@breif [[
---Store Keymaps related to external plugins
---@breif ]]
local mapper = require("MyNvim.capabilities.set_mappings")
mapper.map_mappings({
  n = {
    -- Neorg
    { '<leader>nw', ':Telescope neorg workspaces<CR>',   {} },
    { '<leader>nc', ':Neorg toggle-concealer<CR>',       {} },

    -- Others
    { '<leader>eC', ':Telescope perma_colorscheme <CR>', {} },
    { '<leader>ec', ':Telescope colorscheme<CR>', {} },

    { '<leader>;', ':Dashboard<CR>', {} },

    -- Git
    -- <moveing between hubks>
    { ']c', ':Gitsigns next_hunk <CR>', {} },
    { '[c', ':Gitsigns prev_hunk <CR>', {} },
    -- <resetting hunk/buffer>
    { '<leader>gr', ':Gitsigns reset_hunk<CR>', {} },
    { '<leader>gR', ':Gitsigns reset_buffer<CR>', {} },
    -- <toggle line blame>
    { '<leader>gB', ':Gitsigns toggle_current_line_blame<CR>', {} },
    -- <diff>
    { '<leader>gd', ':Gitsigns diffthis<CR>', {} },
    -- <stage hubk/buffer>
    { '<leader>ga', ':Gitsigns stage_hunk<CR>', {} },
    { '<leader>gA', ':Gitsigns stage_buffer<CR>', {} },

  },
})
