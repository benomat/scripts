local Lib = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local window = Lib:CreateWindow({
   Name = "Raceclickersex /// [>::<] ^(>.1)^",
   LoadingTitle = "Raceclicker",
   LoadingSubtitle = "by benomat"})
local tab = window:CreateTab("Hacks")
local tab3 = window:CreateTab("Misc")

-- Auto Click
Toggle = tab:CreateToggle({ Name="Auto Click",CurrentValue = false,Callback=function(bool) 
if bool== true then
_G.AutoClick = true
while _G.AutoClick == true do
game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
wait()
end
end
end})

Toggle = tab:CreateToggle({ Name="Auto Win",CurrentValue = false,Callback=function(win) 

if win == true  then
_G.wins = true
while  _G.wins == true do
local CFrameEnd = CFrame.new(-442415.71875, 2.9999988079071045, -70.02269744873047) -- Place your coords in here
local Time = 1-- Time in seconds
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play(0.1)
tween.Completed:Wait()
wait()
end
else
_G.wins = false
end
end})





tab:CreateLabel("PETS")


Toggle = tab:CreateToggle({ Name=" Auto Craft",CurrentValue = false,Callback=function(cra) 
if cra == true then
_G.craft = true 
while _G.craft == true do
game:GetService("ReplicatedStorage").Packages.Knit.Services.PetsService.RF.CraftAll:InvokeServer()
wait()
end
else
_G.craft = false
end
end})



Toggle = tab:CreateToggle({ Name=" Auto Equip Best Pets",CurrentValue = false,Callback=function(eq) 
if eq == true then
_G.ez = true 
while _G.ez == true do
game:GetService("ReplicatedStorage").Packages.Knit.Services.PetsService.RF.EquipBest:InvokeServer()
wait()
end
else
_G.ez = false
end
end})








Toggle = tab:CreateToggle({ Name="Auto Hatch - 5 WIN ",CurrentValue = false,Callback=function(one) 
if one == true then
_G.stne =true
while _G.stne == true do
local args = {
    [1] = "Starter01",
    [2] = "Auto",
    [3] = {}
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.Open:InvokeServer(unpack(args))
wait()
end
else
_G.stne = false
end
end})


Toggle = tab:CreateToggle({ Name="Auto Hatch - 25 WIN ",CurrentValue = false,Callback=function(two) 
if two  == true then
_G.vv = true 
while _G.vv == true do
local args = {
    [1] = "Starter02",
    [2] = "Auto",
    [3] = {}
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.Open:InvokeServer(unpack(args))
wait()
end
else
_G.vv = false
end
end})



Toggle = tab:CreateToggle({ Name="Auto Hatch - 175 WIN ",CurrentValue = false,Callback=function(three) 
if three == true then
_G.kk = true
while _G.kk == true do
local args = {
    [1] = "Starter03",
    [2] = "Auto",
    [3] = {}
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.Open:InvokeServer(unpack(args))

wait()
end
else
_G.kk= false
end
end})


Toggle = tab:CreateToggle({ Name="Auto Hatch - 1k WIN ",CurrentValue = false,Callback=function(four) 
if four== true then
_G.bb = true 
while _G.bb == true do
local args = {
    [1] = "Starter04",
    [2] = "Auto",
    [3] = {}
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.Open:InvokeServer(unpack(args))

wait()
end
else
_G.bb = false
end
end})





Toggle = tab:CreateToggle({ Name="Auto Hatch - 10k WIN ",CurrentValue = false,Callback=function(five) 
if five == true then
_G.xd = true 
while _G.xd == true do
local args = {
    [1] = "Pro01",
    [2] = "Auto",
    [3] = {}
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.Open:InvokeServer(unpack(args))
wait()
end
else
_G.xd = false
end
end})


Toggle = tab:CreateToggle({ Name="Auto Hatch - 75k WIN ",CurrentValue = false,Callback=function(six) 
if six == true then
_G.nah = true 
while _G.nah == true do
local args = {
    [1] = "Pro02",
    [2] = "Auto",
    [3] = {}
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.Open:InvokeServer(unpack(args))

wait()
end
else
_G.nah = false
end
end})



Toggle = tab:CreateToggle({ Name="Auto Hatch - 225k WIN ",CurrentValue = false,Callback=function(sven) 
if sven == true then
_G.alr = true 
while _G.alr == true do
local args = {
    [1] = "Pro03",
    [2] = "Auto",
    [3] = {}
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.Open:InvokeServer(unpack(args))

wait()
end
else
_G.alr = false
end
end})







local Slider = tab3:CreateSlider({
   Name = "Speed",
   Range = {16, 9999999},
   Increment = 4,
   Suffix = "studs per second",
   CurrentValue = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 
   Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
tab3:CreateButton({    Name = " Rejoin Server  ", Callback=function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end})
tab3:CreateLabel("join n stuff")
tab3:CreateButton({Name="Copy discord invite",Callback=function()setclipboard("discord.gg/gUMYGXqPPw")end})