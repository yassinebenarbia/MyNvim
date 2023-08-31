local mapper = require("MyNvim.capabilities.set_mappings")

mapper.set_mappings(
  {
    {"t", "<esc>", [[<C-\><C-n>]], {noremap = true, silent = true} },

    {
      {"t", "n"}, "<A-i>", function ()
        require("toggleterm.terminal").Terminal
          :new({
            hidden = true, direction = "float", count = 1
          })
          :toggle()
      end, {noremap = true, silent = true}
    },
    {
      {"t", "n"}, "<A-/>", function ()
        require("toggleterm.terminal").Terminal
          :new({
            hidden = true, direction = "horizontal", count = 2
          })
          :toggle()
      end,
      {noremap = true, silent = true}
    },
    {
      {"t", "n"}, "<A-|>", function ()
        require("toggleterm.terminal").Terminal
          :new({
            hidden = true, direction = "vertical", count = 3
          })
          :toggle()
      end,
      {noremap = true, silent = true}
    }
  }
);

-- mapper.map_mappings({
--   n = {
--     {
--       "<A-i>", function ()
--         require("toggleterm.terminal").Terminal
--           :new({
--             hidden = true, direction = "float"
--           })
--           :toggle()
--       end,
--       {noremap = true, silent = true}
--     },
--     {
--       {
--         "<A-,>", function ()
--           require("toggleterm.terminal").Terminal
--             :new({
--               hidden = true, direction = "horizontal"
--             })
--             :toggle()
--         end,
--         {noremap = true, silent = true}
--       }
--     }
--   }
-- })
