local char_setmeta = require("luakatsu.bin.char_setmeta")
local merge_table = require("luakatsu.bin.merge_table")
local idols = char_setmeta(require("luakatsu.lib.characters.idols"))
local others = char_setmeta(require("luakatsu.lib.characters.others"))
local main_characters = merge_table(idols, others)
local _M = merge_table(getmetatable(idols).__index, getmetatable(others).__index, 1)

Aikatsu = setmetatable(main_characters, {__index = _M, __call = function() print("私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ") end})
Aikatsu.version = "v1.2-0"

