local char_setmeta = require "luakatsu.bin.char_setmeta"

local idols = char_setmeta(require("luakatsu.lib.characters.idols"))
local others = char_setmeta(require("luakatsu.lib.characters.others"))

local t = {idols = idols, others = others}

local main_characters = {}

for _, h in pairs(t) do
	for _, i in pairs(h) do
		table.insert(main_characters, i)
	end
end

local _M = getmetatable(idols).__index
local m2 = getmetatable(others).__index

for key, i in pairs(m2) do
	table.insert(_M, i)

	_M[key] = i
end

_M.which_school = (require("luakatsu.bin.which_school"))(main_characters)
_M.idols = idols
_M.others = others

Aikatsu = setmetatable(main_characters, {__index = _M, __call = function() print("私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ") end})

