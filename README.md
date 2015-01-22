# luakatsu (Lua + Aikastu)

[rubicure](https://github.com/sue445/rubicure) is **Ruby + Precure**, it is **Lua + [Aikastu](http://aikatsu.wikia.com/wiki/Aikatsu_Wiki)**

```
/path/to/LUA_PATH
 ├────luakatsu.lua
 ├────uakatsu.lua
 └────luakatsu/
```


## usage

```
$ lua

> require "luakatsu"
> print(type(Aikatsu))
table
```

### profile

```lua
print(Aikatsu.ichigo) ---> 星宮 いちご

Aikatsu.ichigo()

--[[
name	星宮 いちご
actor	諸星 すみれ
birtyday	3/15
zodiac_sign	Picces
blood_type	O
favorite_brand	Angely Sugar
signature_songs	輝きのエチュード, Growing for a dream, Dance in the rain
sing	霧島 若歌
belonging_to	Soleil,STAR☆ANIS,2wingS
school	スターライト学園
--]]

print(table.concat(Aikastu.ichigo.signature_songs), ", ") ---> 輝きのエチュード, Growing for a dream, Dance in the rain
```

### one-liner
```sh
$ lua -luakatsu -e "print(Aikatsu())"
私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ
```

