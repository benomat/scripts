window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("testing")
tab=window:CreateTab("Main")
TPTab=window:CreateTab("Teleports")
MISCTAB=window:CreateTab("Misc")

local LocalPlayer = game.Players.LocalPlayer

tab:CreateSection("Farm $$$")
tab:CreateToggle("Auto Farm",false,function(state)
    getgenv().farmi=state
    while getgenv().farmi and wait() do
        if workspace:FindFirstChild("Floppa") then pcall(function()fireclickdetector(workspace.Floppa)end) end
        for _, i in pairs(workspace:GetChildren()) do
            if i:isA("Part") and i:FindFirstChild("Floppa") then pcall(function()fireclickdetector(i.Floppa)end) end
            if i.Name=="Money" then pcall(function()firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, i,0)end) end
            if i.Name=="Money Bag" then pcall(function()firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, i,0)end) end
        end
    end
end)
tab:CreateParagraph("so yeah","there really is nothing to do here\nyou still gotta feed and stuff")
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
playerselector=TPTab:CreateDropdown(
    "Players",
    getPlayerNames(),
    getPlayerNames()[1],
    false,
    function(opt)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(erm(opt)).Character.HumanoidRootPart.CFrame
    playerselector:Set(getPlayerNames()[1])
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
game.Players.LocalPlayer.CharacterAdded:Connect(function() getgenv().wsbran=false end)