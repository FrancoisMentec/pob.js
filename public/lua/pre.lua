--[[
This file is loaded after extensions abut before any PoB File
]]

function require(name)
  print("HeadlessWrapper require: "..name)
end

function dofile (fileName)
  if fileName == "Launch.lua" then
    print("dofile(Launch.lua) prevented")
  else
    print("doFile: " .. fileName)
    local f = assert(loadfile("PathOfBuilding/" .. fileName))
    return f()
  end
end

function GetTime()
	return 0
end

launch = {
  devMode = true
}

--[[main = {
  modes = {
    LIST = {
      subPath = ""
    }
  }
}

function main:SET]]
