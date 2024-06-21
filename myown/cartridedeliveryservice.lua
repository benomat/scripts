local Lib = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local window = Lib:CreateWindow({
   Name = "Card Ride Delivery Service [>::<] ^(>.1)^",
   LoadingTitle = "Card Ride Delivery Service",
   LoadingSubtitle = "by benomat"})
local tab = window:CreateTab("Main")
local TPTab = window:CreateTab("Teleports")
local MiscTab = window:CreateTab("Misc")

best_dropoff=CFrame.new(656.182739, 249.643875, 477.509216, 0.701624751, -0.00166311371, -0.712544799, -7.06547289e-05, 0.999997079, -0.00240361365, 0.712546706, 0.0017367797, 0.701622605)
Players = cloneref(game:GetService("Players"))
IYMouse = Players.LocalPlayer:GetMouse()
FLYING = false
QEfly = true
vehicleflyspeed = 1
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end
local function getPackages(pressE)
    counta=0
    -- Get the local player
    local player = game.Players.LocalPlayer
    local playerPosition = player.Character.HumanoidRootPart.Position

    -- Find all packages in workspace.PackageGivers
    local packages = workspace.PackageGivers:GetChildren()

    -- Iterate through each package
    for _, package in pairs(packages) do
        old_pos=package.Position
        package.Position = playerPosition
        counta+=1
        if pressE and counta>=4 then keypress(Enum.KeyCode.E) end
        wait()
        package.Position=old_pos
    end
end
local function gotosell()
    player.Character.HumanoidRootPart.CFrame = 69
end
tab:CreateToggle({
    Name="VFLY",
    Callback=function(v)
        if v then sFLY(v)
        else FLYING=v
        end end})
tab:CreateSlider({
   Name = "Fly Speed",
   Range = {1, 25},
   Increment = 1,
   Suffix = "",
   CurrentValue = vehicleflyspeed, 
   Callback = function(v) vehicleflyspeed = v end})
tab:CreateButton({
    Name = "Collect all Packages",
    Callback = function()
        getPackages()
    end
})
local function tp(loc)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
local function tpn(...)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(...)
end
tab:CreateToggle({
    Name = "Package farmmm $$$",
    Callback = function(v)
    _G.PACKAGEFARM=v
    if v then 
    tp(best_dropoff)
    end
    while _G.PACKAGEFARM do 
        getPackages(true)
        wait(4)
    end
    end
})
tab:CreateParagraph({Title="Information on Package Farm", Content="You gotta be in a cart to use.\nPackage farm breaks after a couple of uses, you gotta rejoin"})


TPTab:CreateButton({
    Name = "Spawn",
    Callback = function()
        tpn(34.463890075683594, 2.999873399734497, 38.47382736206055)
    end
})
TPTab:CreateButton({
    Name = "$13500 Dropoff",
    Callback = function()
        tp(best_dropoff)
    end
})
TPTab:CreateButton({
    Name = "Finish",
    Callback = function()
        tpn(990.26806640625, 10.590018272399902, 128.8693084716797)
    end
})
TPTab:CreateButton({
    Name = "RESET PROGRESS",
    Callback = function()
        tpn(-248.008, 140.579, 95.0521)
    end
})
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
TPTab:CreateDropdown({
    Name="Players",
    Options=getPlayerNames(),
    MultipleOptions=false,
    CurrentOption = getPlayerNames()[1],
    Callback=function(opt)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(erm(opt)).Character.HumanoidRootPart.CFrame
    end
})
MiscTab:CreateSlider({
   Name = "Speed",
   Range = {16, 500},
   Increment = 4,
   Suffix = "studs per second",
   CurrentValue = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 
   Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
MiscTab:CreateButton({    Name = " Rejoin Server  ", Callback=function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end})
MiscTab:CreateLabel("credits: @benomat")
MiscTab:CreateButton({Name="Copy discord invite",Callback=function()setclipboard("discord.gg/gUMYGXqPPw")end})
MiscTab:CreateLabel("JOIN ^^^^^^^^ CLICK HERE DAWGGG ^^")