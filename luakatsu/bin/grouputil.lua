local function __eq(l, r)
	if type(l) == "table" and type(r) == "table" then
		return rawequal(l, r)
	end
end


return {__eq = __eq}
