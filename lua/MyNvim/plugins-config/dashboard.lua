local setup = {
  theme = 'doom',
  change_to_vcs_root = true,
  config = {
    -- packages = { enable = true }, -- show how many plugins neovim loaded
    -- project = { enable = false },

    header = {
      '', '', '', '', '', '', '', '', '', '',
      '███╗   ███╗██╗   ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗',
      '████╗ ████║╚██╗ ██╔╝████╗  ██║██║   ██║██║████╗ ████║',
      '██╔████╔██║ ╚████╔╝ ██╔██╗ ██║██║   ██║██║██╔████╔██║',
      '██║╚██╔╝██║  ╚██╔╝  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      '██║ ╚═╝ ██║   ██║   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
      '╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
    },

    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find Files',
        -- desc_hl = 'String',
        -- key_hl = 'Number',
        key = 'f',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find keymaps',
        key = 'm',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'Telescope keymaps'
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find commands',
        key = 'c',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'Telescope commands'
      },
    },


    -- action is triggered when you press key or enter it will run this action.
    -- action can be a functino type, e.g.
    -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
    footer = { 'sky is the limit' },
  },

  hide = {
    false , -- hide statusline default is true
    false, -- hide the tabline
    false, -- hide winbar
  },

}

return setup
