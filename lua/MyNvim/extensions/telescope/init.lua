---@breif [[
--- under the telescope folder there write a file that have meaningfull name
--- with respect to it's context and put this on it
---`require("telescope").load_extensioneturn(<file_name>)`
--- such that the <file_name> is file that is under the /lua/telescoe/_extensinons/
--- with the exact same name, for exampe if the <file_name> is named neorg, thus the
--- file should be named as neorg.lua
---
---@breif ]]
--
-- Base Path for all the plugins configs
local plugins_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local file_name_command = string.format("ls -pa %s | grep -v /", plugins_base_path)
local config_path = vim.fn.stdpath("config")

-- ToDo: check for files and directories, if it's a file 
-- then load it if it's a directory load the init.lua 
-- just below it


for file in io.popen(file_name_command):lines() do

  if( file ~= "init.lua" ) then

    local link_file = string.format(
      "echo ln -s %s/lua/MyNvim/extensions/telescope/%s \
      $HOME/.local/share/nvim/lazy/telescope.nvim/lua/telescope/_extensions/%s | bash",
      config_path ,file, file)

    pcall(io.popen, link_file)
    
  end

end