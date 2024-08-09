lib=loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))()
window = lib:CreateWindow("Mic Up")
tab=window:CreateTab("Main")
playertab=window:CreateTab("Players")
Stalltab=window:CreateTab("Stalls")
TPTab=window:CreateTab("Teleports")
MISCTAB=window:CreateTab("Misc")

spawn(function()sw1ndlernotify = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/paste/sw1ndlernotify.lua'))()end)
local LocalPlayer = game.Players.LocalPlayer
function erm(t)
    return t[1]
end

tab:CreateSection("skibidi")
spawn(function()wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()end)
tab:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
tab:CreateSlider("CFrame Speed",{0, 100},1,"boost",0,function(v) wsBoost(v/30) end)
tab:CreateButton("Turn invisible (press E)",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/paste/InvisibilityToggle.lua'))()
end)
tab:CreateButton("Get Hand tool (pet people or wtv)",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/handtool.lua'))()end)
solidfloortoggle=tab:CreateToggle("Solid Private Room Floor",false,function(state)
    for _,v in pairs(game.Workspace:GetChildren()) do
        if v:FindFirstChild("houseInteriorCoffeeTable") then
            for _,idkwhattocallthis in pairs(v:GetChildren()) do
                if idkwhattocallthis:FindFirstChild("Texture") then
                    idkwhattocallthis.CanCollide=state
                end
            end
        end
    end
end)
tab:CreateToggle("Antivoid",false,function(state)
    if state then
        local part = Instance.new("Part")
        part.Position = Vector3.new(37.51473617553711, -49.5, 50.537479400634766)
        part.Size = Vector3.new(10000,99,10000)
        part.Anchored = true
        part.Name = "Platformsies"
        part.CollisionGroupId = 5
        part.Transparency=1
        part.Parent = workspace
    else workspace:FindFirstChild("Platformsies"):Destroy() end
end)
tab:CreateToggle("Break TicTacToe",false,function(state)
    getgenv().breakTTT=state
    while getgenv().breakTTT do
        for _, playingtable in pairs(workspace:GetChildren()) do
            if playingtable.Name == "Tic Tac Toe" then
                for _, field in pairs(playingtable:GetChildren()) do
                    if field.Name:sub(1, 5) == "Detec" then
                        fireclickdetector(field)
                        task.wait()
                    end
                end
            end
        end
        wait(.5)
    end
end)
tab:CreateButton("Load chat bypasser",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/paste/chatbypass.lua'))()
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
local function tpn(...)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(...)
end
function scary()
    solidfloortoggle:Set(true)
    for _,v in pairs(game.Workspace:GetChildren()) do
        if v:FindFirstChild("houseInteriorCoffeeTable") then
            for _,idkwhattocallthis in pairs(v:GetChildren()) do
                if idkwhattocallthis:FindFirstChild("Texture") then
                    idkwhattocallthis.CanCollide=true
                end
            end
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
TPTab:CreateSection("Other Teleports")
TPTab:CreateButton("Top of Tower",function()tpn(59.98295974731445, 313.0125732421875, 225.32273864746094)end)
TPTab:CreateButton("Slide",function()tpn(16.68634796142578, 225.0092315673828, 65.47396850585938)end)
TPTab:CreateButton("Glass Platform",function()tpn(172.06375122070312, 61.18655014038086, -114.35980224609375)end)
TPTab:CreateButton("Items / Donut Shop",function()tpn(-55.430057525634766, 4.6999969482421875, -62.683597564697266)end)

 getgenv().EditStalltxt="Script made by benomat"
 getgenv().EditStallimg="Empty"
Stalltab:CreateSection("Your own stall")
Stalltab:CreateInput("Set Text","hi",false,function(txt)
    getgenv().EditStalltxt=txt
end)
Stalltab:CreateInput("Set image (have this back!)","rblx image id",false,function(txt)
    if txt=="" then getgenv().EditStallimg="Empty"
    else getgenv().EditStallimg=txt
    end
end)
Stalltab:CreateButton("confirm edit",function()
    for _,v in pairs(Workspace.Stalls:GetChildren()) do
        if tostring(v.Player.Value)==game.Players.LocalPlayer.Name then
            v.Edit:FireServer(getgenv().EditStalltxt,getgenv().EditStallimg)
        end
    end
end)



getgenv().Typewrite="hii;^(>.1)^;script by benomat"
-- Stalltab:CreateSection("Typewrite text")
Stalltab:CreateInput("Typewrite text Seperate with ;","hi;byee",false,function(txt)
    getgenv().Typewrite=txt
end)
Stalltab:CreateToggle("Typewrite",false,function(state)
    getgenv().TypewriteToggle=state
    if state then
        local messages = {}
        for message in string.gmatch(getgenv().Typewrite, "([^;]+)") do
            table.insert(messages, message)
        end
    end
    while getgenv().TypewriteToggle do
        for _,v in pairs(Workspace.Stalls:GetChildren()) do
            if tostring(v.Player.Value)==game.Players.LocalPlayer.Name then
                for message in string.gmatch(getgenv().Typewrite, "([^;]+)") do
                    for i = 1, #message do
                        v.Edit:FireServer(message:sub(1, i),getgenv().EditStallimg)
                        wait(0.25) -- Adjust the delay to control typing speed
                    end
                    wait(.5)
                end
            end
        end
        task.wait()
    end
end)
spawn(function()
if not fireproximityprompt or identifyexecutor()=="Solara" then
    getgenv().fireproximityprompt=function(pp)
        local oldenabled=pp.Enabled
        local oldhold=pp.HoldDuration
        local oldrlos=pp.RequiresLineOfSight
        local oldMaxActivationDistance=pp.MaxActivationDistance
        local oldCameraCFrame = workspace.CurrentCamera.CFrame
        pp.MaxActivationDistance=math.huge
        pp.Enabled=true
        pp.HoldDuration=0
        pp.RequiresLineOfSight=false
        pcall(function()workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, pp.Parent.Position)end)
        wait()
        pp:InputHoldBegin()
        task.wait()
        pp:InputHoldEnd()
        task.wait()
        pp.Enabled=pp.Enabled
        pp.HoldDuration=pp.HoldDuration
        pp.RequiresLineOfSight=pp.RequiresLineOfSight
        pp.MaxActivationDistance=oldMaxActivationDistance
        workspace.CurrentCamera.CFrame=oldCameraCFrame
    end
end
end)
Stalltab:CreateSection("Claming and stuff ") --[you can scroll btw]
Stalltab:CreateToggle("Steal/Clear all Stalls",false,function(state)
    if pcall(function() fireproximityprompt(Workspace.Stalls.Stall1.ProxPart.ProximityPrompt) end) then
        for _,v in pairs(Workspace.Stalls:GetChildren()) do
            if tostring(v.Player.Value)==game.Players.LocalPlayer.Name then
                v.CloseStall:FireServer()
            end
        end
        wait(.05)
        getgenv().ThisIsTooOp=state
        while getgenv().ThisIsTooOp do
            local oldpos=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            for _,v in pairs(Workspace.Stalls:GetChildren()) do
                if v.Player.Value then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.ProxPart.Position).magnitude>=30 then distancethingyyes=true game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.ProxPart.CFrame end
                    wait(.23)
                    fireproximityprompt(v.ProxPart.ProximityPrompt)
                    wait(.23)
                    game.Players.LocalPlayer.PlayerGui.StallLocal.StallFrame.Visible=false
                    if tostring(v.Player.Value)==game.Players.LocalPlayer.Name then
                        v.CloseStall:FireServer()
                    end
                    wait(.23)
                end
            end
            if distancethingyyes then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos end
            distancethingyyes=false
            task.wait()
        end
    elseif state then
        sw1ndlernotify:CreateDefaultNotif({
            TweenSpeed = 1,
            Title = "Error",
            Text = "Your Executor doesnt support this",
            Duration = 5
           })
    end
end)
stallorder={"3","2","1","5","4"}
Stalltab:CreateInput("Steal stall by number (1-5)","number",true,function(input)
    local targetstall=Workspace.Stalls["Stall"..stallorder[tonumber(input)]]
    for _,v in pairs(Workspace.Stalls:GetChildren()) do
        if tostring(v.Player.Value)==game.Players.LocalPlayer.Name then
            v.CloseStall:FireServer()
        end
    end
    wait(.05)
    local oldpos=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - targetstall.ProxPart.Position).magnitude>=30 then distancethingyyes=true game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=targetstall.ProxPart.CFrame end
    wait(.25)
    fireproximityprompt(targetstall.ProxPart.ProximityPrompt)
    wait(.23)
    game.Players.LocalPlayer.PlayerGui.StallLocal.StallFrame.Visible=false
    if distancethingyyes then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos end
end)
Stalltab:CreateSection("useless")
Stalltab:CreateButton("Steal stalls (you can walk up to a stall and get it)",function()
    for _,stall in pairs(Workspace.Stalls:GetChildren()) do
        stall.ProxPart.ProximityPrompt.Enabled=true
    end
end)
Stalltab:CreateToggle("Insant stall prompts",false,function(state)
    if state then ugh=0 else ugh=.5 end
    for _,stall in pairs(Workspace.Stalls:GetChildren()) do
        stall.ProxPart.ProximityPrompt.HoldDuration=ugh
    end
end)

MISCTAB:CreateDropdown(
    "Animation pack",
    {"Adidas","Vampire", "Hero", "ZombieClassic", "Cowboy", "Patrol", "Bold", "ZombieFE", "Princess", "Popstar", "Sneaky", "Toy", "Knight", "Confident", "Ghost", "Elder", "Levitation", "Mage", "Astronaut", "Ninja", "Werewolf", "Cartoon", "Pirate"},
    "Select",
    false,
    function(opt)
        spawn(function()
        getgenv().animchanger=erm(opt)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/a'))()
        end)
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
