# luakatsu (Lua + Aikastu) v2.2
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
v2.2
```

### local table (`version >= v2.1-1`)
`local luakatsu = require "luakatsu.local"`

### profile

```lua
print(Aikatsu.Akari.name) ---> 大空 あかり

print(table.concat(Aikastu.Akari.signature_songs), ', ') ---> Blooming♡Blooming

Aikatsu.Akari()

--[[
name	大空 あかり
actor	下地 柴野
birthday	04/01
blood_type	A
favorite_foods	スイカ, チョコレート, ドーナツ, みかん, カレー
special_ablity	ものまね
favorite_brand	Dreamy Crown
type	Cute
signature_songs	Blooming♡Blooming
sing	遠藤 瑠香
affilication	GOGO! いちご応援隊, Skips♪, Luminas
school	スターライト学園
--]]

```

### groups
```lua
Aikatsu.groups.Luminas()

--[[
name	Luminas
members	大空 あかり, 氷上 スミレ, 新条 ひなき
songs	リルビーリルウィン♪
--]]
```


### one-liner
```
$ lua -luakatsu -e Aikatsu\(\)
私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ
```


## License
MIT License

