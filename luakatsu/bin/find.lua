return  function(keyword)
	local ret = {}

	for _, v in pairs(Aikatsu) do
		if type(v) == "table" and v.name and v.name:match(keyword) then
			table.insert(ret, v)
		end
	end

	return ret
end

