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

### name

```lua
print(Aikatsu.ichigo) ---> 星宮 いちご
```


### oneliner
```sh
$ lua -luakatsu -e "print(Aikatsu())"
私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ
```

