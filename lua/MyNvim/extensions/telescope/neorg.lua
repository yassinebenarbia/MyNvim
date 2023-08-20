return require("telescope").register_extension {
  setup = function(ext_config, config)
    -- access extension config and user config
  end,
  exports = {
    workspaces = function ()

      local neorg = require('neorg')

      file = io.open("workspaces.txt", "w")
      file:write(tostring(vim.inspect(neorg)))
      file:close()

    end
  },
}

