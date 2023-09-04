return {
  load = {

    ["core.keybinds"] = {
      config = {
        hook = function(keybinds)

          -- go back to the index file
          keybinds.map("norg", "n", "<leader>ni", "<cmd>:Neorg index<CR>")
          -- return
          keybinds.map("norg", "n", "<leader>nr", "<cmd>:Neorg return<CR>")

        end,
      }
    },
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/Notes",
        },
      },
    },

  },
}
