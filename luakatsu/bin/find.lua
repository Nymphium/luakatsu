local find =  function(keyword)
	local ret = {}

	for _, v in pairs(Aikatsu) do
		if type(v) == "table" and v.name and v.name:match(keyword) then
			table.insert(ret, v)
		end
	end

	return ret
end

local next_birthday = function()
	local numtime = function(date)
			local m, d = date:match("(%d+)/(%d+)")

			return {m = tonumber(m), d = tonumber(d)}
	end

	local today = numtime(os.date("%m/%d"))

	local ret

	for _, v in pairs(Aikatsu) do
		if type(v) == "table" and v.birthday then
			local birt = numtime(v.birthday)

			if not ret then ret = v end

			
		end
	end
end

