return  function(self, keyword)
	local ret = {}

	for _, v in pairs(self) do
		if type(v) == "table" and v.name and v.name:match(keyword) then
			table.insert(ret, v)
		end
	end

	return ret
end

