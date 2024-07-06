local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Break in 1 /// [>::<] ^(>.1)^",
	LoadingTitle = "Break in 1",
	LoadingSubtitle = "by zinx",
})

local Tab = Window:CreateTab("Main")

local items = {
    {name = "Get Cola", tool = "BloxyCola"},
    {name = "Get Apple", tool = "Apple"},
    {name = "Get Pizza", tool = "Pizza3"},
    {name = "Get Cookie", tool = "Cookie"},
    {name = "Get Medkit", tool = "MedKit"},
    {name = "Get Cure", tool = "Cure"},
    {name = "Get Bat(Weapon)", tool = "Bat"},
    {name = "Get Teddy", tool = "TeddyBloxpin"},
    {name = "Get Sword", tool = "LinkedSword"},
    {name = "Get Lollipop", tool = "Lollipop"},
    {name = "Get Key", tool = "Key"},
    {name = "Get Planks", tool = "Plank"}
}

for _, item in ipairs(items) do
    Tab:CreateButton({
        Name = item.name,
        Callback = function()
            game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer(item.tool)
        end,
    })
end

Tab:CreateButton({
    Name = "Get Hammer",
    Callback = function()
        local A_1 = true
        local A_2 = "Hammer"
        local Event = game:GetService("ReplicatedStorage").RemoteEvents.BasementWeapon
        Event:FireServer(A_1, A_2)
    end,
})

local RoleTab = Window:CreateTab("Role") -- Title, Image
local roleItems = {
    {name = "Police", tool = "Gun"},
    {name = "Swat", tool = "SwatGun"}
}

for _, role in ipairs(roleItems) do
    RoleTab:CreateButton({
        Name = role.name,
        Callback = function()
            local A_1 = role.tool
            local A_2 = true
            local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
            Event:FireServer(A_1, A_2)
        end,
    })
end
local TeleportTab = Window:CreateTab("Teleport") -- Title, Image
local teleportLocations = {
    {name = "Basement", position = Vector3.new(71, -15, -163)},
    {name = "House", position = Vector3.new(-36, 3, -200)},
    {name = "Hiding Spot", position = Vector3.new(-42.86656951904297, 6.433286666870117, -222.01171875)},
    {name = "Attic", position = Vector3.new(-16, 35, -220)},
    {name = "Store", position = Vector3.new(-422, 3, -121)},
    {name = "Sewer", position = Vector3.new(129, 3, -125)},
    {name = "Boss Room", position = Vector3.new(-39, -287, -1480)}
}

for _, location in ipairs(teleportLocations) do
    TeleportTab:CreateButton({
        Name = location.name,
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location.position)
        end,
    })
end
function erm(t)
    return t[1]
end
function getPlayerNames()
    playerNames = {}
    for _,i in pairs(game.Players:GetPlayers()) do
        table.insert(playerNames, i.Name)
    end 
    return playerNames
end
 getgenv().SelectedPlayer=game.Players.LocalPlayer.Name
playerselector=TeleportTab:CreateDropdown({
    Name="Players",
    Options = getPlayerNames(),
    CurrentOption= getgenv().SelectedPlayer,
    MultipleOptions=false,
    Callback=function(opt)
    getgenv().SelectedPlayer=erm(opt)
    end
})
TeleportTab:CreateButton({Name="TP to selected",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(getgenv().SelectedPlayer).Character.HumanoidRootPart.CFrame end})
TeleportTab:CreateToggle({Name="Loop TP to selected",CurrentValue =false,Callback=function(state)
    getgenv().LoopTP=state
    while getgenv().LoopTP do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(getgenv().SelectedPlayer).Character.HumanoidRootPart.CFrame
        wait()
    end
end})
local MiscTab = Window:CreateTab("Misc") -- Title, Image

MiscTab:CreateButton({
    Name = "Kill Enemies",
    Callback = function()
        for _, v in pairs(game.Workspace.BadGuys:GetChildren()) do
            for i = 1, 50 do
                game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 10)
                game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 996)
                game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 9)
                game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 8)
                game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 996)
            end
        end
    end,
})

MiscTab:CreateButton({
    Name = "Open Safe",
    Callback = function()
        game.ReplicatedStorage.RemoteEvents.Safe:FireServer(game:GetService("Workspace").CodeNote.SurfaceGui.TextLabel.Text)
    end,
})

MiscTab:CreateButton({
    Name = "Heal Instantly",
    Callback = function()
        for i = 1, 200 do
            wait(0.005)
            local A_1 = "Cat"
            local Event = game:GetService("ReplicatedStorage").RemoteEvents.Energy
            Event:FireServer(A_1)
        end
    end,
})

MiscTab:CreateButton({
    Name = "Drop Tool",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ZYXmS4Sb"))()
    end,
})

MiscTab:CreateButton({
    Name = "Be Friends with Cat",
    Callback = function()
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.Cattery
        Target:FireServer()
    end,
})

local OtherTab = Window:CreateTab("Other") -- Title, Image
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
OtherTab:CreateToggle({
    Name="FLY",
    Callback=function(v)
        if v then sFLY(v)
        else FLYING=v
        end end})
OtherTab:CreateSlider({
   Name = "Fly Speed",
   Range = {1, 25},
   Increment = 1,
   Suffix = "",
   CurrentValue = vehicleflyspeed, 
   Callback = function(v) vehicleflyspeed = v end})
OtherTab:CreateSlider({Name="Speed",Range={16, 100},Increment=1,Suffix="studs per second",CurrentValue=game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,Callback=function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
OtherTab:CreateLabel("Made by zinx")
OtherTab:CreateLabel("Delivered to you by Kitty Hub")
OtherTab:CreateButton({Name="Copy discord invite",Callback=function()setclipboard("discord.gg/gUMYGXqPPw")end})