# luakatsu (Lua + Aikastu) v2.1-1
[Rubicure](https://github.com/sue445/rubicure) is **Ruby + Precure**, it is **Lua + [Aikastu](http://aikatsu.wikia.com/wiki/Aikatsu_Wiki)**

## install
`luarocks --local install luakatsu`

or

`luarocks --local --from=https://github.com/Nymphium/luakatsu/raw/master/ install luakatsu`

or

```sh
git clone https://github.com/Nymphium/luakatsu
cd luakatsu
luarocks --local make
```


## compatibility
after v1.3, non-idol characters' data is nothing here.
	and catchphrase is not supported.

## usage
```
$ lua

> require "luakatsu"
> print(type(Aikatsu))
table
> print(Aikatsu.version)
v2.1-1
```

### local table (`version >= v2.1-1`)
`local luakatsu = require "luakatsu.local"`

### profile

```lua
print(Aikatsu.Ichigo.name) ---> 星宮 いちご

print(table.concat(Aikastu.Ichigo.signature_songs), ", ") ---> 輝きのエチュード, Growing for a dream, Dance in the rain

Aikatsu.Ichigo()

--[[
name	星宮いちご
actor	諸星 すみれ
birthday	03/15
blood_type	O
favorite_foods	のり弁
special_ablity	ご飯をきっちりよそう
favorite_brand	Angely Sugar
type	Cute
signature_songs	輝きのエチュード, Growing for a dream, Dance in the rain
sing	霧島 若歌
affilication	Soleil, STAR☆ANIS, 2wingS
school	スターライト学園
--]]

```

### groups
```lua
Aikatsu.groups.Soleil()

--[[
name	Soleil
members	星宮いちご, 霧矢 あおい, 紫吹 蘭
songs	ダイヤモンドハッピー
--]]
```


### one-liner
```
$ lua -luakatsu -e Aikatsu\(\)
私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ
```


## License
MIT License

