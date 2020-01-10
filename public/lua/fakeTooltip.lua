-- From https://github.com/VolatilePulse/PoB-Item-Tester/blob/master/ItemTester/mockui.lua

FakeTooltip = {
	lines = {}
}

function FakeTooltip:new()
	o = {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function FakeTooltip:AddLine(_, txt)
	local html = lineToHtml(txt)
	table.insert(self.lines, "<p>"..html.."</p>")
end

function FakeTooltip:AddSeparator(_, txt)
	-- Make sure we don't get two in a row
	if self.lines[#self.lines] ~= "<hr/>" then
		table.insert(self.lines, "<hr/>")
	end
end
