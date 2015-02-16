local char_setmeta = require "luakatsu.bin.char_setmeta"
local idols = char_setmeta(require("luakatsu.lib.characters.idols"))
local others = char_setmeta(require("luakatsu.lib.characters.others"))
local t = {idols = idols, others = others}
local main_characters = {}
local _M = getmetatable(idols).__index
local m2 = getmetatable(others).__index

for key, i in pairs(m2) do
	table.insert(_M, i)

	_M[key] = i
end

Aikatsu = setmetatable(main_characters, {__index = _M, __call = function() print("私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ") end})

