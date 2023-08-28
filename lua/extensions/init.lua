---@breaf [[
--- put a folder with an init file such that the init file 
--- wil do the work 
---@breaf]]
--
-- Base Path for all the plugins configs
local plugins_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local file_name_command = string.format("ls -pa %s ", plugins_base_path)
local capabilitiy = require "MyNvim.capabilities.is_directory"

for file in io.popen(file_name_command):lines() do

  if( file ~= "init.lua" and file ~= "./" and file ~= "../"  ) then

    local dir_table = capabilitiy.jsonify_path(file)

    --if it's a directory
    if dir_table[1] ~= file then

      pcall(require, "extensions."..dir_table[1])

    end 

  end

end

