---@breif [[
--- under the telescope folder there write a file that have meaningfull name
--- with respect to it's context and put this on it
---`require("telescope").load_extensione(<file_name>)`
--- such that the <file_name> is file that is under the /lua/telescoe/_extensinons/
--- with the exact same name, for exampe if the <file_name> is named neorg, thus the
--- file should be named as neorg.lua
---
---@breif ]]
--
-- Base Path for all the plugins configs
local telescope_ext_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local file_name_command = string.format(
  "ls -pa %s | grep -Po '.*?(?=.lua)'",
  telescope_ext_base_path
)
local config_path = vim.fn.stdpath("config")

for file in io.popen(file_name_command):lines() do
  if( file ~= "init" ) then
    local state, telescope = pcall(require, 'telescope')
    if state then
      -- setting up the command for linking the file into the extension directory
      local link_file = string.format(
        "echo ln -sfn %s/lua/extensions/telescope/%s.lua " ..
        "/home/$USER/.local/share/nvim/lazy/telescope.nvim/lua/telescope/_extensions/%s.lua | sh",
        config_path ,file, file)

      -- linking the file
      local stat, res = pcall(io.popen, link_file)
      if stat then
        require('telescope').register_extension(file)
      else
        local log_writer = require "MyNvim.capabilities.write_log"
        log_writer.write_log(res)
      end
    end
    telescope.load_extension(file)
    telescope.load_extension(file)
  end
end
