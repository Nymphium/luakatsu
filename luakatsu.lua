local makemt = require("luakatsu/bin/makemt")
local idols = makemt(require("luakatsu/lib/idols"))
local _M = {}
_M.__index = getmetatable(idols).__index
_M.__call = function() print("私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ") end

Aikatsu = setmetatable(idols, _M)
Aikatsu.version = "v2.0-0"
Aikatsu.groups = makemt(require("luakatsu/lib/groups")(idols))

