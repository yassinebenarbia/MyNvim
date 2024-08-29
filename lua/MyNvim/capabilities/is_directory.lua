local M = {}

---Checks wether a path is a drectory or not
---@param path string inspected path
---@return boolean true if path is a directory otherwise false
function M.is_directory(path)
  for i = 1, #path do
    if string.sub(path,i,i) == "/" then
      return true
    end
  end
  return false
end

function M.jsonify_path(path)
  local temp = ""
  local json_path = {}
  -- for each character of the path
  for i = 1, #path do
    -- if character is "/"
    if string.sub(path, i, i) ~= "/" then
      -- append the character to the temp string
      temp = temp..string.sub(path, i, i)
      -- if we are on the end of the string, and just push wtvr temp 
      -- is to the json_path table
      if i == #path then
        table.insert(json_path, temp)
      end
    -- if the character is "/"
    else
      -- if temp is not empty and thus appended to it before
      if temp ~= "" then
        table.insert(json_path, temp)
        temp = ""
      end
    end
  end

  return json_path
end

return M
