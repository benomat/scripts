window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Blade Ball Loader")
tab=window:CreateTab("Main")
MISCTAB=window:CreateTab("Misc")


tab:CreateSection("Load script")

tab:CreateButton("FFJ 2.5 [ NO KEYSYSTEM ]",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/BladeBall.lua'))()
    keypress(290)
end)
tab:CreateButton("FFJ v3 [ 1 linkvertise ]",function()loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/BladeBallV3.lua"))()end)
tab:CreateLabel("v3 is a bit better at clashing")

tab:CreateSection("Speed Boost (Blatant)")
wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
tab:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
tab:CreateSlider("CFrame Speed",{0, 150},1,"boost",0,function(v) wsBoost(v/30) end)

tab:CreateSection("Farm $$$ (Blatant)")
tab:CreateToggle("Autofarm drops",false,function(state)
    getgenv().ERMSIES = state
    while getgenv().ERMSIES do
        for _, v in game.Workspace.Map:GetChildren()[1]:GetChildren() do
            local old_pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if v.Name == "Drop" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, -2.5, 0)
                wait(0.4)
            end
            -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old_pos
        end
        task.wait()
    end
end)


MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("Loader by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)

