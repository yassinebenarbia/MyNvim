local plugins = {}

-- Base Path for all the plugins configs
local plugins_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local file_name_command = string.format(
  "ls -pa %s | grep -Po '.*?(?=.lua)'",
  plugins_base_path
)

-- ToDo: check for files and directories, if it's a file 
-- then load it if it's a directory load the init.lua 
-- just below it

for file_name in io.popen(file_name_command):lines() do

  if( file_name ~= "init"   ) then

    local opts = require("MyNvim.plugins-install."..file_name)
    -- local status_ok, fault = pcall(require, "plugins."..file_name)
    table.insert(plugins, opts)


  end

end

return plugins
