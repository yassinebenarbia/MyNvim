colorschemes = {}

local colorschemes_base_path  = debug.getinfo(1).source:match("@?(.*/)")
local colorschemes_file_name_command = string.format("ls -pa %s | grep -v /", colorschemes_base_path)
local file_name_regex = "(.+)(%.[^.]+)"

for file in io.popen(colorschemes_file_name_command):lines() do

  if (file ~= "init.lua")then

    for file_name in string.gmatch(file, file_name_regex) do

      local opts = require("plugins-install.colorschemes."..file_name)
      -- local status_ok, fault = pcall(require, "plugins."..file_name)
      -- ToDo: make a protected call instead of a direct require
      table.insert(colorschemes, opts)

    end
  end

end

return colorschemes
