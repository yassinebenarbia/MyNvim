-- configuring Telescope
return function(_, opts)
  local telescope = require "telescope"
  telescope.setup(opts)
  local builtin = require('telescope.builtin')

  vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
  vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  -- neorg
  vim.keymap.set('n', '<leader>nw', ':Telescope neorg workspaces<CR>', opts)
end
