# luakatsu (Lua + Aikastu) v1.3-1
[Rubicure](https://github.com/sue445/rubicure) is **Ruby + Precure**, it is **Lua + [Aikastu](http://aikatsu.wikia.com/wiki/Aikatsu_Wiki)**

## install
`luarocks --local --from=https://github.com/Nymphium/luakatsu/raw/master/ install luakatsu`

or

```sh
git clone https://github.com/Nymphium/luakatsu
cd luakatsu
luarocks --local make
```


### each versions
`luarocks --local --from=https://github.com/Nymphium/luakatsu/raw/*VERSION* install luakatsu`

#### example(v1.0-0)

`luarocks --local --from=https://github.com/Nymphium/luakatsu/raw/v1.0-0 install luakatsu`


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
v1.3-1
```

### profile

```lua
print(Aikatsu.Ichigo.name) ---> 星宮 いちご

print(table.concat(Aikastu.Ichigo.signature_songs), ", ") ---> 輝きのエチュード, Growing for a dream, Dance in the rain

Aikatsu.Ichigo()

--[[
name	星宮 いちご
actor	諸星 すみれ
birthday	3/15
zodiac_sign	Picces
blood_type	O
favorite_brand	Angely Sugar
type	Cute
signature_songs	輝きのエチュード, Growing for a dream, Dance in the rain
sing	霧島 若歌
belonging_to	Soleil, STAR☆ANIS, 2wingS
school	スターライト学園
--]]

```

### groups
```lua
Aikatsu.groups.Soleil()

--[[
name	Soleil
members	星宮 いちご, 霧矢 あおい, 紫吹 蘭
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

