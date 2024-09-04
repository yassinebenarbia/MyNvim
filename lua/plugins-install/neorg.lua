local status, load = pcall(require, "plugins-config.neorg-config")
local M = {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = true,
  config = function()
    if status then
      require("neorg").setup(load)
    else
      require('neorg').setup {
        load = {
          ["core.defaults"] = {}
        }
      }
    end
  end,
}

return M
