function idols(school)
	local t = {}

	for _, i in pairs(school) do
		if type(i) == "table" then
			table.insert(t, i["name"])
		end
	end

	setmetatable(t, {__call = function() for _, i in pairs(t) do print(i) end end})

	return t
end

StarLight = require "starLight"
DreamAcademy = require "dreamAcademy"

