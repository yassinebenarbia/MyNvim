-- configuring Telescope
return function(thing, opts)
  local telescope = require "telescope"
  --[[ print(vim.inspect(telescope))
  print(vim.inspect()) ]]
  telescope.setup({
    builtin = {
      default = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob=!.git/",
        },
        initial_mode = "normal",
        selection_strategy = "reset",
      },

      pickers = {
        find_files = {
          hidden = true,
        },
        live_grep = {
          --@usage don't include the filename in the search results
          only_sort_text = true,
        },
        grep_string = {
          only_sort_text = true,
        },
        buffers = {
          initial_mode = "normal",
        },
        planets = {
          show_pluto = true,
          show_moon = true,
        },
        git_files = {
          hidden = true,
          show_untracked = true,
        },
        colorscheme = {
          enable_preview = true,
        },
      },

      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
      },
    },
  })

  -- require('telescope').load_extension('fzf')
  -- local builtin = require('telescope.builtin')
  -- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  -- vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
  -- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

  -- -- neorg
  -- vim.keymap.set('n', '<leader>nw', ':Telescope neorg workspaces<CR>', opts)
end
