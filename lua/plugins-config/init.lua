local plugins_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local file_name_command = string.format("ls -pa %s | grep -v /", plugins_base_path)
local file_name_regex = "(.+)(%.[^.]+)"


-- ToDo: check for files and directories, if it's a file 
-- then load it if it's a directory load the init.lua 
-- just below it

for file in io.popen(file_name_command):lines() do

  if( file ~= "init.lua" ) then

    for file_name in string.gmatch(file, file_name_regex) do

      local opts = require("plugins-config."..file_name)
      -- local status_ok, fault = pcall(require, "plugins."..file_name)
      -- table.insert(plugins, opts)
          
    end
    
  end

end
