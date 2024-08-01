local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local eventstore = {
    ToolCollect = ReplicatedStorage.Events.ToolCollect,
    ToyEvent = ReplicatedStorage.Events.ToyEvent,
    PlayerHiveCommand = ReplicatedStorage.Events.PlayerHiveCommand,
    ClaimHive = ReplicatedStorage.Events.ClaimHive
}

local mapstore = {
    HiddenStickers = Workspace.HiddenStickers,
    Collectibles = Workspace.Collectibles
}

local togglestore = {
    AutoDig = false,
    CollectHiddenStickers = false
}

-- Function to collect hidden stickers
task.spawn(function()
    repeat
        if togglestore.CollectHiddenStickers then
            for _, v in mapstore.HiddenStickers:GetChildren() do
                fireclickdetector(v.ClickDetector)
            end
        end
        task.wait(1)
    until false
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "RBScr1pts Hub - v1.4.2",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "RBScr1ptsHub - Bee Swarm Simulator",
    IntroEnabled = true,
    IntroText = "RBScr1pts - Bee Swarm Simulator"
})

-- Main / First
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})

Main:AddParagraph("Scripters:","Krires + why_y0u")

Main:AddLabel("Join us discord for information about updates!")

local discordinvite = "discord.gg/CjDHnCp5Ss - click to copy"

Main:AddButton({
	Name = "Discord!",
	Callback = function()
        setclipboard(discordinvite)
  	end    
})

local Farm = Window:MakeTab({
    Name = "Farm",
    Icon = "",
    PremiumOnly = false
})

local BeeSmas = Window:MakeTab({
    Name = "Event",
    Icon = "",
    PremiumOnly = false
})

local Mobs = Window:MakeTab({
	Name = "Mobs",
	Icon = "",
	PremiumOnly = false
})

local Items = Window:MakeTab({
	Name = "Items",
	Icon = "",
	PremiumOnly = false
})

local Player = Window:MakeTab({
	Name = "Misc",
	Icon = "",
	PremiumOnly = false
})

local Extra = Window:MakeTab({
	Name = "Extra",
	Icon = "",
	PremiumOnly = false
})

local Webhook = Window:MakeTab({
    Name = "Webhook",
    Icon = "",
    PremiumOnly = false
})

local Settings = Window:MakeTab({
    Name = "Settings",
    Icon = "",
    PremiumOnly = false
})

Settings:AddBind({
        Name = "Toggle Gui",
        Default = Enum.KeyCode.LeftControl,
        Hold = false,
        Callback = function()
            if game.CoreGui.Orion.Enabled == true then
                game.CoreGui.Orion.Enabled = false
            elseif game.CoreGui.Orion.Enabled == false then
                game.CoreGui.Orion.Enabled = true
            end
        end 
    })


--Farm / Two
local Section = Farm:AddSection({
	Name = "Farm"
})

Farm:AddToggle({
    Name = "Auto Dig",
    Default = false,
    Callback = function(Value)
        togglestore.AutoDig = Value
        if Value then
            startAutoDig()
        end
    end    
})

function startAutoDig()
    spawn(function()
        while true do
            if togglestore.AutoDig then
                eventstore.ToolCollect:FireServer()
            end
            task.wait(0.1)
        end
    end)
end

togglestore.AutoDig = false

local selectedField = ""
local selectedFarm = "Tween"

Farm:AddDropdown({
    Name = "Select Field",
    Default = "BamBoo Field",
    Options = {"BamBoo Field", "Blue Field", "Cactus Field", "Clover Field", "Coconut Field", "Dandelion Field", "Stump Field", "MountainTop Field", "Mushroom Field", "Pepper Patch", "Pineapple Field", "PineTree Field", "Pumpkin Field", "Rose Field", "Spider Field", "StrawBerry Field", "Sunflower Field"},
    Callback = function(Value)
        selectedField = Value
    end
})

Farm:AddDropdown({
    Name = "Select Farm Mode",
    Default = "Tween",
    Options = {"Tween", "TweenFast", "Walk"},
    Callback = function(Value)
        selectedFarm = Value
    end
})

shared.farmFlames = false
shared.farmBubbles = false
shared.farmStars = false
shared.farmBalloons = false

Farm:AddToggle({
    Name = "Farm Flames",
    Default = false,
    Callback = function(Value)
        shared.farmFlames = Value
    end
})

Farm:AddToggle({
    Name = "Farm Bubbles",
    Default = false,
    Callback = function(Value)
        shared.farmBubbles = Value
    end
})

Farm:AddToggle({
    Name = "Farm Stars",
    Default = false,
    Callback = function(Value)
        shared.farmStars = Value
    end
})

Farm:AddToggle({
    Name = "Farm Balloons",
    Default = false,
    Callback = function(Value)
        shared.farmBalloons = Value
    end
})

Farm:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(Value)
        if Value then
            if selectedFarm == "Tween" then
                shared.a11 = true
                startTweenFarm()
            elseif selectedFarm == "TweenFast" then
                shared.a12 = true
                startTweenFastFarm()
            elseif selectedFarm == "Walk" then
                shared.a13 = true
                startWalkFarm()
            end
        else
            shared.a11 = false
            shared.a12 = false
            shared.a13 = false
        end
    end
})

local function isWithinFieldRadius(position, fieldPosition)
    return (position - fieldPosition).Magnitude <= 40
end

local function findNearestFlame(currentPosition)
    local nearestFlame = nil
    local shortestDistance = math.huge
    for _, flame in pairs(workspace.PlayerFlames:GetChildren()) do
        local distance = (flame.Position - currentPosition).Magnitude
        if distance < shortestDistance then
            nearestFlame = flame
            shortestDistance = distance
        end
    end
    return nearestFlame
end

local function findNearestBubble(currentPosition)
    local nearestBubble = nil
    local shortestDistance = math.huge
    for _, bubble in pairs(workspace.Particles:GetChildren()) do
        if bubble.Name == "Bubble" and bubble:IsA("Part") then
            local distance = (bubble.Position - currentPosition).Magnitude
            if distance < shortestDistance then
                nearestBubble = bubble
                shortestDistance = distance
            end
        end
    end
    return nearestBubble
end

local function findNearestStar(currentPosition)
    local nearestStar = nil
    local shortestDistance = math.huge
    for _, star in pairs(workspace.Particles:GetChildren()) do
        if star.Name == "Star" and star:IsA("Part") then
            local distance = (star.Position - currentPosition).Magnitude
            if distance < shortestDistance then
                nearestStar = star
                shortestDistance = distance
            end
        end
    end
    return nearestStar
end

local function findNearestBalloon(currentPosition)
    local nearestBalloon = nil
    local shortestDistance = math.huge
    local balloonPosition = nil

    for _, balloon in pairs(workspace.Balloons.FieldBalloons:GetChildren()) do
        local balloonBody = balloon:FindFirstChild("BalloonBody")
        if balloonBody then
            local distance = (balloonBody.Position - currentPosition).Magnitude
            if distance <= 40 and distance < shortestDistance then
                nearestBalloon = balloonBody
                shortestDistance = distance
                balloonPosition = balloonBody.Position
            end
        end
    end

    return nearestBalloon, balloonPosition
end

function startTweenFarm()
    spawn(function()
        local fieldPositions = {
            ["BamBoo Field"] = CFrame.new(93, 20, -25),
            ["Blue Field"] = CFrame.new(113.7, 4, 101.5),
            ["Cactus Field"] = CFrame.new(-194, 68, -107),
            ["Clover Field"] = CFrame.new(174, 34, 189),
            ["Coconut Field"] = CFrame.new(-255, 72, 459),
            ["Dandelion Field"] = CFrame.new(-30, 4, 225),
            ["Stump Field"] = CFrame.new(420, 117, -178),
            ["MountainTop Field"] = CFrame.new(76, 176, -181),
            ["Mushroom Field"] = CFrame.new(-91, 4, 116),
            ["Pepper Patch"] = CFrame.new(-486, 124, 517),
            ["Pineapple Field"] = CFrame.new(262, 68, -201),
            ["PineTree Field"] = CFrame.new(-338, 69, -180),
            ["Pumpkin Field"] = CFrame.new(-186, 68.5, -194),
            ["Rose Field"] = CFrame.new(-322, 20, 124),
            ["Spider Field"] = CFrame.new(-57.2, 20, -5.3),
            ["StrawBerry Field"] = CFrame.new(-179, 20, -14),
            ["Sunflower Field"] = CFrame.new(-208, 4, 185)
        }
        
        local function teleportToSelectedField()
            local spawnPosition = fieldPositions[selectedField]
            if spawnPosition then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spawnPosition
            end
        end

        teleportToSelectedField()

        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
            if shared.a11 then
                wait(5)
                teleportToSelectedField()
            end
        end)

        while shared.a11 do
            local player = game.Players.LocalPlayer
            local tweenService = game:GetService("TweenService")
            local info = TweenInfo.new(0.4)
        
            local currentPosition = player.Character.HumanoidRootPart.Position
            local spawnPosition = fieldPositions[selectedField]
            local distance = (currentPosition - spawnPosition.Position).Magnitude

            if distance > 40 then
                player.Character.HumanoidRootPart.CFrame = spawnPosition
            end

            local nearestFlame = findNearestFlame(currentPosition)
            local nearestBubble = findNearestBubble(currentPosition)
            local nearestStar = findNearestStar(currentPosition)
            local nearestBalloon, balloonPosition = findNearestBalloon(currentPosition)

            if shared.farmFlames and nearestFlame and isWithinFieldRadius(nearestFlame.Position, spawnPosition.Position) then
                local targetPosition = nearestFlame.Position
                local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                tween:Play()
                tween.Completed:Wait()
            elseif shared.farmBubbles and nearestBubble and isWithinFieldRadius(nearestBubble.Position, spawnPosition.Position) then
                local targetPosition = nearestBubble.Position
                local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                tween:Play()
                tween.Completed:Wait()
            elseif shared.farmStars and nearestStar and isWithinFieldRadius(nearestStar.Position, spawnPosition.Position) then
                local targetPosition = nearestStar.Position
                local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                tween:Play()
                tween.Completed:Wait()
            elseif shared.farmBalloons and nearestBalloon and balloonPosition then
                local farmRadius = 10
                local collectiblesNearBalloon = {}
                for _, collectible in pairs(workspace.Collectibles:GetChildren()) do
                    if collectible.Transparency == 0 and (collectible.Position - balloonPosition).Magnitude <= farmRadius then
                        table.insert(collectiblesNearBalloon, collectible)
                    end
                end
                
                if #collectiblesNearBalloon > 0 then
                    for _, collectible in ipairs(collectiblesNearBalloon) do
                        local targetPosition = collectible.Position
                        local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                        local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                        tween:Play()
                        tween.Completed:Wait()
                    end
                else
                    local randomAngle = math.random() * math.pi * 2
                    local randomRadius = math.random() * farmRadius
                    local offsetX = math.cos(randomAngle) * randomRadius
                    local offsetZ = math.sin(randomAngle) * randomRadius
                    local targetPosition = Vector3.new(balloonPosition.X + offsetX, player.Character.HumanoidRootPart.Position.Y, balloonPosition.Z + offsetZ)
                    local targetCFrame = CFrame.new(targetPosition)
                    local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                    tween:Play()
                    tween.Completed:Wait()
                end
            else
                for _, collectible in pairs(workspace.Collectibles:GetChildren()) do
                    local collectibleDistance = (collectible.Position - currentPosition).Magnitude
            
                    if collectible.Transparency == 0 and collectibleDistance <= 40 then
                        local targetPosition = collectible.Position
                        local targetDistance = (targetPosition - spawnPosition.Position).Magnitude

                        if targetDistance <= 40 then
                            local posX = targetPosition.X
                            local posZ = targetPosition.Z
            
                            local targetCFrame = CFrame.new(posX, player.Character.HumanoidRootPart.Position.Y, posZ)
                            local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                            tween:Play()
                        end
                    end
                end
            end

            task.wait(0.5)
        end
    end)
end

function startTweenFastFarm()
    spawn(function()
        local fieldPositions = {
            ["BamBoo Field"] = CFrame.new(93, 20, -25),
            ["Blue Field"] = CFrame.new(113.7, 4, 101.5),
            ["Cactus Field"] = CFrame.new(-194, 68, -107),
            ["Clover Field"] = CFrame.new(174, 34, 189),
            ["Coconut Field"] = CFrame.new(-255, 72, 459),
            ["Dandelion Field"] = CFrame.new(-30, 4, 225),
            ["Stump Field"] = CFrame.new(420, 117, -178),
            ["MountainTop Field"] = CFrame.new(76, 176, -181),
            ["Mushroom Field"] = CFrame.new(-91, 4, 116),
            ["Pepper Patch"] = CFrame.new(-486, 124, 517),
            ["Pineapple Field"] = CFrame.new(262, 68, -201),
            ["PineTree Field"] = CFrame.new(-338, 69, -180),
            ["Pumpkin Field"] = CFrame.new(-186, 68.5, -194),
            ["Rose Field"] = CFrame.new(-322, 20, 124),
            ["Spider Field"] = CFrame.new(-57.2, 20, -5.3),
            ["StrawBerry Field"] = CFrame.new(-179, 20, -14),
            ["Sunflower Field"] = CFrame.new(-208, 4, 185)
        }
        
        local function teleportToSelectedField()
            local spawnPosition = fieldPositions[selectedField]
            if spawnPosition then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spawnPosition
            end
        end

        teleportToSelectedField()

        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
            if shared.a12 then
                wait(5)
                teleportToSelectedField()
            end
        end)

        while shared.a12 do
            local player = game.Players.LocalPlayer
            local tweenService = game:GetService("TweenService")
            local info = TweenInfo.new(0.1)
        
            local currentPosition = player.Character.HumanoidRootPart.Position
            local spawnPosition = fieldPositions[selectedField]
            local distance = (currentPosition - spawnPosition.Position).Magnitude

            if distance > 40 then
                player.Character.HumanoidRootPart.CFrame = spawnPosition
            end

            local nearestFlame = findNearestFlame(currentPosition)
            local nearestBubble = findNearestBubble(currentPosition)
            local nearestStar = findNearestStar(currentPosition)
            local nearestBalloon, balloonPosition = findNearestBalloon(currentPosition)

            if shared.farmFlames and nearestFlame and isWithinFieldRadius(nearestFlame.Position, spawnPosition.Position) then
                local targetPosition = nearestFlame.Position
                local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                tween:Play()
                tween.Completed:Wait()
            elseif shared.farmBubbles and nearestBubble and isWithinFieldRadius(nearestBubble.Position, spawnPosition.Position) then
                local targetPosition = nearestBubble.Position
                local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                tween:Play()
                tween.Completed:Wait()
            elseif shared.farmStars and nearestStar and isWithinFieldRadius(nearestStar.Position, spawnPosition.Position) then
                local targetPosition = nearestStar.Position
                local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                tween:Play()
                tween.Completed:Wait()
            elseif shared.farmBalloons and nearestBalloon and balloonPosition then
                local farmRadius = 10
                local collectiblesNearBalloon = {}
                for _, collectible in pairs(workspace.Collectibles:GetChildren()) do
                    if collectible.Transparency == 0 and (collectible.Position - balloonPosition).Magnitude <= farmRadius then
                        table.insert(collectiblesNearBalloon, collectible)
                    end
                end
                
                if #collectiblesNearBalloon > 0 then
                    for _, collectible in ipairs(collectiblesNearBalloon) do
                        local targetPosition = collectible.Position
                        local targetCFrame = CFrame.new(targetPosition.X, player.Character.HumanoidRootPart.Position.Y, targetPosition.Z)
                        local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                        tween:Play()
                        tween.Completed:Wait()
                    end
                else
                    local randomAngle = math.random() * math.pi * 2
                    local randomRadius = math.random() * farmRadius
                    local offsetX = math.cos(randomAngle) * randomRadius
                    local offsetZ = math.sin(randomAngle) * randomRadius
                    local targetPosition = Vector3.new(balloonPosition.X + offsetX, player.Character.HumanoidRootPart.Position.Y, balloonPosition.Z + offsetZ)
                    local targetCFrame = CFrame.new(targetPosition)
                    local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                    tween:Play()
                    tween.Completed:Wait()
                end
            else
                for _, collectible in pairs(workspace.Collectibles:GetChildren()) do
                    local collectibleDistance = (collectible.Position - currentPosition).Magnitude
            
                    if collectible.Transparency == 0 and collectibleDistance <= 40 then
                        local targetPosition = collectible.Position
                        local targetDistance = (targetPosition - spawnPosition.Position).Magnitude

                        if targetDistance <= 40 then
                            local posX = targetPosition.X
                            local posZ = targetPosition.Z
            
                            local targetCFrame = CFrame.new(posX, player.Character.HumanoidRootPart.Position.Y, posZ)
                            local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                            tween:Play()
                        end
                    end
                end
            end

            task.wait(0.2)
        end
    end)
end

function startWalkFarm()
    spawn(function()
        local fieldPositions = {
            ["BamBoo Field"] = CFrame.new(93, 20, -25),
            ["Blue Field"] = CFrame.new(113.7, 4, 101.5),
            ["Cactus Field"] = CFrame.new(-194, 68, -107),
            ["Clover Field"] = CFrame.new(174, 34, 189),
            ["Coconut Field"] = CFrame.new(-255, 72, 459),
            ["Dandelion Field"] = CFrame.new(-30, 4, 225),
            ["Stump Field"] = CFrame.new(420, 117, -178),
            ["MountainTop Field"] = CFrame.new(76, 176, -181),
            ["Mushroom Field"] = CFrame.new(-91, 4, 116),
            ["Pepper Patch"] = CFrame.new(-486, 124, 517),
            ["Pineapple Field"] = CFrame.new(262, 68, -201),
            ["PineTree Field"] = CFrame.new(-338, 69, -180),
            ["Pumpkin Field"] = CFrame.new(-186, 68.5, -194),
            ["Rose Field"] = CFrame.new(-322, 20, 124),
            ["Spider Field"] = CFrame.new(-57.2, 20, -5.3),
            ["StrawBerry Field"] = CFrame.new(-179, 20, -14),
            ["Sunflower Field"] = CFrame.new(-208, 4, 185)
        }
        
        local function teleportToSelectedField()
            local spawnPosition = fieldPositions[selectedField]
            if spawnPosition then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spawnPosition
            end
        end

        teleportToSelectedField()

        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
            if shared.a13 then
                wait(5)
                teleportToSelectedField()
            end
        end)

        while shared.a13 do
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")
            
            local currentPosition = character.HumanoidRootPart.Position
            local spawnPosition = fieldPositions[selectedField]
            local distance = (currentPosition - spawnPosition.Position).Magnitude

            if distance > 40 then
                character.HumanoidRootPart.CFrame = spawnPosition
            end

            local nearestFlame = findNearestFlame(currentPosition)
            local nearestBubble = findNearestBubble(currentPosition)
            local nearestStar = findNearestStar(currentPosition)
            local nearestBalloon, balloonPosition = findNearestBalloon(currentPosition)

            if shared.farmFlames and nearestFlame and isWithinFieldRadius(nearestFlame.Position, spawnPosition.Position) then
                humanoid:MoveTo(Vector3.new(nearestFlame.Position.X, character.HumanoidRootPart.Position.Y, nearestFlame.Position.Z))
                humanoid.MoveToFinished:Wait()
            elseif shared.farmBubbles and nearestBubble and isWithinFieldRadius(nearestBubble.Position, spawnPosition.Position) then
                humanoid:MoveTo(Vector3.new(nearestBubble.Position.X, character.HumanoidRootPart.Position.Y, nearestBubble.Position.Z))
                humanoid.MoveToFinished:Wait()
            elseif shared.farmStars and nearestStar and isWithinFieldRadius(nearestStar.Position, spawnPosition.Position) then
                humanoid:MoveTo(Vector3.new(nearestStar.Position.X, character.HumanoidRootPart.Position.Y, nearestStar.Position.Z))
                humanoid.MoveToFinished:Wait()
            elseif shared.farmBalloons and nearestBalloon and balloonPosition then
                local farmRadius = 10
                local collectiblesNearBalloon = {}
                for _, collectible in pairs(workspace.Collectibles:GetChildren()) do
                    if collectible.Transparency == 0 and (collectible.Position - balloonPosition).Magnitude <= farmRadius then
                        table.insert(collectiblesNearBalloon, collectible)
                    end
                end
                
                if #collectiblesNearBalloon > 0 then
                    for _, collectible in ipairs(collectiblesNearBalloon) do
                        humanoid:MoveTo(Vector3.new(collectible.Position.X, character.HumanoidRootPart.Position.Y, collectible.Position.Z))
                        humanoid.MoveToFinished:Wait()
                    end
                else
                    local randomAngle = math.random() * math.pi * 2
                    local randomRadius = math.random() * farmRadius
                    local offsetX = math.cos(randomAngle) * randomRadius
                    local offsetZ = math.sin(randomAngle) * randomRadius
                    local targetPosition = Vector3.new(balloonPosition.X + offsetX, character.HumanoidRootPart.Position.Y, balloonPosition.Z + offsetZ)
                    humanoid:MoveTo(targetPosition)
                    humanoid.MoveToFinished:Wait()
                end
            else
                for _, collectible in pairs(workspace.Collectibles:GetChildren()) do
                    local collectibleDistance = (collectible.Position - currentPosition).Magnitude
            
                    if collectible.Transparency == 0 and collectibleDistance <= 40 then
                        local targetPosition = collectible.Position
                        local targetDistance = (targetPosition - spawnPosition.Position).Magnitude

                        if targetDistance <= 40 then
                            humanoid:MoveTo(Vector3.new(targetPosition.X, character.HumanoidRootPart.Position.Y, targetPosition.Z))
                            humanoid.MoveToFinished:Wait()
                        end
                    end
                end
            end

            task.wait(0.1)
        end
    end)
end



Farm:AddToggle({
    Name = "Auto Sell",
    Default = false,
    Callback = function(Value)
        shared.autoSell = Value
        if shared.autoSell then
            spawn(function()
                while shared.autoSell do
                    local player = game.Players.LocalPlayer
                    local capacity = player.CoreStats.Capacity.Value
                    local pollen = player.CoreStats.Pollen.Value

                    if pollen >= capacity * 0.99 then
                        local originalPosition = player.Character.HumanoidRootPart.CFrame
                        local wasAutoFarming = shared.a11 or shared.a12 or shared.a13
                        local hiveNumber = tostring(player.Honeycomb.Value)

                        shared.a11, shared.a12, shared.a13 = false, false, false

                        for i = 1, 5 do
                            player.Character.HumanoidRootPart.CFrame = workspace.Honeycombs[hiveNumber].LightHolder.CFrame * CFrame.new(0, 5, -5)
                            task.wait(0.1)
                        end

                        repeat
                            local buttonText = player.PlayerGui.ScreenGui.ActivateButton.TextBox.Text
                            if buttonText == 'Make Honey' then
                                game.ReplicatedStorage.Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
                            end
                            task.wait()
                        until player.CoreStats.Pollen.Value == 0 or not shared.autoSell

                        if shared.autoSell then
                            if wasAutoFarming then
                                if selectedFarm == "Tween" then
                                    shared.a11 = true
                                    startTweenFarm()
                                elseif selectedFarm == "TweenFast" then
                                    shared.a12 = true
                                    startTweenFastFarm()
                                elseif selectedFarm == "Walk" then
                                    shared.a13 = true
                                    startWalkFarm()
                                end
                            else
                                player.Character.HumanoidRootPart.CFrame = originalPosition
                            end
                        end
                    end
                    task.wait(8)
                end
            end)
        end
    end    
})



local Section = Farm:AddSection({
	Name = "Other"
})

Farm:AddToggle({
    Name = "Auto Use Micro-Converter",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do
local player = game:GetService("Players").LocalPlayer
local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
wait(0.1)                                                                       
if player.CoreStats.Pollen.Value>=maxpollen then
local Ass = {["Name"] = "Micro-Converter"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Ass)
end
end
end
})
Farm:AddToggle({
    Name = "Auto Use Instant Converter",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do
local player = game:GetService("Players").LocalPlayer
local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
wait(0.3)
if player.CoreStats.Pollen.Value>=maxpollen then do
local zakharpidor = {[1] = "Instant Converter"}
game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(zakharpidor))
end
wait(0.3)
elseif player.CoreStats.Pollen.Value>=maxpollen then do
zakharpidor = {[1] = "Instant Converter B"}
game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(zakharpidor))
wait(0.3) end
elseif player.CoreStats.Pollen.Value>=maxpollen then do
zakharpidor = {[1] = "Instant Converter C"}
game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(zakharpidor))
end
end
end
end})

Farm:AddToggle({
    Name = "Auto Use Coconut",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Coconut = {["Name"] = "Coconut"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Coconut)
            wait(11) end
        end
})
Farm:AddToggle({
    Name = "Auto Use Gumdrops",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do
local Gumdrops = {["Name"] = "Gumdrops"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Gumdrops)
wait(3)
end
end
})

local Section = Extra:AddSection({
	Name = "Mask"
})

Extra:AddDropdown({
    Name = "Equip Mask",
    Default = "nil",
    Options = {"Gummy Mask","Demon Mask","Diamond Mask","Bubble Mask","Fire Mask","Honey Mask",},
    Callback = function(Value)
if Value == "Gummy Mask" then 
A_1 = "Equip"
A_2 = {["Mute"] = true
    , ["Type"] = "Gummy Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_1, A_2)
elseif Value == "Demon Mask" then
A_3 = "Equip"
A_4 = {["Mute"] = true
    , ["Type"] = "Demon Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_3, A_4)
elseif Value == "Diamond Mask" then
A_5 = "Equip"
A_6 = {["Mute"] = true
    , ["Type"] = "Diamond Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_5, A_6)
elseif Value == "Bubble Mask" then
A_7 = "Equip"
A_8 = {["Mute"] = true
    , ["Type"] = "Bubble Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_7, A_8)
elseif Value == "Fire Mask" then
A_9 = "Equip"
A_10 = {["Mute"] = true
    , ["Type"] = "Fire Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_9, A_10)
elseif Value == "Honey Mask" then 
A_11 = "Equip"
A_12 = {["Mute"] = true
    , ["Type"] = "Honey Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_11, A_12)
end
end
})


-- BeeSmas / Three

BeeSmas:AddButton({
    Name = "Bee Bear Teleport",
    Default = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-38.666648864746094, 6.3912272453308105, 283.1805419921875)
    end
})

local Section = BeeSmas:AddSection({
    Name = "SnowFlakes"
})

local enabled = false

BeeSmas:AddToggle({
    Name = "SnowFlakes Farm",
    Default = false,
    Callback = function(Value)
        enabled = Value
        if enabled then
            farmSnowflakes()
        end
    end
})

local path = workspace:WaitForChild"Particles":WaitForChild"Snowflakes"
local lplr = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

function chatmsg(t,c)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = t; 
        Color = c
    })
end

function notif(ti,tx,du)
    game.StarterGui:SetCore("SendNotification", {
        Title = ti; 
        Text = tx;
        Duration = du;
    })
end

function getsnowflake()
    if #path:GetChildren() ~= 0 then
        return path:GetChildren()[math.random(1, #path:GetChildren())]
    else
        notif("SnowWare", "No SnowFlakes Found", 5)
        getsnowflake()
        task.wait(0.1)
    end
end

function farmSnowflakes()
    while enabled do
        lplr = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        selectedsnowflake = getsnowflake()
        collecttick = tick()
        repeat task.wait()
            game:GetService("TweenService"):Create(lplr.HumanoidRootPart, TweenInfo.new(1), {CFrame = selectedsnowflake.CFrame + Vector3.new(0, 15, 0)}):Play()
            lplr.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        until (tick() - collecttick > 3) or not enabled -- time fly before collect this
        task.wait(4) -- wait time before collect next
    end
end

chatmsg(info, Color3.fromRGB(107, 170, 253))

local Section = BeeSmas:AddSection({
    Name = "Gift Teleport"
})

BeeSmas:AddDropdown({
    Name = "Teleport To Present - ",
    Default = "Black Bearl",
    Options = {"Gift 3","Gift 4","Gift 6","Gift 8","Gift 9","Gift 10","Gift 11","Gift 13","Gift 14","Gift 16",},
    Callback = function(Value)
if Value == "Gift 3" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(39, 5, 99)
elseif Value == "Gift 3" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86, 4.6, 294)
elseif Value == "Gift 4" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-277, 18, 386.8)
elseif Value == "Gift 6" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-449, 69, -97.5)
elseif Value == "Gift 8" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(327.6, 195, -229.5)
elseif Value == "Gift 9" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.7, 41.5, 719.8)
elseif Value == "Gift 10" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-421.7, 72.8, 437.6)
elseif Value == "Gift 11" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-453, 122.8, 336.5)
elseif Value == "Gift 13" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(488, 180, -329)
elseif Value == "Gift 14" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.4, 235.8, -581.9)
elseif Value == "Gift 16" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19.8, 231.5, -121.3)
end
end
})


-- Player / Four

local speedEnabled = false
local jumpEnabled = false
local originalSpeed
local originalJumpPower
local currentSpeed
local currentJumpPower

local function getOriginalValues()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    originalSpeed = character.Humanoid.WalkSpeed
    originalJumpPower = character.Humanoid.JumpPower
end

getOriginalValues()

local Section = Player:AddSection({
    Name = "Player Speed"
})

Player:AddToggle({
	Name = "Enable Speed",
	Default = false,
	Callback = function(Value)
		speedEnabled = Value
		if not speedEnabled then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = originalSpeed
		end
	end    
})

Player:AddTextbox({
    Name = "Set Speed 1-150",
    Default = tostring(math.floor(originalSpeed)),
    TextDisappear = true,
    Callback = function(Value)
        local inputSpeed = tonumber(Value)
        if inputSpeed and inputSpeed >= 1 and inputSpeed <= 150 then
            currentSpeed = math.floor(inputSpeed)
            Player.Character.Humanoid.WalkSpeed = currentSpeed
        end
    end
})

local Section = Player:AddSection({
    Name = "Player Jump Power"
})

Player:AddToggle({
	Name = "Enable Jump Power",
	Default = false,
	Callback = function(Value)
		jumpEnabled = Value
		if not jumpEnabled then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = originalJumpPower
		end
	end    
})

Player:AddTextbox({
    Name = "Set Jump Power 1-200",
    Default = tostring(math.floor(originalJumpPower)),
    TextDisappear = true,
    Callback = function(Value)
        local inputJumpPower = tonumber(Value)
        if inputJumpPower and inputJumpPower >= 1 and inputJumpPower <= 200 then
            currentJumpPower = math.floor(inputJumpPower)
            Player.Character.Humanoid.JumpPower = currentJumpPower
        end
    end
})

game:GetService("RunService").Heartbeat:Connect(function()
    if speedEnabled then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = currentSpeed
    end
    if jumpEnabled then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = currentJumpPower
    end
end)

local Section = Player:AddSection({
	Name = "Misc"
})

local noclipEnabled = false

Player:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(Value)
		noclipEnabled = Value
	end    
})

game:GetService('RunService').Stepped:Connect(function()
    if noclipEnabled then
        for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA('BasePart') and part.CanCollide then
                part.CanCollide = false
            end
        end
    end
end)

-- Teleports | Four

local Section = Extra:AddSection({
    Name = "Teleports"
})

Extra:AddButton({
	Name = "TP To Hive",
	Callback = function()
    local player = game:GetService("Players").LocalPlayer
    player.Character:MoveTo(player.SpawnPos.Value.p)
  	end    
})

Extra:AddDropdown({
    Name = "Teleport To Shop - ",
    Default = "Black Bearl",
    Options = {"Bee Shop","First Tool Shop","Second Tool Shop (15+ bees)","MountainTop Shop (25+ bees)","Spirit Shop (35+ bees)","Dapper Bear's Shop","GumBall Shop","Blue Clubhouse","Red Clubhouse","Ticket Shop","RoyalJelly Shop","Ticket RoyalJelly Shop","Treat Shop","Moon","Nuoc"},
    Callback = function(Value)
if Value == "Bee Shop" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-136.8, 4.6, 243.4)
elseif Value == "First Tool Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86, 4.6, 294)
elseif Value == "Second Tool Shop (15+ bees)" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(165, 69, -161)
elseif Value == "MountainTop Shop (25+ bees)" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18, 176, -137)
elseif Value == "Spirit Shop (35+ bees)" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-501, 52, 474)
elseif Value == "Dapper Bear's Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(456.7, 137.9, -313.8)
elseif Value == "GumBall Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(269, 25257.55, -724.2)
elseif Value == "Blue Clubhouse" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(292, 4, 98)
elseif Value == "Red Clubhouse" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-334, 21, 216)
elseif Value == "Ticket Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.8, 184, -222.2)
elseif Value == "RoyalJelly Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-297, 53, 68)
elseif Value == "Ticket RoyalJelly Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(81, 18, 240)
elseif Value == "Treat Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-228.2, 5, 89.4)
elseif Value == "Moon" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21,88,-54)
elseif Value == "Nuoc" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-426,70,38)
end
end
})


Extra:AddDropdown({
    Name = "Teleport To Bear - ",
    Default = "Black Bearl",
    Options = {"Black Bear","Brown Bear","Panda Bear","Polar Bear","Science Bear","Mother Bear","Spirit Bear","Gummy Bear","Onett","Tunnel Bear","Stick Bug",},
    Callback = function(Value)
if Value == "Black Bear" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-258.1, 5, 299.7) 
elseif Value == "Brown Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(282, 46, 236) 
elseif Value == "Panda Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(106.3, 35, 50.1) 
elseif Value == "Polar Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-106, 119, -77)
elseif Value == "Science Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(267, 103, 20)
elseif Value == "Mother Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.898, 5.64093, 83.4582)
elseif Value == "Spirit Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-363.936, 105.284, 485.853)
elseif Value == "Gummy Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(271.624, 25292.9, -850.958) 
elseif Value == "Tunnel Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(313.654, 6.81172, -46.9131)
elseif Value == "Onett" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.41592, 232.791, -520.278)
elseif Value == "Stick Bug" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-129.2, 50.0709, 148.288)
end
end
})

Extra:AddDropdown({
    Name = "Teleport To Field - ",
    Default = "BamBoo Fieldd",
    Options = {"BamBoo Field","Blue Field","Cactus Field","Clover Field","Coconut Field","Dandelion Field","Stump Field","MountainTop Field","Mushroom Field","Pepper Patch","Pineapple Field","PineTree Field","Pumpkin Field","Rose Field","Spider Field","StrawBerry Field","Sunflower Field",},
    Callback = function(Value)
if Value == "BamBoo Field" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93, 20, -25)
elseif Value == "Blue Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113.7, 4, 101.5)
elseif Value == "Cactus Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194, 68, -107)
elseif Value == "Clover Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(174, 34, 189)
elseif Value == "Coconut Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-255,72,459)
elseif Value == "Dandelion Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30, 4, 225)
elseif Value == "Stump Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(420,117,-178)
elseif Value == "MountainTop Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76, 176, -181)
elseif Value == "Mushroom Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-91, 4, 116)
elseif Value == "Pepper Patch" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486,124,517)
elseif Value == "Pineapple Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(262, 68, -201)
elseif Value == "PineTree Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318, 68, -150)
elseif Value == "Pumpkin Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486,124,517)
elseif Value == "Pineapple Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194, 68, -182)
elseif Value == "Rose Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-322, 20, 124)
elseif Value == "Spider Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.2, 20, -5.3)
elseif Value == "StrawBerry Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(262, 68, -201)
elseif Value == "Sunflower Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-208, 4, 185)
end
end
})

Extra:AddDropdown({
    Name = "Teleport To Booster - ",
    Default = "BamBoo Fieldd",
    Options = {"Ant","Bluefield Boost","Blueberry Dispenser","Club Honey","Gumdrop Dispenser","Glue Dispenser","Honeystorm Dispensor","Instant Honey Convertor","MountainTop Boost","Nectar Condenser","Redfield Boost","Sprout Dispenser","Star Hut","Strawberry Dispenser","Treat Dispenser",},
    Callback = function(Value)
if Value == "Ant" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 32, 495)
elseif Value == "Blue Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113.7, 4, 101.5)
elseif Value == "Bluefield Boost" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(272, 58, 86)
elseif Value == "Blueberry Dispenser" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(307, 5, 134)
elseif Value == "Club Honey" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44.8, 5, 319.6)
elseif Value == "Gumdrop Dispenser" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68, 21.8, 26)
elseif Value == "Glue Dispenser" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(269, 25257.546875, -724)
elseif Value == "Honeystorm Dispensor" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(238.4, 33.3, 165.6)
elseif Value == "Instant Honey Convertor" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(282, 68, -62)
elseif Value == "MountainTop Boost" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-40, 176, -191.7)
elseif Value == "Nectar Condenser" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-416.7, 101.5, 342.8)
elseif Value == "Redfield Boost" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-315.5, 21, 240)
elseif Value == "Sprout Dispenser" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-269.26, 26.56, 267.31)
elseif Value == "Star Hut" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.9, 64.6, 322.1)
elseif Value == "Strawberry Dispenser" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-320.5, 46, 272.5)
elseif Value == "Treat Dispenser" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(193.9, 68, -123)
end
end
})

local Section = Items:AddSection({
    Name = "Dispensers"
})

Items:AddButton({
	Name = "Use All Dispensers",
	Callback = function()
      local A_1 = "Glue Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Wealth Clock"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Coconut Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Strawberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Treat Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Ant Pass Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Blueberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Honey Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Royal Jelly Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  end
})

Items:AddToggle({
    Name = "Auto Use All Dispensers",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff5 = cointr
         while turnoff5 == true do 
             local A_1 = "Glue Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Wealth Clock"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Coconut Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Strawberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Treat Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Ant Pass Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Blueberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Honey Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Royal Jelly Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  wait(10)
            end
            end
})
Items:AddButton({
	Name = "Use Glue Dispenser",
	Callback = function()
            local A_1 = "Glue Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Glue Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local A_1 = "Glue Dispenser"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Wealth Clock",
	Callback = function()
   A_1 = "Wealth Clock"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Wealth Clock",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Wealth Clock"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Coconut Dispenser",
	Callback = function()
                  A_1 = "Coconut Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Coconut Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Coconut Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Strawberry Dispenser",
	Callback = function()
                  A_1 = "Strawberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Strawberry Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Strawberry Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Treat Dispenser",
	Callback = function()
                  A_1 = "Treat Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Treat Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Treat Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Free Ant Pass Dispenser",
	Callback = function()
                  A_1 = "Free Ant Pass Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Free Ant Pass Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Free Ant Pass Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Blueberry Dispenser",
	Callback = function()
                  A_1 = "Blueberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Blueberry Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Blueberry Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Honey Dispenser",
	Callback = function()
                  A_1 = "Honey Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Honey Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Honey Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Items:AddButton({
	Name = "Use Free Royal Jelly Dispenser",
	Callback = function()
                  A_1 = "Free Royal Jelly Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Free Royal Jelly Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Free Royal Jelly Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})

local Section = Items:AddSection({
    Name = "Dices"
})

Items:AddButton({
	Name = "Use Field Dice",
	Callback = function()
local Dice1 = {["Name"] = "Field Dice"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice1)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Field Dice",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Dice1 = {["Name"] = "Field Dice"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice1)
            wait(3) end
    end    
})
Items:AddButton({
	Name = "Use Smooth Dice",
	Callback = function()
local Dice2 = {["Name"] = "Smooth Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice2)  
end    
})
Items:AddToggle({
    Name = "Auto Use Smooth Dice",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Dice2 = {["Name"] = "Smooth Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice2)  

            wait(3) end
    end    
}) 
Items:AddButton({
	Name = "Use Loaded Dice",
	Callback = function()
local Dice3 = {["Name"] = "Loaded Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice3)
  	end    
})
Items:AddToggle({
    Name = "Auto Use Loaded Dice",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Dice3 = {["Name"] = "Loaded Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice3)
            wait(3) end
    end    
}) 

local Section = Items:AddSection({
    Name = "Boosts"
})

Items:AddButton({
	Name = "Use All Boosters",
	Callback = function()
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
	end
})
Items:AddToggle({
    Name = "Auto Use All Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
wait(5) end    
end
})
Items:AddButton({
	Name = "Use Red Field Booster",
	Callback = function()
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
	end
})
Items:AddToggle({
    Name = "Auto Use Red Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
wait(5) end    
end
})
Items:AddButton({
	Name = "Use Blue Field Booster",
	Callback = function()
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
	end
})
Items:AddToggle({
    Name = "Auto Use Blue Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
wait(5)       end    
end
})
Items:AddButton({
	Name = "Use Field Booster",
	Callback = function()
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
	end
})
Items:AddToggle({
    Name = "Auto Use Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
 wait(5)        end    
end
})

local Section = Items:AddSection({
    Name = "Buffs"
})

Items:AddButton({
	Name = "Use All Buffs [no potions and Marshmallow Bee]",
	Callback = function()
local RedEx = {["Name"] = "Red Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(RedEx)
      
local BlueEx = {["Name"] = "Blue Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(BlueEx)
      
local Glitter = {["Name"] = "Glitter"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glitter)

local Glue = {["Name"] = "Glue"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glue)

local Oil = {["Name"] = "Oil"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Oil)

local Enzymes = {["Name"] = "Enzymes"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Enzymes)

local TDrink = {["Name"] = "Tropical TDrink"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(TDrink)
  	end    
})
Items:AddButton({
	Name = "Use Red Extract",
	Callback = function()
local Red = {["Name"] = "Red Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(RedEx)
	end
})
Items:AddButton({
	Name = "Use Blue Extract",
	Callback = function()
local BlueEx = {["Name"] = "Blue Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(BlueEx)
  	end 
})
Items:AddButton({
	Name = "Use Glitter",
	Callback = function()
local Glitter = {["Name"] = "Glitter"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glitter)
  	end    
})
Items:AddButton({
	Name = "Use Glue",
	Callback = function()
local Glue = {["Name"] = "Glue"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glue)
  	end    
})
Items:AddButton({
	Name = "Use Oil",
	Callback = function()
local Oil = {["Name"] = "Oil"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Oil)
  	end    
})
Items:AddButton({
	Name = "Use Enzymes",
	Callback = function()
local Enzymes = {["Name"] = "Enzymes"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Enzymes)
  	end    
})
Items:AddButton({
	Name = "Use Tropical Drink",
	Callback = function()
local TDrink = {["Name"] = "Tropical Drink"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(TDrink)
  	end    
})
Items:AddButton({
	Name = "Use Purple Potion",
	Callback = function()
local PP = {["Name"] = "Purple Potion"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(PP)
  	end    
})
Items:AddButton({
	Name = "Use Super Smoothie",
	Callback = function()
local SS = {["Name"] = "Super Smoothie"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(SS)
  	end    
})
Items:AddButton({
	Name = "Use Marshmallow Bee",
	Callback = function()
local Mbee = {["Name"] = "Marshmallow Bee"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Mbee)
  	end    
})


-- Mobs
Mobs:AddToggle({
    Name = "Kill Crab",
    Default = false,
    Callback = function(Value)
        shared.a5 = Value
        if shared.a5 then
            local cocopad = Instance.new("Part", game:GetService("Workspace"))
            cocopad.Name = "Coconut Part"
            cocopad.Anchored = true
            cocopad.Transparency = 0.5
            cocopad.Size = Vector3.new(6, 1, 6)
            cocopad.Position = Vector3.new(-307.52117919922, 105.91863250732, 467.86791992188)

            spawn(function()
                while shared.a5 do
                    shared.a11 = false
                    shared.a12 = false
                    local player = game.Players.LocalPlayer
                    local tweenService = game:GetService("TweenService")
                    local info = TweenInfo.new(0.1)
                
                    for _, collectible in pairs(workspace.Collectibles:GetChildren()) do
                        local distance = (collectible.Position - player.Character.HumanoidRootPart.Position).magnitude
                
                        if collectible.Transparency == 0 then 
                            if distance <= 8 then
                                local posX = collectible.Position.x
                                local posZ = collectible.Position.z
                
                                local targetCFrame = CFrame.new(posX, player.Character.HumanoidRootPart.Position.y, posZ)
                                local tween = tweenService:Create(player.Character.HumanoidRootPart, info, {CFrame = targetCFrame})
                                tween:Play()
                            end
                        end
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-307.52117919922, 110.91863250732, 467.86791992188)
                    task.wait(0.2)
                end
            end)
        else
            if workspace:FindFirstChild("Coconut Part") then
                workspace["Coconut Part"]:Destroy()
            end
        end
    end
})

Mobs:AddButton({
	Name = "Kill Commando Chick",
	Callback = function()
local Commandopad = Instance.new("Part", game:GetService("Workspace"))
Commandopad.Name = "Commando Part"
Commandopad.Anchored = true
Commandopad.Transparency = 1
Commandopad.Size = Vector3.new(10, 1, 10)
Commandopad.Position = Vector3.new(532.56, 68.1981, 162.801)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(532.56, 68.1981, 162.801)
  	end    
})
Mobs:AddButton({
	Name = "AFK Stump Snail",
	Callback = function()
local snail = Instance.new("Part", game:GetService("Workspace"))
snail.Name = "Coconut Part"
snail.Anchored = true
snail.Transparency = 1
snail.Size = Vector3.new(10, 1, 10)
snail.Position = Vector3.new(424.483276, 71.4255676, -174.810959, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.483276, 68.4255676, -174.810959, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.483276, 74.4255676, -174.810959, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
Mobs:AddButton({
	Name = "Kill Tunnel Bear",
	Callback = function()
local nigger = Instance.new("Part", game:GetService("Workspace"))
nigger.Name = "Tunnel Part"
nigger.Anchored = true
nigger.Transparency = 1
nigger.Size = Vector3.new(10, 1, 10)
nigger.Position = Vector3.new(469.095, 23.2665, -46.3918)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469.095, 7.2665, -46.3918)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469.095, 24.2665, -46.3918)
end
})
Mobs:AddToggle({
    Name = "Auto Kill Mondo Chick [In testing]",
    Default = false,
    Callback = function(assmore)
         getgenv().turnoff54 = assmore
         if turnoff54 == true then
    while turnoff54 == true do
                     
                             mondopition = game.Workspace.Monsters["Mondo Chick (Lvl 8)"].Head.Position
                             api.tween(0.3,CFrame.new(mondopition.x, mondopition.y + 30, mondopition.z)) game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40                        
                             end
                        else
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3

                        end
                        
end
})
Mobs:AddToggle({
    Name = "Kill Windy Bee",
    Callback = function(aa)
       getgenv().pon1 = aa
       if pon1 == true then
    while pon1 == true do wait(.3) for _,v in pairs(game.workspace.NPCBees:GetChildren()) do
      if v.Name == "Windy" then game.Players.LocalPlayer.Character.Humanoid.HipHeight = 35
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end end
 	local windymanoid = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in next, game.workspace.Particles:GetChildren() do
				for x in string.gmatch(v.Name, "Windy") do
					if string.find(v.Name, "Windy") then
						api.tween(1,CFrame.new(v.Position.x, v.Position.y, v.Position.z)) task.wait(1)
						api.tween(0.5, CFrame.new(v.Position.x, v.Position.y, v.Position.z)) task.wait(.5)
					end
				end
			end 
			for i,v in next, game.workspace.Particles:GetChildren() do
				for x in string.gmatch(v.Name, "Windy") do
                    task.wait() if string.find(v.Name, "Windy") then 
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 20 for i=1, 4 do windymanoid.CFrame = CFrame.new(v.Position+10, v.Position + 50, v.Position) task.wait(.3) 
                        end 
                    end
			task.wait(.1)
         end
        end end else game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3
         end end 
})
Mobs:AddToggle({
    Name = "Kill Viciuos Bee",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         if turnoff4 == true then
         while turnoff4 == true do
             wait()
			local vichumanoid = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in next, game.workspace.Particles:GetChildren() do
				for x in string.gmatch(v.Name, "Vicious") do
                    task.wait() if string.find(v.Name, "Vicious") then 
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 20 for i=1, 4 do vichumanoid.CFrame = CFrame.new(v.Position.x, v.Position.y + 20, v.Position.z) task.wait(.3) 
                        end 
                    end end
                end
			end
			task.wait(.1)
         
         else
             game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3
         end 
end})

Farm:AddButton({
	Name = "Collect Hidden Tokens!",
	Callback = function()
        for _, v in mapstore.Collectibles:GetChildren() do
            if v.Transparency ~= 0 then continue end
            local t = tick()
            repeat
                Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position + Vector3.new(0, 1, 0))
                task.wait()
            until tick() - t > 4 or v == nil
        end
  	end    
})

Farm:AddButton({
	Name = "Collect Hidden Stickers",
	Callback = function()
        togglestore.CollectHiddenStickers = value
  	end    
})

local Section = Webhook:AddSection({
    Name = "Honey Profit"
})

local webhookEnabled = false
local webhookURL = ""
local webhookInterval = 60
local initialHoney = 0

Webhook:AddToggle({
    Name = "Enable Webhook",
    Default = false,
    Callback = function(Value)
        webhookEnabled = Value
        if webhookEnabled then
            initialHoney = game.Players.LocalPlayer.CoreStats.Honey.Value
            sendWebhookUpdates()
        end
    end
})

Webhook:AddTextbox({
    Name = "Webhook URL",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        webhookURL = Value
    end
})

Webhook:AddSlider({
    Name = "Update Interval (seconds)",
    Min = 1,
    Max = 300,
    Default = 60,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "seconds",
    Callback = function(Value)
        webhookInterval = Value
    end    
})

function sendWebhookUpdates()
    spawn(function()
        while webhookEnabled do
            local player = game.Players.LocalPlayer
            local currentHoney = player.CoreStats.Honey.Value
            local honeyProfit = currentHoney - initialHoney
            local capacity = player.CoreStats.Capacity.Value
            local pollen = player.CoreStats.Pollen.Value
            
            local message = string.format(
                "Old Honey: %d\nNew Honey: %d\nHoney Profit: %d\n\nCapacity: %d\nPollen: %d",
                initialHoney, currentHoney, honeyProfit, capacity, pollen
            )
            
            local data = {
                ["content"] = message
            }
            
            local headers = {
                ["Content-Type"] = "application/json"
            }
            
            local success, response = pcall(function()
                return (syn and syn.request or http_request or request or HttpPost or http.request) {
                    Url = webhookURL,
                    Method = "POST",
                    Headers = headers,
                    Body = game:GetService("HttpService"):JSONEncode(data)
                }
            end)
            
            if success then
                print("Webhook sent successfully")
                print("Response:", response.Body)
            else
                print("Failed to send webhook")
                print("Error:", response)
            end
            
            wait(webhookInterval)
        end
    end)
end

-- AntiAfk Scripts
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(5.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,150,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,150,0,57)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,150,0,21)_b.Font=Enum.Font.Arial;_b.Text="RBScr1pts"
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=daaaaaaaaaa
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,150,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox Tried to kick you but we didnt let them kick you :D"wait(2)ab.Text="Status : Active"end)