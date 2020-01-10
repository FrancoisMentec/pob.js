xml = {
}

function xml:ParseXML (xml)
  local parser = xml2lua.parser(treeHandler)
  return parser.parse(xml)
end

function xml:LoadXMLFile(fileName)
  return nil
end
