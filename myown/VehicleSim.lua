window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Vehicle Simulator")
tab=window:CreateTab("Main")
othertab=window:CreateTab("Fun")
MISCTAB=window:CreateTab("Misc")

function erm(t)
    return t[1]
end

tab:CreateSection("Speed | by me & term")
if not getgenv().pluh then getgenv().pluh = 0 end
tab:CreateToggle("Toggle Car Speed",false,function(state)
    for _,v in pairs(game.Workspace.Vehicles:GetChildren()) do
        if v:FindFirstChild("owner") and v.owner.Value==game.Players.LocalPlayer.Name then
           getgenv().mycar=v
        end
    end
   getgenv().nicepeople=state
    while getgenv().nicepeople do
        task.wait()
        local movedir = game.Players.LocalPlayer.Character.Humanoid.MoveDirection
        mathlock = getgenv().pluh * movedir
       getgenv().mycar.PrimaryPart.Velocity = Vector3.new(getgenv().mycar.PrimaryPart.Velocity.X,getgenv().mycar.PrimaryPart.Velocity.Y,getgenv().mycar.PrimaryPart.Velocity.Z)
       getgenv().mycar.PrimaryPart.Velocity = getgenv().mycar.PrimaryPart.Velocity + mathlock
       getgenv().mycar.PrimaryPart.Velocity = Vector3.new(getgenv().mycar.PrimaryPart.Velocity.X,getgenv().mycar.PrimaryPart.Velocity.Y,getgenv().mycar.PrimaryPart.Velocity.Z)
       getgenv().mycar.PrimaryPart.Velocity = Vector3.new(getgenv().mycar.PrimaryPart.Velocity.X,getgenv().mycar.PrimaryPart.Velocity.Y ,getgenv().mycar.PrimaryPart.Velocity.Z)
        wait(0.1)
    end    
end)
tab:CreateSlider("Car Speed",{0, 250},1,"",(getgenv().pluh*3),function(v) getgenv().pluh = (v/3) end)

othertab:CreateSection("Skibidi?")
fling=loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/paste/fling.lua'))()
othertab:CreateButton("Fling all",function()fling("All")end)
othertab:CreateInput("Fling Player","Name",true,function(player)fling(player)end)
othertab:CreateDropdown(
    "Animation pack",
    {"Adidas","Vampire", "Hero", "ZombieClassic", "Cowboy", "Patrol", "Bold", "ZombieFE", "Princess", "Popstar", "Sneaky", "Toy", "Knight", "Confident", "Ghost", "Elder", "Levitation", "Mage", "Astronaut", "Ninja", "Werewolf", "Cartoon", "Pirate"},
    "Select",
    false,
    function(opt)
       getgenv().animchanger=erm(opt)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/a'))()
end)
emoteSelector=othertab:CreateDropdown(
    "Emotes",
    {"Robot","Fancy Feet","Old Town Road Dance","Greatest","Side to Side","Hello","Jumping Cheer","Rodeo Dance","Drum Solo","Point2","Shy","Fishing","strut","Power Blast","Agree","Stadium","Top Rock","sliving","Dizzy","Monkey","High Wave","Louder","Get Out","Heart Skip","Twirl","Tree","Cha-Cha","Salute","Curtsy","Panini Dance","Baby Dance","Sneaky","Line Dance","Bodybuilder","Applaud","Jacks","Shrug","Quiet Waves","Zombie","Godlike","twirl","faceframe","feels","Hype Dance","Sad","Cha Cha","It Ain't My Fault","Hips Poppin'","Take Me Under","Superhero Reveal","Country Line Dance","Samba","Heisman Pose","Happy","Air Guitar","Around Town","Disagree","Shuffle","Rock Star","Jumping Wave","Idol","Floss Dance","Break Dance","Dolphin Dance","HOLIDAY Dance","Air Dance","Beckon","Swish","Rock On","Bored","Fashionable","Cower","Tilt","Tantrum","Dorky Dance","Confused","T","Drum Master","Sleep","Y","Keeping Time","Block Partier","Hero Landing","Fast Hands","Celebrate","Rock Guitar","Haha"},
    {},
    true,
    function(opt)
       getgenv().emotes=opt
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/e'))()
end)
othertab:CreateButton("Reset Emote Selector",function()emoteSelector:Set({})end)
othertab:CreateLabel("Press the PERIOD key . to use emotes")
MISCTAB:CreateSlider("Walk Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
-- wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
-- MISCTAB:CreateSlider("CFrame Speed",{0, 150},1,"boost",0,function(v) wsBoost(v/25) end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat & term")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)