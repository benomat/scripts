window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Specter 1")
tab=window:CreateTab("Main")
ghosttab=window:CreateTab("Ghost")
MISCTAB=window:CreateTab("Misc")

function erm(t)
    return t[1]
end

tab:CreateSection("Completion stuff")
tab:CreateButton("Enable Fullbright",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/paste/fbenable.lua'))()end)
tab:CreateButton("Toggle all doors",function()
    local oldpos=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for _,door in pairs(game.Workspace.House.Doors:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=door.Door.CFrame
        wait(.2)
        game:GetService("ReplicatedStorage").Door:FireServer(door)
        wait(.2)
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos
end)
tab:CreateButton("Complete Bone",function()
    local oldpos=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=workspace.House.Bone.CFrame
    wait(.3)
    game:GetService("ReplicatedStorage").ReportEvidence:FireServer(workspace.House.Bone)
    wait(.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos
end)
tab:CreateButton("Complete Water",function()
    local oldpos=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for _, water in pairs(workspace.House.Waters:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=water.CFrame
        wait(.3)
        game:GetService("ReplicatedStorage").ReportEvidence:FireServer(water)
        wait(.5)
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos
end)
tab:CreateButton("Find Room (Equip and enable emf before)",function()
    for _, room in pairs(game.Workspace.House.Rooms:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=room.Hitbox.CFrame* CFrame.new(0, -3, 0)
        wait(.7)
        if game.Players.LocalPlayer.Character["EMF Reader"].L2.Color ~=Color3.fromRGB(91, 93, 105) then
            local settings = {
                Color = Color3.fromRGB(186, 0, 223),
                Size = 15,
                Transparency = 1, -- 1 Visible - 0 Not Visible
                AutoScale = false
            }
            
            local space = game:GetService("Workspace")
            local player = game:GetService("Players").LocalPlayer
            local camera = space.CurrentCamera
            
            local function NewText(color, size, transparency)
                local text = Drawing.new("Text")
                text.Visible = false
                text.Text = ""
                text.Position = Vector2.new(0, 0)
                text.Color = color
                text.Size = size
                text.Center = true
                text.Transparency = transparency
                return text
            end
            
            local function Visibility(state, lib)
                for u, x in pairs(lib) do
                    x.Visible = state
                end
            end
            
            local function Size(size, lib)
                for u, x in pairs(lib) do
                    x.Size = size
                end
            end
            
            local library = {
                name = NewText(settings.Color, settings.Size, settings.Transparency)
            }
            local function ESP()
                game:GetService("RunService").RenderStepped:Connect(function()
                    local HumanoidRootPart_Pos, OnScreen = camera:WorldToViewportPoint(room.Hitbox.Position)
                    if OnScreen then
                        library.name.Text = "Room"
                        library.name.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y)
                        --// AutoScale
                        if settings.AutoScale then
                            local distance = (Vector3.new(camera.CFrame.X, camera.CFrame.Y, camera.CFrame.Z) - room.Hitbox.Position).magnitude
                            local textsize = math.clamp(1/distance*1000, 2, 30) -- 2 is min text size, 30 is max text size, change to your liking
                            Size(textsize, library)
                        else 
                            Size(settings.Size, library)
                        end
                        --//--
                        Visibility(true, library)
                    else 
                        Visibility(false, library)
                    end
                end)
            end
            coroutine.wrap(ESP)()    
            break
        end -- emfs blabla
    end
end)
tab:CreateButton("Goto Van",function()game.Players.LocalPLayer.Character.CFrame=workspace:WaitForChild("Van").PrimaryPart.CFrame end)
-- fling=loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/paste/fling.lua'))()
-- tab:CreateButton("Fling all",function()fling("All")end)
-- tab:CreateSection("uhhh")
-- tab:CreateButton("Load Dex",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua'))()end)
-- tab:CreateButton("Load Simple Spy",function()loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()end)
-- tab:CreateButton("Respawn",function()game.Players.LocalPlayer.Character.Head:Destroy()end)

ghosttab:CreateSection("Ghost stuff")
ghosttab:CreateButton("Ghost esp",function()
    local settings = {
        Color = Color3.fromRGB(255, 0, 0),
        Size = 15,
        Transparency = 1, -- 1 Visible - 0 Not Visible
        AutoScale = false
    }
    
    local space = game:GetService("Workspace")
    local camera = space.CurrentCamera
    
    local function NewText(color, size, transparency)
        local text = Drawing.new("Text")
        text.Visible = false
        text.Text = ""
        text.Position = Vector2.new(0, 0)
        text.Color = color
        text.Size = size
        text.Center = true
        text.Transparency = transparency
        return text
    end
    
    local function Visibility(state, lib)
        for u, x in pairs(lib) do
            x.Visible = state
        end
    end
    
    local function Size(size, lib)
        for u, x in pairs(lib) do
            x.Size = size
        end
    end
    local ghost=game.Workspace.GhostModel
    
    local library = {
        name = NewText(settings.Color, settings.Size, settings.Transparency)
    }
    local function ESP()
        game:GetService("RunService").RenderStepped:Connect(function()
            if ghost ~= nil and ghost:FindFirstChild("Humanoid") ~= nil and ghost:FindFirstChild("HumanoidRootPart") ~= nil then
                local HumanoidRootPart_Pos, OnScreen = camera:WorldToViewportPoint(ghost.HumanoidRootPart.Position)
                if OnScreen then
                    library.name.Text = "Ghost"
                    library.name.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y)
                    --// AutoScale
                    if settings.AutoScale then
                        local distance = (Vector3.new(camera.CFrame.X, camera.CFrame.Y, camera.CFrame.Z) - ghost.HumanoidRootPart.Position).magnitude
                        local textsize = math.clamp(1/distance*1000, 2, 30) -- 2 is min text size, 30 is max text size, change to your liking
                        Size(textsize, library)
                    else 
                        Size(settings.Size, library)
                    end
                    --//--
                    Visibility(true, library)
                else 
                    Visibility(false, library)
                end
            end
        end)
    end
    coroutine.wrap(ESP)()    
end)
ghosttab:CreateToggle("Ghost Visibility",false,function()
    game.Workspace.GhostModel.HumanoidRootPart.Transparency=0
end)





wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
MISCTAB:CreateSlider("Speed",{6, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateSlider("CFrame Speed",{0, 25},1,"boost",0,function(v) wsBoost(v/30) end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
