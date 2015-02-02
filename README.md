# luakatsu (Lua + Aikastu)
[rubicure](https://github.com/sue445/rubicure) is **Ruby + Precure**, it is **Lua + [Aikastu](http://aikatsu.wikia.com/wiki/Aikatsu_Wiki)**

## install
`luarocks --local --from=https://github.com/Nymphium/luarocks/raw/master install luakatsu`

or

```sh
git clone https://github.com/Nymphium/luakatsu
cd luakatsu
luarocks --local make
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
print(Aikatsu.Ichigo.name) ---> 星宮 いちご

print(table.concat(Aikastu.Ichigo.signature_songs), ", ") ---> 輝きのエチュード, Growing for a dream, Dance in the rain

Aikatsu.ichigo()

--[[
name	星宮 いちご
actor	諸星 すみれ
birtyday	3/15
zodiac_sign	Picces
blood_type	O
favorite_brand	Angely Sugar
type	Cute
signature_songs	輝きのエチュード, Growing for a dream, Dance in the rain
sing	霧島 若歌
belonging_to	Soleil,STAR☆ANIS,2wingS
school	スターライト学園
--]]
```


### one-liner
```sh
$ lua -luakatsu -e "print(Aikatsu())"
私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ
```


## License
MIT License

