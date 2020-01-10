WIP

Fengari https://fengari.io/
PoB-Item-Tester https://github.com/VolatilePulse/PoB-Item-Tester

local xmlText = Inflate(common.base64.decode(buf:gsub("-","+"):gsub("_","/")))
self.build:Init(self.build.dbFileName, self.build.buildName, xmlText)
