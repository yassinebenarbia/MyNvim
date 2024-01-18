return function(_, _)
  local wk = require("which-key")
  wk.setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  })
  wk.register({
    f = {
      name = "find",
      m = { "manual" },
      w = { "word" },
      h = { "help" },
      c = { "commands" },
      f = { "file" },
      b = { "buffer" },
      d = { "diagnisics" },
      r = { "references" },
    },
    l = {
      name = "lsp",
      a = { "actions" },
      h = { "header" },
      r = { "rename" },
      c = { "clear references" },
      t = { "go-to type" },
      d = { "diagnisic" },
      R = { "references" },
      f = { "format" },
      -- ...
    },
    s = {
      name = "spell",
      t = { "toggle" },
      s = { "suggestion" },
    },
    g = {
      name = "git",
      l = { "lazy" },
      b = { "branches" },
      c = { "commits" },
      S = { "stash" },
      s = { "status" },
      f = { "files" },
    },
    e = {
      name = "etc",
      c = { "perma colorscheme" }
    },
    n = {
      name = "neorg",
      c = { "toggle concealer" },
      w = { "workspaces" },
    },
  }, { prefix = "<leader>" })
end
