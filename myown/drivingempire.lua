-- FARM BY Marco8642 (original script: https://raw.githubusercontent.com/Marco8642/science/main/drivingempire)
-- SPEED BY TERM
-- rest is all me


game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Driving empire")
tab=window:CreateTab("Main")
farmtab=window:CreateTab("Farm")
MISCTAB=window:CreateTab("Misc")

function erm(t)
    return t[1]
end

tab:CreateSection("Speed | by term")
if not getgenv().pluh then getgenv().pluh = 0 end
tab:CreateToggle("Toggle Car Speed",false,function(state)
   getgenv().nicepeople=state
    while getgenv().nicepeople do
        task.wait()
        local car = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
        local movedir = game.Players.LocalPlayer.Character.Humanoid.MoveDirection
        mathlock = getgenv().pluh * movedir
        car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X, car.PrimaryPart.Velocity.Y, car.PrimaryPart.Velocity.Z)
        car.PrimaryPart.Velocity = car.PrimaryPart.Velocity + mathlock
        car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X, car.PrimaryPart.Velocity.Y, car.PrimaryPart.Velocity.Z)
        car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,car.PrimaryPart.Velocity.Y , car.PrimaryPart.Velocity.Z)
        wait(0.1)
    end    
end)
tab:CreateSlider("Car Speed",{0, 150},1,"",(getgenv().pluh*10),function(v) getgenv().pluh = (v/10) end)
tab:CreateLabel("can break your car if you put it too high")
tab:CreateSection("useless stuff!")
tab:CreateDropdown(
    "Animation pack",
    {"Adidas","Vampire", "Hero", "ZombieClassic", "Cowboy", "Patrol", "Bold", "ZombieFE", "Princess", "Popstar", "Sneaky", "Toy", "Knight", "Confident", "Ghost", "Elder", "Levitation", "Mage", "Astronaut", "Ninja", "Werewolf", "Cartoon", "Pirate"},
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
tab:CreateLabel("Press the PERIOD key . to use emotes")
MISCTAB:CreateSlider("Walk Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
-- wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
-- MISCTAB:CreateSlider("CFrame Speed",{0, 150},1,"boost",0,function(v) wsBoost(v/25) end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by term & benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
farmtab:CreateSection("FARM $$$")
if not getfenv().speed then getfenv().speed=10 end
farmtab:CreateSlider("Vehicle Velocity Speed", {0, 150},1,"",getfenv().speed,function(v)
    getfenv().speed = v
end)
farmtab:AddToggle("Auto Farm[Velocity]", false,function(state)
	 getgenv().testers = state
--experimental auto farm
spawn(function()
	local pre = getfenv().location
	local timer = 0
	while getgenv().testers do
		task.wait()
	if getfenv().location == pre and timer <= 10 then
     timer =timer + 1
	 print(timer)
	 wait(1)
	elseif getfenv().location ~= pre then
		pre = getfenv().location
		warn("vehicle is not stuck vehicle reset timer reset")
		timer = 0
		wait(1)
	elseif timer >= 10 then
		warn("vehicle reset")
getfenv().reset = true
local chr = game.Players.LocalPlayer.Character
local car = chr.Humanoid.SeatPart.Parent
car.PrimaryPart.Velocity = Vector3.new(0,0,0)
car:PivotTo(CFrame.new(getfenv().location))
timer = 0
wait(1)
	end
end
end)
while getgenv().testers do
	task.wait()
	getfenv().reset = false
local chr = game.Players.LocalPlayer.Character
local car = chr.Humanoid.SeatPart.Parent
		car.PrimaryPart = car.Weight
car:PivotTo(CFrame.new(Vector3.new(-100.07780456542969, 15.585329055786133, -1618.3812255859375),Vector3.new(-32.031883239746094, 24.379409790039062, -1091.4705810546875)))
local mathlock = getfenv().speed or 500
getfenv().location = Vector3.new(11.930032730102539, 24.91741180419922, -732.8578491210938)
if getgenv().testers == true and getfenv().reset == false then
	repeat task.wait()
		mathlock = getfenv().speed or 500
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
	until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
	end
getfenv().location = Vector3.new(79.72480773925781, 34.419010162353516, -59.68326950073242)

if getgenv().testers == true and getfenv().reset == false then
repeat task.wait()
	mathlock = getfenv().speed or 500
	car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
end
getfenv().location = Vector3.new(80.43889617919922, 34.45082092285156, 474.7792663574219)
if getgenv().testers == true and getfenv().reset == false then
	repeat task.wait()
		mathlock = getfenv().speed or 500
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
	until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
	end
getfenv().location = Vector3.new(53.504276275634766, 34.399757385253906, 1525.7982177734375)
if getgenv().testers == true and getfenv().reset == false then
	repeat task.wait()
		mathlock = getfenv().speed or 500
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
	until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
	end
getfenv().location = Vector3.new(-112.53301239013672, 28.197858810424805, 2313.957763671875)
if getgenv().testers == true and getfenv().reset == false then
	repeat task.wait()
		mathlock = getfenv().speed or 500
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
	until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
	end
getfenv().location = Vector3.new(-262.3653259277344, 13.525763511657715, 3027.66650390625)
if getgenv().testers == true and getfenv().reset == false then
	repeat task.wait()
		mathlock = getfenv().speed or 500
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
	until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
	end
getfenv().location = Vector3.new(-452.8047790527344, 13.539205551147461, 3937.51953125)
if getgenv().testers == true and getfenv().reset == false then
	repeat task.wait()
		mathlock = getfenv().speed or 500
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
	until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
	end
getfenv().location = Vector3.new(-671.54150390625, 13.537410736083984, 4993.31591796875)
if getgenv().testers == true and getfenv().reset == false then
	repeat task.wait()
		mathlock = getfenv().speed or 500
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
		car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
		car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-10,car.PrimaryPart.Velocity.Z)
	until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
	end
end
end)
farmtab:AddToggle("Auto Farm[Normal]", false, function(state)
	 getgenv().testers2 = state
--experimental auto farm
while getgenv().testers2 do
	task.wait()
local chr = game.Players.LocalPlayer.Character
local car = chr.Humanoid.SeatPart.Parent
		car.PrimaryPart = car.Weight
car:PivotTo(CFrame.new(Vector3.new(-100.07780456542969, 15.585329055786133, -1618.3812255859375),Vector3.new(-32.031883239746094, 24.379409790039062, -1091.4705810546875)))
local mathlock = 350

local location = Vector3.new(-32.031883239746094, 24.379409790039062, -1091.4705810546875)

local location = Vector3.new(11.930032730102539, 24.91741180419922, -732.8578491210938)
repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50
local location = Vector3.new(79.72480773925781, 34.419010162353516, -59.68326950073242)

repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50

local location = Vector3.new(80.43889617919922, 34.45082092285156, 474.7792663574219)
repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50

local location = Vector3.new(53.504276275634766, 34.399757385253906, 1525.7982177734375)
repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50

local location = Vector3.new(-112.53301239013672, 28.197858810424805, 2313.957763671875)
repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50

local location = Vector3.new(-262.3653259277344, 13.525763511657715, 3027.66650390625)
repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50

local location = Vector3.new(-452.8047790527344, 13.539205551147461, 3937.51953125)
repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50

local location = Vector3.new(-671.54150390625, 13.537410736083984, 4993.31591796875)
repeat task.wait()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
	car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location) < 50
end
end)
farmtab:AddToggle("Auto Farm[Helicopter]", false,function(state)
	getfenv().helifarm = state
	if getfenv().helifarm then
		local chr = game.Players.LocalPlayer.Character
		local car = chr.Humanoid.SeatPart.Parent
			car.PrimaryPart = car.Weight
			car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.UpVector*1000
     wait(3)
	end
	while getfenv().helifarm do
	wait()
local chr = game.Players.LocalPlayer.Character
local car = chr.Humanoid.SeatPart.Parent
	car.PrimaryPart = car.Weight
local mathlock = getfenv().speed or 500
getfenv().location = Vector3.new(-13859.18359375, 1181.971435546875, -11547.607421875)
if getfenv().helifarm then
repeat task.wait()
mathlock = getfenv().speed or 500
car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
end
local mathlock = getfenv().speed or 500
getfenv().location = Vector3.new(-14023.6533203125, 1682.490966796875, 12927.0751953125)
if getfenv().helifarm then
repeat task.wait()
mathlock = getfenv().speed or 500
car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
end
local mathlock = getfenv().speed or 500
getfenv().location = Vector3.new(23936.044921875, 1675.274658203125, 4146.3720703125)
if getfenv().helifarm then
repeat task.wait()
mathlock = getfenv().speed or 500
car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
end
local mathlock = getfenv().speed or 500
getfenv().location = Vector3.new(23936.044921875, 1675.274658203125, 4146.3720703125)
if getfenv().helifarm then
repeat task.wait()
mathlock = getfenv().speed or 500
car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getgenv().testers == false or getfenv().reset == true
end
end
end)
farmtab:CreateLabel("it completes the iteration before stopping when you disable")
farmtab:CreateSection("Misc")
farmtab:CreateButton("Remove Speed traps", function()
	workspace.Speedtraps:Destroy()
end)
farmtab:CreateSection("Credits")
farmtab:CreateLabel("Made by Marco8642")