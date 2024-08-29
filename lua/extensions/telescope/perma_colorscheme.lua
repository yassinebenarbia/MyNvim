local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local actions = require "telescope.actions"
local actions_stat = require "telescope.actions.state"
local conf = require("telescope.config").values
local capabilities = require("MyNvim.capabilities.split_table")
local status, neorg= pcall(require, 'neorg')

function enter(prompt_buffnr)

  local selected = actions_stat.get_selected_entry()
  actions.close(prompt_buffnr)
  vim.api.nvim_command("vsplit | Neorg workspace "..selected[1])
end

function up(prompt_buffnr)
  actions.move_selection_previous(prompt_buffnr)
  local selected = actions_stat.get_selected_entry()
  vim.cmd('colorscheme '..selected[1])
end

function down(prompt_buffnr)
  actions.move_selection_next(prompt_buffnr)
  local selected = actions_stat.get_selected_entry()
  vim.cmd("colorscheme "..selected[1])
end


return require("telescope").register_extension {
  setup = function(ext_config, config)
    -- access extension config and user config
  end,
  exports = {
    perma_colorscheme = function ()

      if not status then
        warn("neorg is not found")
      end
      local colorschemes = vim.fn.getcompletion("", "color")
      pickers.new({
        layout_config = {
          width = 0.4,
          height = 0.7,
          prompt_position = "top"
        },
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
      }, {
        prompt_title = "colorschemes",
        finder = finders.new_table {
          results = colorschemes
        },
        sorter = conf.generic_sorter({}),

          attach_mappings = function (prompt_buffnr, map)

            map("n", "j", down)
            map("n", "k", up)
            actions.select_default:replace(function ()

              local selection = actions_stat.get_selected_entry()
              actions.close(prompt_buffnr)
              -- vim.api.nvim_command
              vim.fn.jobstart(
                [[echo 'vim.cmd.colorscheme("]]..selection[1]
                ..[[")' > $HOME/.config/nvim/lua/colorscheme/init.lua]]
              )
            end)

            return true
        end,
      }):find()

    end
  },
}
