window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("baseplate")
tab=window:CreateTab("Main")
TPTab=window:CreateTab("Teleports")
MISCTAB=window:CreateTab("Misc")

local LocalPlayer = game.Players.LocalPlayer
function erm(t)
    return t[1]
end
function erms(furry,sexporn)
    return furry[sexporn]
end

tab:CreateSection("lets do stuff")
tab:CreateDropdown(
    "Animation pack",
    {"Vampire", "Hero", "ZombieClassic", "Cowboy", "Patrol", "Bold", "ZombieFE", "Princess", "Popstar", "Sneaky", "Toy", "Knight", "Confident", "Ghost", "Elder", "Levitation", "Mage", "Astronaut", "Ninja", "Werewolf", "Cartoon", "Pirate"},
    "Select",
    false,
    function(opt)
        getgenv().animchanger=erm(opt)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/a'))()
end)
emoteSelector=tab:CreateDropdown(
    "Emotes",
    {"Robot","Fancy Feet","Old Town Road Dance","Greatest","Side to Side","Hello","Jumping Cheer","Rodeo Dance","Drum Solo","Point2","Shy","Fishing","strut","Power Blast","Agree","Stadium","Top Rock","sliving","Dizzy","Monkey","High Wave","Louder","Get Out","Heart Skip","Twirl","Tree","Cha-Cha","Salute","Curtsy","Panini Dance","Baby Dance","Sneaky","Line Dance","Bodybuilder","Applaud","Jacks","Shrug","Quiet Waves","Zombie","Godlike","twirl","faceframe","feels","Hype Dance","Sad","Cha Cha","It Ain't My Fault","Hips Poppin'","Take Me Under","Superhero Reveal","Country Line Dance","Samba","Heisman Pose","Happy","Air Guitar","Around Town","Disagree","Shuffle","Rock Star","Jumping Wave","Idol","Floss Dance","Break Dance","Dolphin Dance","HOLIDAY Dance","Air Dance","Beckon","Swish","Rock On","Bored","Fashionable","Cower","Tilt","Tantrum","Dorky Dance","Confused","T","Drum Master","Sleep","Y","Keeping Time","Block Partier","Hero Landing","Fast Hands","Celebrate","Rock Guitar","Haha"},
    {},
    true,
    function(opt)
        getgenv().emotes=opt
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/e'))()
end)
tab:CreateButton("Reset Emote Selector",function()emoteSelector:Set({})end)
tab:CreateSection("uhhh")
tab:CreateButton("Load Open Aimbot",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua'))()end)
function getPlayerNames()
    playerNames = {}
    for _,i in pairs(game.Players:GetPlayers()) do
        table.insert(playerNames, i.Name)
    end 
    return playerNames
end
_G.SelectedPlayer=game.Players.LocalPlayer.Name
playerselector=TPTab:CreateDropdown(
    "Players",
    getPlayerNames(),
    _G.SelectedPlayer,
    false,
    function(opt)
    _G.SelectedPlayer=erm(opt)
    end
)
TPTab:CreateButton("TP to selected",function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(_G.SelectedPlayer).Character.HumanoidRootPart.CFrame end)
TPTab:CreateToggle("Loop TP to selected",false,function(state)
    _G.LoopTP=state
    while _G.LoopTP do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(_G.SelectedPlayer).Character.HumanoidRootPart.CFrame
        wait()
    end
end)
local function tp(loc)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
local function tpn(...)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(...)
end
wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
MISCTAB:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateSlider("undetected speed boost",{0, 50},1,"boost",0,function(v) wsBoost(v/25) end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() _G.wsbran=false end)
