-- return {
--   'nvimdev/dashboard-nvim',
--   event = 'VimEnter',
--   config = function()
--     require('dashboard').setup {
--   theme = 'doom',
--   config = {
--     header = {
--
--       '███╗   ███╗██╗   ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗',
--       '████╗ ████║╚██╗ ██╔╝████╗  ██║██║   ██║██║████╗ ████║',
--       '██╔████╔██║ ╚████╔╝ ██╔██╗ ██║██║   ██║██║██╔████╔██║',
--       '██║╚██╔╝██║  ╚██╔╝  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
--       '██║ ╚═╝ ██║   ██║   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
--       '╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
--     },
--     center = {
--       {
--         icon = ' ',
--         icon_hl = 'Title',
--         desc = 'Find File           ',
--         desc_hl = 'String',
--         key = 'b',
--         keymap = 'SPC f f',
--         key_hl = 'Number',
--         key_format = ' %s', -- remove default surrounding `[]`
--         action = 'Telescope find_files'
--       },
--       {
--         icon = ' ',
--         desc = 'Find Dotfiles',
--         key = 'f',
--         keymap = 'SPC f d',
--         key_format = ' %s', -- remove default surrounding `[]`
--         action = 'lua print(3)'
--       },
--     },
--     footer = {}  --your footer
--   }
-- }
--   end,
--   dependencies = { {'nvim-tree/nvim-web-devicons'}}
-- }

return {
  "nvimdev/dashboard-nvim" ,

  opts = function()
    return require "MyNvim.plugins-config.dashboard"
  end,

  config = function(_, opts)
    require("dashboard").setup(opts)
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}

}
