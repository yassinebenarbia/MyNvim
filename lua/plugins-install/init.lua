local plugins = {}

-- Base Path for all the plugins configs
local plugins_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local file_name_command = string.format("ls -pa %s | grep -v /", plugins_base_path)
local file_name_regex = "(.+)(%.[^.]+)"


-- ToDo: check for files and directories, if it's a file 
-- then load it if it's a directory load the init.lua 
-- just below it

for file in io.popen(file_name_command):lines() do
  if( file ~= "init.lua" ) then
    for file_name in string.gmatch(file, file_name_regex) do
      local opts = require("plugins-install."..file_name)
      table.insert(plugins, opts)
    end
  end
end

-- loading colorschemes
local colorschemes_base_path  = debug.getinfo(1).source:match("@?(.*/)").."colorschemes/"
local colorschemes_file_name_command = string.format("ls -pa %s | grep -v /", colorschemes_base_path)

for file in io.popen(colorschemes_file_name_command):lines() do
  for file_name in string.gmatch(file, file_name_regex) do
    local opts = require("plugins-install.colorschemes."..file_name)
    -- local status_ok, fault = pcall(require, "plugins."..file_name)
    table.insert(plugins, opts)
  end
end

return plugins
