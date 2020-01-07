WIP

Fengari https://fengari.io/

local xmlText = Inflate(common.base64.decode(buf:gsub("-","+"):gsub("_","/")))
self.build:Init(self.build.dbFileName, self.build.buildName, xmlText)
