return function(t)
	local index = {}
	local ret = {}

	for _, i in pairs(t) do
		index[i.name_rm] = i
		i.name_rm = nil
	end

	for _, j in pairs(t) do
		table.insert(ret, setmetatable(j, {__call = function()
			for _, l in pairs(j) do
				key = l[1]
				val = l[2]

				if type(val) == "table" then
					val = table.concat(val, ", ")
				end

				if key and val then
					print(key, val)
				end
			end
		end}))
	end

	return setmetatable(ret, {__index = index})
end

