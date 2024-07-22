lib=loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))()
window = lib:CreateWindow("Therapy 🔊")
tab=window:CreateTab("Main")
playertab=window:CreateTab("Players")
MISCTAB=window:CreateTab("Misc")

tab:CreateSection("skibidi")
-- spawn(function()wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()end)
tab:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
-- tab:CreateSlider("CFrame Speed",{0, 100},1,"boost",0,function(v) wsBoost(v/30) end)
tab:CreateButton("Turn invisible (press E)",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/paste/InvisibilityToggle.lua'))()
end)
tab:CreateButton("Get all items [not mine]",function()
    local oldpos=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            v.HoldDuration = 0
            v.RequiresLineOfSight = false
        end
    end    
    loadstring(game:HttpGet("https://gist.githubusercontent.com/Dustin21335/33e8d94f98ff3ed0b5f5cb59a8c3e248/raw/fdfe0c3edebd46d1523cf76aed0f74b0bb33f012/Therapy%2520script"))()
    wait(.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos
end)
tab:CreateButton("Get Hand tool (pet people or wtv)",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/handtool.lua'))()end)
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

playertab:CreateInput("Select Player","Name",true,function(name)
    getgenv().SelectedPlayer = GetPlayer(name)
end)
playertab:CreateToggle("View",false,function(state)
    if state then Workspace.Camera.CameraSubject = getgenv().SelectedPlayer.Character
else Workspace.Camera.CameraSubject = Player.Character end
end)
playertab:CreateToggle("Listen to ",false,function(state)
    if state then Services.SoundService:SetListener(Enum.ListenerType.ObjectPosition,getgenv().SelectedPlayer.Character.HumanoidRootPart)
    else Services.SoundService:SetListener(Enum.ListenerType.Camera)end
end)
playertab:CreateButton("TP to selected",function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().SelectedPlayer.Character.HumanoidRootPart.CFrame end)
playertab:CreateToggle("Loop TP to selected",false,function(state)
    getgenv().LoopTP=state
    while getgenv().LoopTP do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().SelectedPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=getgenv().SelectedPlayer.Character.HumanoidRootPart.Velocity
        task.wait()
    end
end)





emoteSelector=MISCTAB:CreateDropdown(
    "Emotes",
    {"Robot","Fancy Feet","Old Town Road Dance","Greatest","Side to Side","Hello","Jumping Cheer","Rodeo Dance","Drum Solo","Point2","Shy","Fishing","strut","Power Blast","Agree","Stadium","Top Rock","sliving","Dizzy","Monkey","High Wave","Louder","Get Out","Heart Skip","Twirl","Tree","Cha-Cha","Salute","Curtsy","Panini Dance","Baby Dance","Sneaky","Line Dance","Bodybuilder","Applaud","Jacks","Shrug","Quiet Waves","Zombie","Godlike","twirl","faceframe","feels","Hype Dance","Sad","Cha Cha","It Ain't My Fault","Hips Poppin'","Take Me Under","Superhero Reveal","Country Line Dance","Samba","Heisman Pose","Happy","Air Guitar","Around Town","Disagree","Shuffle","Rock Star","Jumping Wave","Idol","Floss Dance","Break Dance","Dolphin Dance","HOLIDAY Dance","Air Dance","Beckon","Swish","Rock On","Bored","Fashionable","Cower","Tilt","Tantrum","Dorky Dance","Confused","T","Drum Master","Sleep","Y","Keeping Time","Block Partier","Hero Landing","Fast Hands","Celebrate","Rock Guitar","Haha"},
    {},
    true,
    function(opt)
       getgenv().emotes=opt
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/e'))()
    end)
MISCTAB:CreateButton("Reset Emote Selector",function()emoteSelector:Set({})end)
MISCTAB:CreateLabel("Press the PERIOD key . to use emotes")
MISCTAB:CreateSection("That's it sir!")
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
