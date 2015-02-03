local t = {
	{
		"Soleil",
		{idols.Ichigo, idols.Aoi, idols.Ran},
		{"ダイヤモンドハッピー"}
	},
	{
		"STAR☆ANIS",
		{idols.Ichigo, idols.Aoi, idols.Ran, idols.Otome, idols.Yurika, idols.Sakura, idols.Kaede, idols.Mizuki},
		{"ヒラリ/ヒトリ/キラリ"}
	},
	{
		"2wingS",
		{idols.Ichigo, idols.Seira},
		{"Sweet Sp!ce","フレンド"}
	},
	{
		"Tristar",
		{idols.Yurika, idols.Kaede, idols.Mizuki},
		{"Take Me Higher"}
	},
	{
		"ぽわぽわプリリン",
		{idols.Shion, idols.Otome, idols.Sakura}
	},
	{
		"GOGO! いちご応援隊",
		{idols.Akari, idols.Sumire, idols.Hinaki}
	},
	{
		"WM",
		{idols.Mizuki, idols.Mikuru},
		{"真夏のSuncatcher", "Precious"}
	},
	{
		"More than true",
		{others.Hiro, others.Shurato, others.Nao, others.King},
		{"アリスブルーのキス"}
	}
}

for _, i in pairs(t) do
	setmetatable(i, {
			__index = {name = i[1], members = i[2], songs = i[3]},
			__call = function()
				print("name", i[1])

				local names = {}

				for _, j in pairs(i[2]) do
					table.insert(names, j.name)
				end

				local mem = table.concat(names, ", ")

				print("members", mem)

				if i[3] then
					local s = table.concat(i[3], ",")

					print("songs", s)
				end
			end
		})
end

return t

