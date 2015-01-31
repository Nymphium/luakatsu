package = "luakatsu.rockspec"
version = "1.0-0"
source = {
	url = "https://github.com/Nymphium/luakatsu"
}
description = {
	summary = "\"Aikatsu! ~ idol katsudou\" ~ with lua",
	detailed = [[
	Let's Aikatsu! with Lua!!
	]],
	homepage = source.url,
	license = "MIT"
}
dependencies = {
	"lua ~> 5.2"
}
build = {
	type = "builtin",
	modules = {
		luakatsu = "luakatsu.lua",
		uakatsu = "uakatsu.lua",
		['luakatsu.bin.char_setmeta'] = "luakatsu/bin/char_setmeta.lua",
		['luakatsu.bin.which_school'] = "luakatsu/bin/which_school.lua",
		['luakatsu.character.idols'] = "luakatsu/character/idols.lua",
		['luakatsu.character.others'] = "luakatsu/character/others.lua",
	}
}

