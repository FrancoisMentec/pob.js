--[[io = {}

function io:open (mode)
  fileName = self
  --print("io.open: ", ...)
  return {
    read = function () return loadfile("/PathOfBuilding/" .. fileName) end,
    close = function () end
  }
end

function io:type(val)
  return false
end]]
