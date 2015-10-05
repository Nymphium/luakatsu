--[[ function detect_zodiac
detect zodiac sign with date

---
arg. date(string): a date format as "MM/DD"
---
return: string
--]]
local function detect_zodiac(date)
	local m, d = date:match("(%d+)/(%d+)")
	m = tonumber(m)
	d = tonumber(d)

	if m < 2 then return d < 20 and "Capricorn" or "Aquarius" end
	if m < 3 then return d < 19 and "Aquarius" or "Pisces" end
	if m < 4 then return d < 21 and "Pisces" or "Aries" end
	if m < 5 then return d < 20 and "Aries" or "Taurus" end
	if m < 6 then return d < 21 and "Taurus" or "Gemini" end
	if m < 7 then return d < 22 and "Gemini" or "Cancer" end
	if m < 8 then return d < 23 and "Cancer" or "Leo" end
	if m < 9 then return d < 23 and "Leo" or "Virgo" end
	if m < 10 then return d < 23 and "Virgo" or "Libra" end
	if m < 11 then return d < 24 and "Libra" or "Scorpio" end
	if m < 12 then return d < 23 and "Scorpio" or "Sagittarius" end
	return d < 23 and "Sagittarius" or "Capricorn"
end



--[[ function tag
return table: `{TAG, ARG}` , able to assigne tag name with number

---
arg. category(number or string): number or tag name
	number:
		1: name
		2: actor
		3: birthday
		4: blood_type
		5: favorite_foods
		6: special_ablity
		7: favorite_brand
		8: type
		9: signature_songs
		10: singer
		11: affilication
		12: school
arg. ...: some argument
	if number of arg(...) > 1, these are handed to function as table {...}

	with some `category`, can use numbers instead of some values
	
	category:
		4 (blood_type):
			arg:
				1: "A"
				2: "B"
				3: "O"
				4: "AB"
		9 (type):
			arg:
				1: "Cute"
				2: "Pop"
				3: "Sexy"
				4: "Cool"
		12 (school):
			arg:
				1: "スターライト学園"
				2: "ドリーム･アカデミー"
---
return: table
--]]
local function tag(category, ...)
	local arg = #{...} < 2 and ... or {...}

	if type(category) ~= "number" then
		return {category, arg}
	end

	local tagname

	if category < 2 then
		tagname = "name"
	elseif category < 3 then
		tagname = "actor"
	elseif category < 4 then
		return {"birthday", arg}, {"zodiac_sign", detect_zodiac(arg)}
	elseif category < 5 then
		tagname = "blood_type"

		if arg < 2 then
			arg = "A"
		elseif arg < 3 then
			arg = "B"
		elseif arg < 4 then
			arg = "O"
		elseif arg < 5 then
			arg = "AB"
		end
	elseif category < 6 then
		tagname = "favorite_foods"
	elseif category < 7 then
		tagname = "special_ablity"
	elseif category < 8 then
		tagname = "favorite_brand"
	elseif category < 9 then
		tagname = "type"

		if arg < 2 then
			arg = "Cute"
		elseif arg < 3 then
			arg = "Pop"
		elseif arg < 4 then
			arg = "Sexy"
		elseif arg < 5 then
			arg = "Cool"
		end
	elseif category < 10 then
		tagname = "signature_songs"
	elseif category < 11 then
		tagname = "sing"
	elseif category < 12 then
		tagname = "affilication"
	elseif category < 13 then
		tagname = "school"

		if type(arg) == "string" then
			arg = arg
		elseif arg < 2 then
			arg = "スターライト学園"
		elseif arg < 3 then
			arg = "ドリーム･アカデミー"
		end
	end

	return {tagname, arg}
end


return tag

