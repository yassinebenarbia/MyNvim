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
      local status, neorg= pcall(require, 'neorg')
      if not status then
        warn("neorg is not found")
      end
      local workspaces = neorg.modules.loaded_modules["core.dirman"].public.get_workspaces()
      pickers.new({
        layout_config = {
          width = 0.4,
          height = 0.5,
          prompt_position = "top"
        },
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
      }, {
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
