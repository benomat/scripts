window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Dino sim")
tab=window:CreateTab("Main")
tab:CreateLabel("idk how this game works so I wont be making any custom funcs")
local wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/OLDwsBoost.lua"))()
tab:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Dinosaur.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Dinosaur.WalkSpeed = v end)
tab:CreateSlider("CFrame Speed",{0, 150},1,"boost",0,function(v) wsBoost(v/25) end)
tab:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
tab:CreateLabel("by benomat")
tab:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() getgenv().wsbran=false end)