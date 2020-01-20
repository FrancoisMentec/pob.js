io = {}

--[[function open (fileName, mode)
  fileName = self
  --print("io.open: ", ...)
  return {
    read = function () return loadfile("/PathOfBuilding/" .. fileName) end,
    close = function () end
  }
end]]

function io:type(val)
  return false
end

io.open = function (fileName, mode)
  if fileName == "first.run" then
    return false
  else
    --print(fileName)
    fileName = "/PathOfBuilding/" .. fileName
    --print("io.open: ", fileName)
    --local status, content = pcall(loadfile, fileName)
    local content = loadfile(fileName)
    return {
      read = function () return content end,
      close = function () end
    }
  end
end
