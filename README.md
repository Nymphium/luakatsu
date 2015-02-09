# luakatsu (Lua + Aikastu) v1.0-0
[Rubicure](https://github.com/sue445/rubicure) is **Ruby + Precure**, it is **Lua + [Aikastu](http://aikatsu.wikia.com/wiki/Aikatsu_Wiki)**

## install
`luarocks --local --from=https://github.com/Nymphium/luakatsu/raw/master install luakatsu`

or

```sh
git clone https://github.com/Nymphium/luakatsu
cd luakatsu
luarocks --local make
```

or

`luarocks --local --from=https://github.com/Nymphium/luakatsu/raw/v1.0-0 install luakatsu`


## usage
```
$ lua

> require "luakatsu"
> print(type(Aikatsu))
table
> = Aikatsu.version
v1.0-0
```

### profile

```lua
print(Aikatsu.ichigo.name) ---> 星宮 いちご

print(table.concat(Aikastu.ichigo.signature_songs), ", ") ---> 輝きのエチュード, Growing for a dream, Dance in the rain

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
```


### one-liner
```sh
$ lua -luakatsu -e Aikatsu\(\)
私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ
```


## License
MIT License

