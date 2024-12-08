if game.PlaceId == 8542259458 then
  return loadstring(game:HttpGet("https://raw.githubusercontent.com/bypassv5/Sigmaware/main/games/8542259458.lua"))()
elseif game.PlaceId == 1 then
  return loadstring(game:HttpGet("https://raw.githubusercontent.com/bypassv5/Sigmaware/main/main.lua"))()
else
  return loadstring(game:HttpGet("https://raw.githubusercontent.com/bypassv5/Sigmaware/main/universal.lua"))()
end
