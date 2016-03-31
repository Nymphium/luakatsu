local prof_iter = function(prof)
	local pos = 0

	return function()
		pos = pos + 1

		if prof[pos] then return prof[pos][1], prof[pos][2] end
	end
end

local printprof = function(prof)
	for key, val in prof_iter(prof) do
		if type(val) == "table" then
			if type(val[1]) == "table" then
				local t = {}

				for _, name in pairs(val) do table.insert(t, name.name) end

				val = t
			end

			val = table.concat(val, ", ")
		end

		if key and val then
			print(key, val)
		end
	end
end

local mkprofmt = function(prof)
	local mt = {}

	if prof[#prof][1] == "zodiac_sign" then
		local b = table.remove(prof, #prof)
		table.insert(prof, 3, b)
		local z = table.remove(prof, #prof)
		table.insert(prof, 3, z)
	end

	for key, val in prof_iter(prof) do
		mt[key] = val

		if type(val) == "table" then
			setmetatable(mt[key], {__call = function() printprof(val) end})
		end
		
	end

	return mt
end

local makemt = function(t)
	local index = {}
	local ret = {}

	for _, chara in pairs(t) do
		index[chara.name_rm] = chara
		chara.name_rm = nil
		local each_index = mkprofmt(chara)

		table.insert(ret, setmetatable(chara, {__index = each_index, __call = function() printprof(chara) end}))
	end

	return setmetatable(ret, {__index = index})
end

return makemt

