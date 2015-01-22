return function(t)
	local index = setmetatable({}, {__mode = "k"})

	for _, i in pairs(t) do
		index[i.name_rm] = i
	end

	for k in pairs(t) do
		t[k].name_rm = nil
	end

	return setmetatable(t, {__index = index})
end

