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
    },
    l ={
      name = "lsp",
      a = { "actions" },
      h = { "header" },
      r = { "rename" },
      -- d = { "diagnisics" },
      -- etc
    },
    s = {
      name = "spell",
    },
  }, { prefix = "<leader>" })
end
