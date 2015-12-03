return function(birthday)
	for _, v in pairs(Aikatsu) do
		if type(v) == "table" and v.name and v.birthday:match(birthday) then
			return v
		end
	end
end

