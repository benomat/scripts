window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("cute universal")
tab=window:CreateTab("Main")
TPTab=window:CreateTab("Teleports")
playertab=window:CreateTab("Players")
funtab=window:CreateTab("Fun")
MISCTAB=window:CreateTab("Misc")


local LocalPlayer = game.Players.LocalPlayer
function erm(t)
    return t[1]
end
function erms(furry,sexporn)
    return furry[sexporn]
end

tab:CreateSection("stuff1")
wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
tab:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
tab:CreateSlider("CFrame Speed",{0, 150},1,"boost",0,function(v) wsBoost(v/30) end)
tab:CreateSection("stuff2")
solidfloortoggle=tab:CreateToggle("Solid Private Room Floor",false,function(state)
    for _,v in pairs(game.Workspace:GetChildren()) do
        if v:FindFirstChild("houseInteriorCoffeeTable") then
            v:GetChildren()[6].CanCollide=state
        end
    end
end)
local GetService = game.GetService
local Services = {
    Workspace = GetService(game, "Workspace");
    UserInputService = GetService(game, "UserInputService");
    ReplicatedStorage = GetService(game, "ReplicatedStorage");
    StarterPlayer = GetService(game, "StarterPlayer");
    StarterPack = GetService(game, "StarterPack");
    StarterGui = GetService(game, "StarterGui");
    TeleportService = GetService(game, "TeleportService");
    CoreGui = GetService(game, "CoreGui");
    TweenService = GetService(game, "TweenService");
    HttpService = GetService(game, "HttpService");
    TextService = GetService(game, "TextService");
    MarketplaceService = GetService(game, "MarketplaceService");
    Chat = GetService(game, "Chat");
    Teams = GetService(game, "Teams");
    SoundService = GetService(game, "SoundService");
    Lighting = GetService(game, "Lighting");
    ScriptContext = GetService(game, "ScriptContext");
    Stats = GetService(game, "Stats");
}
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Player = Players.LocalPlayer
local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers, Player) then
            table.remove(GetPlayers, table.find(GetPlayers, Player))
        end
        return GetPlayers[math.random(#GetPlayers)]
        elseif Name ~= "random" then
            for _, x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^" .. Name) then
                    return x;
                    elseif x.DisplayName:lower():match("^" .. Name) then
                        return x;
                    end
            end
        end
    else
        return
    end
end

playertab:CreateInput("Select Player","Name",false,function(name)
    _G.SelectedPlayer = GetPlayer(name)
end)
playertab:CreateToggle("View",false,function(state)
    if state then Workspace.Camera.CameraSubject = _G.SelectedPlayer.Character
else Workspace.Camera.CameraSubject = Player.Character end
end)
playertab:CreateToggle("Listen to ",false,function(state)
    if state then Services.SoundService:SetListener(Enum.ListenerType.ObjectPosition, _G.SelectedPlayer.Character.HumanoidRootPart)
    else Services.SoundService:SetListener(Enum.ListenerType.Camera)end
end)
playertab:CreateButton("TP to selected",function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.SelectedPlayer.Character.HumanoidRootPart.CFrame end)
playertab:CreateToggle("Loop TP to selected",false,function(state)
    _G.LoopTP=state
    while _G.LoopTP do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.SelectedPlayer.Character.HumanoidRootPart.CFrame
        task.wait()
    end
end)
local function tp(loc)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
local function tpn(...)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(...)
end
function scary()
    solidfloortoggle:Set(true)
    for _,v in pairs(game.Workspace:GetChildren()) do
        if v:FindFirstChild("houseInteriorCoffeeTable") then
            v:GetChildren()[6].CanCollide=true
        end
    end
end
TPTab:CreateSection("Locations")
TPTab:CreateButton("Room 1 [Inside]",function()
    scary()
    tpn(4221.1220703125, 5.622772216796875, 60.028804779052734)
end)
TPTab:CreateButton("Room 1 listen [on top]",function()
    tpn(4240.51904296875, 23.304279327392578, 75.93709564208984)
end)
TPTab:CreateButton("Room 2 [Inside]",function()
    scary()
    tpn(6220.92578125, 23.62276840209961, 60.335548400878906)
end)
TPTab:CreateButton("Room 2 listen [on top]",function()
    tpn(6241.35986328125, 41.30427551269531, 76.17839050292969)
end)
TPTab:CreateLabel("Teleporting inside automatically makes the floor solid")
funtab:CreateDropdown(
    "Animation pack",
    {"Vampire", "Hero", "ZombieClassic", "Cowboy", "Patrol", "Bold", "ZombieFE", "Princess", "Popstar", "Sneaky", "Toy", "Knight", "Confident", "Ghost", "Elder", "Levitation", "Mage", "Astronaut", "Ninja", "Werewolf", "Cartoon", "Pirate"},
    "Select",
    false,
    function(opt)
        getgenv().animchanger=erm(opt)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/a'))()
end)
emoteSelector=funtab:CreateDropdown(
    "Emotes",
    {"Robot","Fancy Feet","Old Town Road Dance","Greatest","Side to Side","Hello","Jumping Cheer","Rodeo Dance","Drum Solo","Point2","Shy","Fishing","strut","Power Blast","Agree","Stadium","Top Rock","sliving","Dizzy","Monkey","High Wave","Louder","Get Out","Heart Skip","Twirl","Tree","Cha-Cha","Salute","Curtsy","Panini Dance","Baby Dance","Sneaky","Line Dance","Bodybuilder","Applaud","Jacks","Shrug","Quiet Waves","Zombie","Godlike","twirl","faceframe","feels","Hype Dance","Sad","Cha Cha","It Ain't My Fault","Hips Poppin'","Take Me Under","Superhero Reveal","Country Line Dance","Samba","Heisman Pose","Happy","Air Guitar","Around Town","Disagree","Shuffle","Rock Star","Jumping Wave","Idol","Floss Dance","Break Dance","Dolphin Dance","HOLIDAY Dance","Air Dance","Beckon","Swish","Rock On","Bored","Fashionable","Cower","Tilt","Tantrum","Dorky Dance","Confused","T","Drum Master","Sleep","Y","Keeping Time","Block Partier","Hero Landing","Fast Hands","Celebrate","Rock Guitar","Haha"},
    {},
    true,
    function(opt)
        getgenv().emotes=opt
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/e'))()
    end)
funtab:CreateButton("Reset Emote Selector",function()emoteSelector:Set({})end)
tab:CreateLabel("Press the PERIOD key . to use emotes")
MISCTAB:CreateSection("That's it sir!")
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
