window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Mowing Sim")
tab=window:CreateTab("Main")
MISCTAB=window:CreateTab("Misc")

tab:CreateSection("Mowing")
tab:CreateLabel("After enabling place your mouse on the star you want to receive")
tab:CreateToggle("Mow Backyard",false,function(state)
    getgenv().Backyard=state
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=workspace.Map1.TransitionFloor.CFrame+Vector3.new(0,3.5, 2)
    wait()
    while getgenv().Backyard do
    for i=-33,28,5 do
    for v=5,135,8 do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=workspace.Map1.TransitionFloor.CFrame+Vector3.new(i,3.5, v)
    wait()
    end
    end
    mousemoverel(1,1)
    mousemoverel(-1,-1)
    mouse1click()
    wait()
    mouse1click()end
end)
tab:CreateSection("Speed")
tab:CreateToggle("Autoclick Sports",false,function(state)
    getgenv().CLicki=state
    while getgenv().CLicki do
        mousemoverel(1,1)
        mousemoverel(-1,-1)
        mouse1click()
        wait()
    end
end)

MISCTAB:CreateDropdown(
    "Animation pack",
    {"Vampire", "Hero", "ZombieClassic", "Cowboy", "Patrol", "Bold", "ZombieFE", "Princess", "Popstar", "Sneaky", "Toy", "Knight", "Confident", "Ghost", "Elder", "Levitation", "Mage", "Astronaut", "Ninja", "Werewolf", "Cartoon", "Pirate"},
    "Select",
    false,
    function(opt)
       getgenv().animchanger=erm(opt)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/a'))()
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
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() getgenv().wsbran=false end)
