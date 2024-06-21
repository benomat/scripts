local Elerium = loadstring(game:HttpGet('https://raw.githubusercontent.com/lomychx/elerium/main/lib.lua'))()

local LocalPlayer = game.Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera
local WorldToViewportPoint = CurrentCamera.worldToViewportPoint
local ViewportSize = CurrentCamera.ViewportSize

local GroupService = game:GetService("GroupService")
local TweenService = game:GetService("TweenService");
local RunService = game:GetService("RunService");
local Players = game:GetService("Players");
local Workspace = game:GetService("Workspace");
local Lighting = game:GetService("Lighting");
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local StarterGui = game:GetService("StarterGui")
local SoundService = game:GetService("SoundService")
local TeleportService = game:GetService("TeleportService")

Settings = {
    Enabled = false
}

-- local function rejoin() 
--     queue_on_teleport("print(\'[FunPay] [Queue loaded]\') wait(15) print(\'[FunPay] [Loading script]\') local switch = loadstring(game:HttpGet('https://raw.githubusercontent.com/lomychx/projectslayer/main/script.lua'))() print(555) switch(true)")
-- 	TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
-- end

-- UI
local Window = Elerium:AddWindow("Project slayer", {
    main_color = Color3.fromRGB(41, 74, 122),
    min_size = Vector2.new(350, 200),
    toggle_key = Enum.KeyCode.Delete,
    can_resize = true,
})

local MainTab = Window:AddTab("Main")

MainTab:Show()
MainTab:AddSwitch("Autofarm", function(bool) Settings.Enabled = bool end)

-- MainTab:AddButton("Rejoin", function()
-- 	rejoin()
-- end)

local Console = MainTab:AddConsole({
	y = 100,
	readonly = true,
	source = "Logs",
})

Elerium:FormatWindows()

-- autofarm

Console:Log("Добро пожаловать!")

local function bypass_teleport(cf, speed)
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
        local distance = (cf.p - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
        local delay = distance / speed

        local a = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(delay, Enum.EasingStyle.Linear), {CFrame=cf})
        a:Play()
        a.Completed:Wait()
    end
end

local function tp(cf) LocalPlayer.Character.HumanoidRootPart.CFrame = cf end 
local Flowers_Spawn = Workspace.Demon_Flowers_Spawn

local spawn = {
    CFrame.new(-269.216003, 281.609985, -1800.20496), --4
    CFrame.new(120.362999, 280.559998, -1632.83203), --6
    CFrame.new(120.362991, 280.559998, -1628.83203), --11
    CFrame.new(-336.239014, 424.209991, -2261.17993), --10
    CFrame.new(-322.239014, 424.209991, -2263.17993), --2
    CFrame.new(13.7409973, 272.790009, -3332.4939), --9
    CFrame.new(3862.20068, 341.266998, -3132.60278), --1
    CFrame.new(1459.948, 295.438995, -3027.81299), --8
    CFrame.new(1870.927, 315.311005, -3123.90405), --5
    CFrame.new(3092.6731, 315.311005, -3287.86597), --7
    CFrame.new(5186.68799, 364.227997, -2427.08398) --3
}

local function flowerCheck() 
    for _,v in pairs(Flowers_Spawn:GetChildren()) do
        if not Settings.Enabled then continue end
        if v.Name ~= "Demon_Flower" then continue end
        if not v:FindFirstChild("Cube.002") then continue end

        local flower = v["Cube.002"]
        local proximity_prompt = flower:FindFirstChild("Pick_Demon_Flower_Thing")

        if not proximity_prompt then continue end

        Console:Log("Цветок найден")

        if not Settings.Enabled then continue end

        bypass_teleport(flower.CFrame, 500)
        wait(1)
        proximity_prompt:InputHoldBegin()
        Console:Log("Жду 1 секунду...")
        wait(proximity_prompt["HoldDuration"])
        wait(1)
    end
end

local function loadMap()
    for i, sp in pairs(spawn) do
        if not Settings.Enabled then continue end

        Console:Log(string.format("Проверяю точки на карте [%d / %d]", i, #spawn))
        bypass_teleport(sp, 500)
        flowerCheck()
	wait(10)
    end

    
end

while wait() do
    if Settings.Enabled then
		loadMap()
        loadMap()
        loadMap()

        if Settings.Enabled then
            Console:Log("Отдыхаю 1 минуту...")
            wait(60)
        end

        VirtualUser:Button2Down(Vector2.new(0,0), CurrentCamera.CFrame)
        wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0,0), CurrentCamera.CFrame)
    end
end