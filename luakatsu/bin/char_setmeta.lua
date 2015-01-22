return function(t)
	local index = {}

	for _, i in pairs(t) do
		index[i.name_rm] = i
	end

	-- local function prof(chara)
		-- for i, j in pairs(chara) do
			-- if type(j) == "table" then
				-- j = table.concat(j, ", ")
			-- end

			-- if i and j then
				-- print(i, j)
			-- end
		-- end
	-- end

	local ret = {}

	for i, j in pairs(t) do
		t[i].name_rm = nil
		-- table.insert(ret, setmetatable(j, {__call = prof(j)}))
		table.insert(ret, setmetatable(j, {__call = function()
			for k, l in pairs(j) do
				if type(l) == "table" then
					l = table.concat(l, ", ")
				end
				if k and l then
					print(k, l)
				end
			end
		end}))
	end

	return setmetatable(ret, {__index = index})
end

