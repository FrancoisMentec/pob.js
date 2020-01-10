--[[
This File is loaded after Headless Wrapper so it can implement some functions Headless Wrapper would have overrided
local parser = XmlParser.parser()
local parser = new XmlParser()
]]

function require(name)
  --print("Trying to get an extension: "..name)
  if name == "xml" then
    return xml
  elseif name == "base64" then
    return base64
  else
    print("require a missing extension: "..name)
  end
end

function LoadModule(fileName, ...)
	if not fileName:match("%.lua") then
		fileName = fileName .. ".lua"
	end
  fileName = "/PathOfBuilding/" .. fileName
  --print("Trying to load a module: "..fileName)
	local func, err = loadfile(fileName)
	if func then
		return func(...)
	else
		error("LoadModule() error loading '"..fileName.."': "..err)
	end
end

function PLoadModule(fileName, ...)
    if not fileName:match("%.lua") then
        fileName = fileName .. ".lua"
    end
    fileName = "/PathOfBuilding/" .. fileName
    local func, err = loadfile(fileName)
    if func then
        return PCall(func, ...)
    else
        error("PLoadModule() error loading '"..fileName.."': "..err)
    end
end

unpack = table.unpack

function PCall(func, ...)
    local ret = { pcall(func, ...) }
    if ret[1] then
        table.remove(ret, 1)
        return nil, unpack(ret)
    else
        return ret[2]
    end
end

function ConPrintf(fmt, ...)
	-- Optional
	print(string.format(fmt, ...))
end

function launch:ShowErrMsg (fmt, ...)
  print("/!\\", string.format(fmt, ...))
end

function SetMainObject(obj)
	mainObject = obj
end

--[[function SetWindowTitle(title) end
function ConExecute(cmd) end
function RenderInit() end
function ConClear() end
function GetScriptPath() return "." end
function GetRuntimePath() end]]

--[[main.modes = {
  LIST = {
    subPath = ""
  }
}]]
