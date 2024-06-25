window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("i forgot the name")
tab=window:CreateTab("Main")
TPTab=window:CreateTab("Teleports")
MISCTAB=window:CreateTab("Misc")

local LocalPlayer = game.Players.LocalPlayer

tab:CreateSection("Farm $$$")
tab:CreateToggle("Collect Stars (gotta be in the area)",false,function(state)
    _G.AutoCollect=state
    while _G.AutoCollect do
        for _,drop in ipairs(workspace.DROPS:GetChildren()) do
            drop.BillboardGui.Enabled=false
            drop.Position = LocalPlayer.Character.HumanoidRootPart.Position
        end
        wait()
    end
end)
tab:CreateToggle("loop go into slingshot",false,function(state)
    _G.AutoSling=state
    while _G.AutoSling do
        pcall(function()LocalPlayer.Character.HumanoidRootPart.Position=workspace.LAUNCHERS_RENDER:FindFirstChild(LocalPlayer.Name).Part.Position end)
        wait(3)
    end
    if not state then game.Players.LocalPlayer.Character.Head:Destroy() end
    
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
TPTab:CreateSection("Teleport just you")
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
MISCTAB:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)