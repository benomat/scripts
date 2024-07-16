

local services = {
    Lighting = game:GetService("Lighting"),
    Workspace = game:GetService("Workspace"),
    Players = game:GetService("Players"),
    HttpService = game:GetService("HttpService")
}

local LocalPlayer = services.Players.LocalPlayer
local icons = {"rbxassetid://6022668888", "rbxassetid://6023426915"}

local locations = {
    ghostRoom = function()
        return services.Workspace.emfpart2.CFrame
    end,
    van = function()
        return services.Workspace.Van.Spawn.CFrame
    end,
    closetFamilyHome = function()
        return CFrame.new(459.5122985839844, 6.265266418457031, -24.511207580566406)
    end,
    closetHideout = function()
        return CFrame.new(1761.3792724609375, -2.207547187805176, -140.32106018066406)
    end,
    closetSafehouse = function()
        return CFrame.new(984.469482421875, 9.692434310913086, -104.7901382446289)
    end,
    closetAsylum = function()
        return CFrame.new(1052.380859375, 24.192420959472656, -1046.205322265625)
    end
}

-- Define functionality
local callbacks = {
    setSpeed = function(speed)
        LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end,
    setBrightness = function(brightness)
        services.Lighting.Brightness = brightness
    end,
    setDaytime = function()
        services.Lighting:SetMinutesAfterMidnight(720)
    end,
    destroyDoors = function()
        local doors = services.Workspace.Map:FindFirstChild("Doors")
        if doors then --wrap in if statement just in case clicked more than once
            doors:Destroy()
        end
    end,
    createTeleport = function(location)
        return function()
            LocalPlayer.Character.HumanoidRootPart.CFrame = location()
        end
    end
}

-- Get the Flux UI library, load it, and execute it
local Flux = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt"))()
local window = Flux:Window("specterhaxx", "beta", Color3.fromRGB(255,110,48))

-- Create the tabs of the window
local tabs = {
    main = window:Tab("Main", icons[2]),
    teleports = window:Tab("Teleports", icons[2]),
    evidence = window:Tab("Evidence", icons[1]),
    cursedItems = window:Tab("Cursed Items", icons[1]),
    credits = window:Tab("Credits", icons[1])
}

tabs.main:Slider("Speed", "Makes you go faster!", 16, 250, 16, callbacks.setSpeed)
tabs.main:Slider("Brightness", "Makes the game more bright.", 1, 250, 1, callbacks.setBrightness)
tabs.main:Button("Make it day", "Changes it from night to day time.", callbacks.setDaytime)
tabs.main:Button("Delete all Doors", "Deletes all doors.", callbacks.destroyDoors)
tabs.teleports:Button("Teleport to Ghost Room", "Teleports you to the ghost room.", callbacks.createTeleport(locations.ghostRoom))
tabs.teleports:Button("Teleport to Van", "Teleports you to the van.", callbacks.createTeleport(locations.van))
tabs.teleports:Button("Teleport to Closet - Family Home", "Teleports you to a closet in the map Family Home.", callbacks.createTeleport(locations.closetFamilyHome))
tabs.teleports:Button("Teleport to Closet - Hideout", "Teleports you to a closet in the map Hideout.", callbacks.createTeleport(locations.closetHideout))
tabs.teleports:Button("Teleport to Closet - Safehouse", "Teleports you to a closet in the map Safehouse.", callbacks.createTeleport(locations.closetSafehouse))
tabs.teleports:Button("Teleport to Closet - Asylum", "Teleports you to a closet in the map Asylum.", callbacks.createTeleport(locations.closetAsylum))
tabs.evidence:Label("If ghost orbs or fingerprints appear, it will appear here!")
tabs.credits:Label("cloudvity on v3rmillion.net - owner and developer")
tabs.credits:Label("Article#6898 - developer")