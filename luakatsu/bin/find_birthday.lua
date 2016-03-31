return function(self, birthday)
	for _, v in pairs(self) do
		if type(v) == "table" and v.name and v.birthday:match(birthday) then
			return v
		end
	end
end

