---@breif [[
--- This file shall hold keymaps that are directly related to the "base plugins"/"base implementation"
--- of MyNvim or in another word, shall hold 
--
---@breif ]]
local mapper = require("MyNvim.capabilities.set_mappings")

mapper.set_mappings(
  {
    {"t", "<S-Esc>", [[<C-\><C-n>]], {noremap = true, silent = true} },

    {
      {"t", "n"}, "<A-i>", function ()
        require("toggleterm.terminal").Terminal
          :new({
            hidden = true, direction = "float", count = 1,
            float_opts = {
              -- The border key is *almost* the same as 'nvim_open_win'
              -- see :h nvim_open_win for details on borders however
              -- the 'curved' border is a custom border type
              -- not natively supported but implemented in this plugin.
              border = 'curved',
              -- like `size`, width and height can be a number or function which is passed the current terminal
            },


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
    }, {
      ---@ToDo Delete this thing ASAP
    {"n"}, "<leader>gl", function ()
        require("toggleterm.terminal").Terminal
          :new({
            hidden = true, direction = "float", count = 3, cmd = "lazygit",
          })
          :toggle()
      end,
      {noremap = true, silent = true}
  }


  });

-- mapper.map_mappings({})
