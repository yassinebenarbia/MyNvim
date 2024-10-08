---@breif [[
--- This file shall hold keymaps that are directly related to the "base plugins"/"base implementation"
--- of MyNvim or in another word, shall hold
--
---@breif ]]

local mapper = require("MyNvim.capabilities.set_mappings")

-- list related mappings
mapper.map_mappings({
  n = {
    -- spell check
    { "<leader>ss", "z=", { noremap = true, silent = true } },
    { "<leader>st", ":setlocal spell!<CR>", { noremap = true, silent = true } },
  }
})

-- telescop related mappings
mapper.map_mappings({
  n = {
    { '<leader>ff', require('telescope.builtin').find_files,     {} },
    { '<leader>fb', require('telescope.builtin').buffers,        {} },
    { '<leader>fh', require('telescope.builtin').help_tags,      {} },
    { '<leader>fm', require('telescope.builtin').man_pages,      {} },
    { '<leader>fc', require('telescope.builtin').commands,       {} },
    { '<leader>fw', require('telescope.builtin').live_grep,      {} },
    {
      '<leader>fd', function ()
        require('telescope.builtin').diagnostics {severity_limit = "info"}
      end, {}
    },
    {
      '<leader>fD', function ()
        require('telescope.builtin').diagnostics {
          severity_limit = "info",
          bufnr = 0,
        }
      end, {}
    },
    { '<leader>fr', require('telescope.builtin').lsp_references, {} },
  },
})

mapper.map_mappings({
  n = {
    { '<leader>gb', require('telescope.builtin').git_branches,   {} },
    { '<leader>gc', require('telescope.builtin').git_bcommits,   {} },
    { '<leader>gS', require('telescope.builtin').git_stash,      {} },
    { '<leader>gs', require('telescope.builtin').git_status,     {} },
    { '<leader>gf', require('telescope.builtin').git_files,      {} },
    {
      ---@ToDo Delete this thing ASAP
      { "n" }, "<leader>gl",
      function()
      require("toggleterm.terminal").Terminal
          :new({
            hidden = true, direction = "float", count = 3, cmd = "lazygit",
          })
          :toggle()
    end,
      { noremap = true, silent = true }
    }
  },
})


-- lsp related mappings
mapper.map_mappings({
  n = {
    { '<leader>lf', function() vim.lsp.buf.format { async = true } end, {} },
    { '<leader>lR', vim.lsp.buf.references,                             {} },
    { '<leader>lr', vim.lsp.buf.rename,                                 {} },
    { '<leader>la', vim.lsp.buf.code_action,                            {} },
    { '<leader>lh', vim.lsp.buf.signature_help,                         {} },
    { '<leader>lc', vim.lsp.buf.clear_references,                       {} },
    { '<leader>lt', vim.lsp.buf.type_definition,                        {} },
    { '<leader>ld', vim.diagnostic.open_float,                          {} },
  },
})


-- terminal related mappings
mapper.set_mappings({
  { "t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true } },
  {
    { "t", "n" }, "<A-i>", function()
      require("toggleterm.terminal").Terminal
      :new({
        hidden = true,
        direction = "float",
        count = 1,
        float_opts = {
          -- The border key is *almost* the same as 'nvim_open_win'
          -- see :h nvim_open_win for details on borders however
          -- the 'curved' border is a custom border type
          -- not natively supported but implemented in this plugin.
          border = 'curved',
          -- like `size`, width and height can be a number or function which is passed the current terminal
        },
      })
      :toggle()
    end, { noremap = true, silent = true }
  },
  {
    { "t", "n" }, "<A-/>", function()
      require("toggleterm.terminal").Terminal
      :new({
        hidden = true, direction = "horizontal", count = 2
      })
      :toggle()
    end,
    { noremap = true, silent = true }
  },
  {
    { "t", "n" }, "<A-|>", function()
      require("toggleterm.terminal").Terminal
      :new({
        hidden = true, direction = "vertical", count = 3
      })
      :toggle()
    end,
    { noremap = true, silent = true }
  },
});
