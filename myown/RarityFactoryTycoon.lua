window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Rarity Factory Tycoon")
tab=window:CreateTab("Auto")
mtab=window:CreateTab("More")
MISCTAB=window:CreateTab("Misc")


repeat task.wait() until game:IsLoaded() if game.PlaceId ~= 10919241870 then game.Players.LocalPlayer:Kick("wrong game") end
local LocalPlayer = game.Players.LocalPlayer
local myTycoon = game.Workspace.Tycoons:FindFirstChild(tostring(LocalPlayer.Tycoon.Value))

tab:CreateSection("Farm $$$")
tab:CreateToggle("Auto Collect",false,function(state)
    _G.AutoCollect=state
    while _G.AutoCollect do
        for _,drop in ipairs(myTycoon['Drops']:GetChildren()) do
            if drop:IsA("Part") then
                drop.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
        wait()
    end
end)
tab:CreateToggle("Auto Deposit",false,function(state)
    local depositButton = myTycoon["Orb Processor"]:FindFirstChild("Deposit", true).Button
    local oldDeposit = depositButton.CFrame
    _G.AutoDep=state
    while _G.AutoDep and task.wait() do
        depositButton.CanCollide = false
        depositButton.Transparency = 1
        depositButton.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        task.wait()
        depositButton.CFrame = oldDeposit
    end
    depositButton.CanCollide = true
    depositButton.Transparency = 0
end)
tab:CreateSection("Upgades >,<")
function AutoBuy(fire,nameSearch)
    for _, button in pairs(myTycoon.Buttons:GetChildren()) do
        wait()
        if string.find(button.Name, nameSearch) and button:FindFirstChild("Glow") then
            firetouchinterest(LocalPlayer.Character.HumanoidRootPart, button.Button, fire)
            wait(.05)
        end
    end
end
b1=tab:CreateToggle("Auto buy droppers",false,function(state)
    searchTerm="Dropper"
    _G.AutoBDroppers=state
    if state then fire=0
    else fire=1 end
    while _G.AutoBDroppers do
        AutoBuy(fire,searchTerm)
        wait(.5)
    end
    print("end")
    -- if not state then AutoBuy(fire,searchTerm) end
end)
b2=tab:CreateToggle("Auto buy next floor",false,function(state)
    searchTerm="Floor"
    _G.AutoBFloor=state
    if state then fire=0
    else fire=1 end
    while _G.AutoBFloor and task.wait() do
        AutoBuy(fire,searchTerm)
        wait(.5)
    end
    print("end")
    -- if not state then AutoBuy(fire,searchTerm) end
end)
b3=tab:CreateToggle("Auto buy Process Speed",false,function(state)
    searchTerm="Process Speed"
    _G.AutoBPS=state
    if state then fire=0
    else fire=1 end
    while _G.AutoBPS do
        AutoBuy(fire,searchTerm)
        wait(.5)
    end
    print("end")
    -- if not state then AutoBuy(fire,searchTerm) end
end)
tab:CreateToggle("Auto Rebirth",false,function(state)
    local rebirthButton = myTycoon:FindFirstChild("Rebirth", true).Button
    if state then rebirthButton.BillboardGui.Enabled=false
    else rebirthButton.BillboardGui.Enabled=true end
    local oldrebirth = rebirthButton.CFrame
    _G.AutoReb=state
    while _G.AutoReb and task.wait() do
        rebirthButton.CanCollide = false
        rebirthButton.Transparency = 1
        rebirthButton.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        task.wait()
        rebirthButton.CFrame = oldrebirth
    end
    rebirthButton.CanCollide = true
    rebirthButton.Transparency = 0
end)


mtab:CreateSection("Get boosts")
mtab:CreateToggle("Auto collect Gifts",false,function(state)
    _G.AutoGifts=state
    while _G.AutoGifts do 
        for i=1,12,1 do 
            game.ReplicatedStorage.Remotes.ClaimGift:FireServer(i)
        end
        wait(5)
    end
end)
_G.ParkourReward="Money"
mtab:CreateDropdown(
    "Select Parkour Reward",
    {"Money","Luck","ProcessSpeed"},
    _G.ParkourReward,
    false,
    function(opt)
        _G.ParkourReward = erm(opt) 
end)
mtab:CreateToggle("Farm Parkour Boosts",false,function(state)
    _G.FarmParkour=state
    while _G.FarmParkour do
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Obby.RewardButtons[_G.ParkourReward].Button, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Obby.RewardButtons[_G.ParkourReward].Button, 1)
        wait(2)
    end
end)
mtab:CreateSection("other")
mtab:CreateButton("Collect Airdrops",function()
    old_pos=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for _, airdrop in pairs(workspace.AirDrops:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = airdrop.Crate.CFrame
        wait(.1)
        if fireproximityprompt then fireproximityprompt(airdrop.Crate.ProximityPrompt) wait(.05)
        else
            keypress(Enum.KeyCode.E)-- airdrop.Crate.ProximityPrompt:InputHoldBegin()
            wait(2.5)
            keyrelease(Enum.KeyCode.E)-- airdrop.Crate.ProximityPrompt:InputHoldEnd()
        end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=old_pos
end)
function getPlayerNames()
    playerNames = {}
    for _,i in pairs(game.Players:GetPlayers()) do
        table.insert(playerNames, i.Name)
    end
    return playerNames
end
function erm(t)
    return t[1]
end
MISCTAB:CreateDropdown(
    "Teleport to",
    getPlayerNames(),
    getPlayerNames()[1],
    false,
    function(opt)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(erm(opt)).Character.HumanoidRootPart.CFrame
    end
)

wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
MISCTAB:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateSlider("CFrame Speed",{0, 50},1,"boost",0,function(v) wsBoost(v/25) end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() _G.wsbran=false end)