return function(...)
	local args = {...}
	local args_len = #args
	local ret = {}
	local add_val = function() end

	if type(args[args_len]) == "number" then
		add_val = function(t, key, val) t[key] = val end

		args_len = args_len - 1
	end

	for num = 1, args_len do
		for key, val in pairs(args[num]) do
			table.insert(ret, val)

			add_val(ret, key, val)
		end
	end

	return ret
end

