# luakatsu (Lua + Aikastu) v2.0-0
[Rubicure](https://github.com/sue445/rubicure) is **Ruby + Precure**, it is **Lua + [Aikastu](http://aikatsu.wikia.com/wiki/Aikatsu_Wiki)**

## install
`luarocks --local install luakatsu`

or

```sh
git clone https://github.com/Nymphium/luakatsu
cd luakatsu
luarocks --local make
```


## compatibility
after v2.0,
- `An_idol.belonging_to` variable is renamed to `An_idol.affilication`

- Idols' birthdays got zero-padding. (ex. `Aikatsu.Ichigo.birthday  --> 03/15`)

- add favorite_foods and special_ablity


## usage
```
$ lua

> require "luakatsu"
> print(type(Aikatsu))
table
> print(Aikatsu.version)
v2.0-0
```

### profile

```lua
print(Aikatsu.Ichigo.name) ---> 星宮 いちご

print(table.concat(Aikastu.Ichigo.signature_songs), ", ") ---> 輝きのエチュード, Growing for a dream, Dance in the rain

Aikatsu.Ichigo()

--[[
name	星宮 いちご
actor	諸星 すみれ
birthday	03/15
zodiac_sign	Picces
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
members	星宮 いちご, 霧矢 あおい, 紫吹 蘭
songs	ダイヤモンドハッピー
--]]
```

### find
```lua
for _, v in pairs(Aikatsu.find("あ")) do
	print(v.name)
end

--[[
霧矢 あおい
大空 あかり
--]]
```


### one-liner
```
$ lua -luakatsu -e Aikatsu\(\)
私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ
```


## License
MIT License

