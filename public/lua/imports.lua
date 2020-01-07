function require(name)
  print("Trying to get an extension: "..name)
end

function LoadModule(fileName, ...)
	if not fileName:match("%.lua") then
		fileName = fileName .. ".lua"
	end
  fileName = "/PathOfBuilding/" .. fileName
  print("Trying to load a module: "..fileName)
	local func, err = loadfile(fileName)
	if func then
		return func(...)
	else
		error("LoadModule() error loading '"..fileName.."': "..err)
	end
end
