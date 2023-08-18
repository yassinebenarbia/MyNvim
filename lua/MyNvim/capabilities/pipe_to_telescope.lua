local pickers = require("telescope.pickers")
local finder = require('telescope.finders')

local M = {}

---@param shell table a table of the command and flags if any
---@see link https://www.youtube.com/watch?v=hQSZEZeZIPk
---@param opts table determine how the picker appear
---@param shell table the shell command that you want to be executed
---@param action table the action you wanted to be preformed with the item such that the $item represent the sellected item
function M.pipe_shell_to_telescope(opts ,shell, action)

  shell = shell or {}
  opts = opts or {}
  action = action or {}

  pickers.new(opts, {
    -- prompt_title = "title"
    finder = finder.new_table {

    },
    sorter = conf.generic_sorter(opts),
    attach_mapping = function (prompt_buffr, map)
      
      -- returns false to append to previous actions
    end
  }):find()
  
end

return M
