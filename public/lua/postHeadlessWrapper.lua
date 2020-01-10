--[[
This File is loaded after Headless Wrapper so it can implement some functions Headless Wrapper would have overrided
local parser = XmlParser.parser()
local parser = new XmlParser()
]]

xml = {
}

function xml:ParseXML (xml)
  local parser = xml2lua.parser(treeHandler)
  return parser.parse(xml)
end

function require(name)
  print("Trying to get an extension: "..name)
  if name == "xml" then
    return xml
  else
    -- print("Trying to get an extension: "..name)
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

function ConPrintf(fmt, ...)
	-- Optional
	--print(string.format(fmt, ...))
end

function launch:ShowErrMsg (fmt, ...)
  print("/!\\", string.format(fmt, ...))
end
