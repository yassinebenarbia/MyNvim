local capability = require('MyNvim.capabilities.options_mapper')

-- Timeout
vim.opt_global.timeout = true
vim.opt_global.timeoutlen = 1000

local options = {

  -- vim.opt
  opt = {

    -- Numbers
    number = true,
    relativenumber = true,
    
    -- use system clipboard 
    clipboard = 'unnamedplus',
    completeopt = {'menuone', 'noselect', 'noinsert'},

    -- allow mouse to be used
    mouse = 'a',
    
    -- Tabs
    -- number of visual spaces per TAB
    tabstop = 2,
    -- number of spacesin tab when editing
    softtabstop = 2,
    -- insert 2 spaces on a tab
    shiftwidth = 2,
    -- tabs are spaces
    expandtab = true,

    -- Cursor
    -- highlight cursor line underneath the cursor horizontally
    cursorline = true,

    -- Split
    -- open new horizontal split bottom
    splitbelow = true,
    -- open new vertical splits right
    splitright = true,

    -- Colors
    -- enabl 24-bit RGB color in the TUI
    termguicolors = true,
    showmode = false,

    -- Searching
    -- search as characters are entered
    incsearch = false,
    -- do not highlight matches
    hlsearch = false,
    -- ignore case in searches by default
    ignorecase = true,
    -- but make it case sensitive if an uppercase is entered
    smartcase = true,

    -- shortmess
    shortmess = 'ixFtTOlonfA',

    -- spelling suggestion
    spelllang = "en_us,cjk,fr",
    spellsuggest = "best,9"
  },

  g = {

    -- Format
    -- enable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    autoformat_enabled = true,
    autopairs_enabled = true,

    -- Completion
    -- enable automatic codelens refreshing for lsp that support it
    codelens_enabled = true,
    -- enable completion at start
    cenabled = true,

    -- Diagnostics
    -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    diagnostics_mode = 3,
    -- enable or disable default vim.lsp.handlers (hover and signatureHelp)
    lsp_handlers_enabled = true,
    -- highlight URLs
    hlighturl_enabled = true,
    -- is_enabled = true 
    
    -- Notifications
    ui_notifications_enabled = true,

  },

  n = {},

}

capability.options_mapper(options)
