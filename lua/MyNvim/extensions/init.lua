-- Base Path for all the plugins configs
local plugins_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local file_name_command = string.format("ls -pa %s ", plugins_base_path)
local file_name_regex = "(.+)(%.[^.]+)"
local capabilitiy = require "MyNvim.capabilities.is_directory"

-- ToDo: check for files and directories, if it's a file 
-- then load it if it's a directory load the init.lua 
-- just below it

for file in io.popen(file_name_command):lines() do

  if( file ~= "init.lua" and file ~= "./" and file ~= "../"  ) then

    local dir_table = capabilitiy.jsonify_path(file)
    
    -- meaning it's a directory
    if dir_table[1] ~= file then

      require("MyNvim.extensions."..dir_table[1])
      
      -- it's a file
    else

    for file_name in string.gmatch(file, file_name_regex) do

      require("MyNvim.extensions."..file_name)
          
    end
    
    end
  end

end

