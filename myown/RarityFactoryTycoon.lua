window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Rarity Factory Tycoon")
tab=window:CreateTab("Main")
MISCTAB=window:CreateTab("MISC")


repeat task.wait() until game:IsLoaded() if game.PlaceId ~= 10919241870 then game.Players.LocalPlayer:Kick("wrong game") end
local LocalPlayer = game.Players.LocalPlayer
local Tycoons = game.workspace.Tycoons
local myTycoon
for _,v in ipairs(Tycoons:GetDescendants()) do
    if v.Name == "Owner" and v.Value == LocalPlayer.Name then
        myTycoon = v.Parent
    end
end

tab:CreateToggle("Auto Deposit",false,function(state)
    task.spawn(function()
    local depositButton = myTycoon["Orb Processor"]:FindFirstChild("Deposit", true).Button
    local oldDeposit = depositButton.CFrame
    while state and task.wait() do
        depositButton.CanCollide = false
        depositButton.Transparency = 1
        depositButton.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        task.wait()
        depositButton.CFrame = oldDeposit
    end
    depositButton.CanCollide = true
    depositButton.Transparency = 0
end) end)







MISCTAB:CreateSlider("Speed",{16, 500},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("some funcs by griffindoescooking")
MISCTAB:CreateLabel("everything else by benomat")
MISCTAB:CreateLabel("join n stuff")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)