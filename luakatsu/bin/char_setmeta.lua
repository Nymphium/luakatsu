local index = {}
local ret = {}

local prof_iter = function(prof)
	local pos = 0

	return function()
		pos = pos + 1

		if not prof[pos] then return nil end

		return prof[pos][1], prof[pos][2]
	end
end

local printprof = function(prof)
	for key, val in prof_iter(prof) do
		if type(val) == "table" then
			val = table.concat(val, ", ")
		end

		if key and val then
			print(key, val)
		end
	end
end

local mkprofmt = function(prof)
	local mt = {}

	for key, val in prof_iter(prof) do
		mt[key] = val
	end

	return mt
end


return function(t)
	for _, chara in pairs(t) do
		index[chara.name_rm] = chara
		chara.name_rm = nil
		local index = mkprofmt(chara)

		table.insert(ret, setmetatable(chara, {__index = index, __call = function() printprof(chara) end}))
	end

	return setmetatable(ret, {__index = index})
end

