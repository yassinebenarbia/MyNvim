return require("telescope").register_extension {
  setup = function(ext_config, config)
    -- access extension config and user config
  end,
  exports = {
    workspaces = function ()

      local pickers = require "telescope.pickers"
      local finders = require "telescope.finders"
      local actions = require "telescope.actions"
      local actions_stat = require "telescope.actions.state"
      local conf = require("telescope.config").values
      local capabilities = require("MyNvim.capabilities.split_table")
      local neorg = require('neorg')
      local workspaces = neorg.modules.loaded_modules["core.dirman"].public.get_workspaces()

      pickers.new({}, {
        prompt_title = "Neor Workspaces",
        finder = finders.new_table {
          results = capabilities.split_table(workspaces).lKeys
        },
        sorter = conf.generic_sorter({}),
        attach_mappings = function (prompt_buffnr, map)
          actions.select_default:replace(function ()
            local selecion = actions_stat.get_selected_entry()
            actions.close(prompt_buffnr)
            vim.api.nvim_command("Neorg workspace "..selecion[1])
          end)
          return true
        end,
      }):find()

    end
  },
}

