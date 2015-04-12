local makemt = require("luakatsu/bin/makemt")
local idols = makemt(require("luakatsu/lib/idols"))
local _M = {}
_M.__index = getmetatable(idols).__index
_M.__call = function()
	-- as if Aikatsu #25
	local msg = os.date("%m%d") == "0401" and "アメージーング! ショーーターイム! 俺のホットなティーチャー活動､アイカツ! スタートだぜ､イェア!" or "私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ"

	print(msg)
end

Aikatsu = setmetatable(idols, _M)
Aikatsu.version = "v2.0-0"
Aikatsu.groups = makemt(require("luakatsu/lib/groups")(idols))
Aikatsu.find = require("luakatsu/bin/find")

