window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("launch into space sim")
tab=window:CreateTab("Main")
TPTab=window:CreateTab("Teleports")
MISCTAB=window:CreateTab("Misc")

local LocalPlayer = game.Players.LocalPlayer

tab:CreateSection("Farm $$$")
tab:CreateToggle("Collect Stars",false,function(state)
    _G.AutoCollect=state
    while _G.AutoCollect and task.wait() do
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").DROPS:GetChildren()) do
				local args = {
					[1] = {
						[1] = v.Name
					}
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.6.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DropService"):WaitForChild("RE"):WaitForChild("PickupDrop"):FireServer(unpack(args))
				task.wait()
			end
		end)
	end
end)
tab:CreateToggle("Loop Launch",false,function(state)
    _G.AutoSling=state
    while _G.AutoSling do
        pcall(function()LocalPlayer.Character.HumanoidRootPart.Position=workspace.LAUNCHERS_RENDER:FindFirstChild(LocalPlayer.Name).Part.Position end)
        wait(3)
    end
    if not state then game.Players.LocalPlayer.Character.Head:Destroy() end
    
end)
tab:CreateSection("Upgrades")
tab:CreateToggle("Launcher upgrade 1 (Left)",false,function(state)
    _G.Upgrade1=state
    while _G.Upgrade1 do
        firetouchinterest(LocalPlayer.Character.HumanoidRootPart,workspace.MAP:FindFirstChild("launchpad_"..LocalPlayer.Name).Upgrades.Launcher.current_level.Button,0)
        wait(.03)
    end
end)
tab:CreateToggle("Launcher upgrade 2 (Right)",false,function(state)
    _G.Upgrade2=state
    while _G.Upgrade2 do
        firetouchinterest(LocalPlayer.Character.HumanoidRootPart,workspace.MAP:FindFirstChild("launchpad_"..LocalPlayer.Name).Upgrades.Launcher:FindFirstChild("1_level").Button,0)
        wait(.03)
    end
end)
tab:CreateSection("Eggs /// You still have to autoclick yourself")
tab:CreateToggle("Auto Egg 1",false,function(state)
    _G.Egg1=state
    ermcount=0
    for _, i in pairs(workspace.DEBRIS:GetChildren()) do
        if i.Name=="Part"  then
            ermcount+=1
            if ermcount==1 then
            LocalPlayer.Character.HumanoidRootPart.Position=i.Position
            break end end
    end
    while _G.Egg1 do
        keypress(101)
        --autoclick yourself :'( -- for i=0,25,1 do mousemoverel(5000,5000) mouse1click() wait() end
        wait()
    end
    game.Players.LocalPlayer.Character.Head:Destroy() 
    
end)
tab:CreateToggle("Auto Egg 2",false,function(state)
    _G.Egg1=state
    ermcount=0
    for _, i in pairs(workspace.DEBRIS:GetChildren()) do
        if i.Name=="Part"  then
            ermcount+=1
            if ermcount==2 then
            LocalPlayer.Character.HumanoidRootPart.Position=i.Position
            break end end
    end
    while _G.Egg1 do
        keypress(101)
        --autoclick yourself :'( -- for i=0,25,1 do mousemoverel(5000,5000) mouse1click() wait() end
        wait()
    end
    game.Players.LocalPlayer.Character.Head:Destroy()  
    
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
TPTab:CreateDropdown(
    "Players",
    getPlayerNames(),
    getPlayerNames()[1],
    false,
    function(opt)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(erm(opt)).Character.HumanoidRootPart.CFrame
    end
)
local function tp(loc)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
local function tpn(...)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(...)
end
wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
MISCTAB:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateSlider("CFrame Speed",{0, 50},1,"boost",0,function(v) wsBoost(v/25) end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() _G.wsbran=false end)