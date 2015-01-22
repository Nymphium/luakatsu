return function(charas, s)
	return function(s)
		if s == 1 then
			s = "スターライト学園"
		elseif s == 2 then
			s = "ドリーム・アカデミー"
		end

		local t = {}

		for _, i in pairs(charas) do
			if (type(i) ~= "function") then
				if(i.school == s) then
					table.insert(t, i)
				end
			end
		end

		return t
	end
end

