return function(_, _)
  local wk = require("which-key")
  wk.add({
    { "<leader>b", group = "block" },
    { "<leader>bc", desc = "comment" },
    { "<leader>e", group = "etc" },
    { "<leader>eC", desc = "perma colorscheme" },
    { "<leader>ec", desc = "temporary colorscheme" },
    { "<leader>f", group = "find" },
    { "<leader>fb", desc = "buffer" },
    { "<leader>fc", desc = "commands" },
    { "<leader>fd", desc = "diagnisics" },
    { "<leader>ff", desc = "file" },
    { "<leader>fh", desc = "help" },
    { "<leader>fm", desc = "manual" },
    { "<leader>fr", desc = "references" },
    { "<leader>fw", desc = "word" },
    { "<leader>g", group = "git" },
    { "<leader>gA", desc = "add buffer" },
    { "<leader>gB", desc = "toggle blame" },
    { "<leader>gR", desc = "reset buffer" },
    { "<leader>gS", desc = "stash" },
    { "<leader>ga", desc = "add hunk" },
    { "<leader>gb", desc = "branches" },
    { "<leader>gc", desc = "commits" },
    { "<leader>gd", desc = "diff" },
    { "<leader>gf", desc = "files" },
    { "<leader>gl", desc = "lazy" },
    { "<leader>gr", desc = "reset hunk" },
    { "<leader>gs", desc = "status" },
    { "<leader>l", group = "lsp" },
    { "<leader>lR", desc = "references" },
    { "<leader>la", desc = "actions" },
    { "<leader>lc", desc = "clear references" },
    { "<leader>ld", desc = "diagnisic" },
    { "<leader>lf", desc = "format" },
    { "<leader>lh", desc = "header" },
    { "<leader>lr", desc = "rename" },
    { "<leader>lt", desc = "go-to type" },
    { "<leader>n", group = "neorg" },
    { "<leader>nc", desc = "toggle concealer" },
    { "<leader>nw", desc = "workspaces" },
    { "<leader>s", group = "spell" },
    { "<leader>ss", desc = "suggestion" },
    { "<leader>st", desc = "toggle" },
  })
  wk.setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  })
end
