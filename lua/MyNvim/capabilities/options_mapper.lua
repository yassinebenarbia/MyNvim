local M = {}
-- This function is used to fill the vim.stuff.thing = value
--
-- @params map of mode, property and value
--
-- @example 
--          {
--            g{
--                mapleader = ' ',
--            }, 
--            opt{
--              tabstop = 2,
--              number = true,
--            }
--          }
function M.options_mapper(options)

  -- for each mode and it's corresponding values
  for mode, option in pairs(options) do

    -- if non nil/empty values
    if mode and option then

      -- if otions is provided as a table
      -- Note: can it not be provided as a table ?
      if type(option) == "table" then

        -- for each of the options
        for param, value in pairs(option) do

          -- non declare value
          if value == nil then
            goto continue
          end

          -- add that option
          vim[mode][param] = value

          ::continue::

        end

      end

    else

      error('Please provide a valid mapping', 0)

    end

  end

end
return M
