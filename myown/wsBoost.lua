return function(s)
    _G.teleportDistance = s
    
    if not _G.wsbran then
    _G.wsbran=true
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    local userInputService = game:GetService("UserInputService")
    local runService = game:GetService("RunService")
    local camera = game.Workspace.CurrentCamera
    
    local movementKeys = {
        W = false,
        A = false,
        S = false,
        D = false
    }
    
    local function onKeyPress(input, gameProcessedEvent)
        if gameProcessedEvent then return end
        
        if input.KeyCode == Enum.KeyCode.W then
            movementKeys.W = true
        elseif input.KeyCode == Enum.KeyCode.A then
            movementKeys.A = true
        elseif input.KeyCode == Enum.KeyCode.S then
            movementKeys.S = true
        elseif input.KeyCode == Enum.KeyCode.D then
            movementKeys.D = true
        end
    end
    
    local function onKeyRelease(input, gameProcessedEvent)
        if gameProcessedEvent then return end
        
        if input.KeyCode == Enum.KeyCode.W then
            movementKeys.W = false
        elseif input.KeyCode == Enum.KeyCode.A then
            movementKeys.A = false
        elseif input.KeyCode == Enum.KeyCode.S then
            movementKeys.S = false
        elseif input.KeyCode == Enum.KeyCode.D then
            movementKeys.D = false
        end
    end
    
    local function onUpdate()
        local moveVector = Vector3.new(0, 0, 0)
        
        if movementKeys.W then
            moveVector = moveVector + camera.CFrame.LookVector
        end
        if movementKeys.S then
            moveVector = moveVector - camera.CFrame.LookVector
        end
        if movementKeys.A then
            moveVector = moveVector - camera.CFrame.RightVector
        end
        if movementKeys.D then
            moveVector = moveVector + camera.CFrame.RightVector
        end
        
        -- Normalize the movement vector to maintain consistent speed
        if moveVector.Magnitude > 0 then
            moveVector = moveVector.Unit
            -- Flatten the movement vector to ignore vertical movement
            moveVector = Vector3.new(moveVector.X, 0, moveVector.Z).Unit
            local newPosition = humanoidRootPart.Position + moveVector * _G.teleportDistance
            -- Preserve the character's current orientation
            humanoidRootPart.CFrame = CFrame.new(newPosition, newPosition + humanoidRootPart.CFrame.LookVector)
        end
    end
    
    repeat task.wait() until game:IsLoaded()
    userInputService.InputBegan:Connect(onKeyPress)
    userInputService.InputEnded:Connect(onKeyRelease)
    runService.RenderStepped:Connect(onUpdate)
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        userInputService.InputBegan:Connect(onKeyPress)
        userInputService.InputEnded:Connect(onKeyRelease)
        runService.RenderStepped:Connect(onUpdate)
    end)
    end
    end