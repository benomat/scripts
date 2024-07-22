window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("bloxburg")
tab=window:CreateTab("Main")
MISCTAB=window:CreateTab("Misc")

local LocalPlayer = game.Players.LocalPlayer

tab:CreateSection("FARM $$$")
tab:CreateKeybind("Hair Studio Farm","H",false,function()
    kHC = {}
    kHS = {}
    kHC["Hot pink"] = "Pink"
    kHC["Bright blue"] = "Blue"
    kHC["Lime green"] = "Green"
    kHC["Gold"] = "Blonde"
    kHC["Black"] = "Black"
    kHC["Crimson"] = "Red"
    kHC["Burnt Sienna"] = "Brown"
    kHC["Pearl"] = "Gray"
    kHS["47963332"] = "Bun"
    kHS["31309506"] = "Curly"
    kHS["74878559"] = "Charming"
    kHS["16627529"] = "Sideswept"
    kHS["11412443"] = "Afro"
    kHS["26400959"] = "Messy"
    kHS["82186393"] = "Pigtails"
    kHS["13332444"] = "Combed"
    kHS["13070796"] = "Headband"
    kHS["19999424"] = "Long"
    lp=game.Players.LocalPlayer
    for _,v in pairs(game.workspace.Environment.Locations.StylezHairStudio.HairdresserWorkstations:GetChildren()) do
        if tostring(v.InUse.Value)==lp.Name then
            workstation=v
        end
    end
    lp.CameraMode=Enum.CameraMode.LockFirstPerson
    wait(3)
    function cycleStyle() 
        oldPos = workstation.Mirror.CFrame
        local cameraCFrame = game.workspace.CurrentCamera.CFrame
        local cameraPosition = cameraCFrame.Position
        local cameraRotation = cameraCFrame - cameraPosition
        local forwardVector = cameraRotation.LookVector
        local rightVector = cameraRotation.RightVector
        local upVector = cameraRotation.UpVector
        local newPos = cameraPosition + (forwardVector * 2) - (rightVector * 1.6) - (upVector * 1)
        local newCFrame = CFrame.new(newPos) * cameraRotation * CFrame.Angles(0, math.rad(270), 0)
        workstation.Mirror.CFrame = newCFrame
        wait()
        mouse1click()
        wait()
        workstation.Mirror.CFrame = oldPos
    end
    function cycleColor()
        oldPos = workstation.Mirror.CFrame
        local cameraCFrame = game.workspace.CurrentCamera.CFrame
        local cameraPosition = cameraCFrame.Position
        local cameraRotation = cameraCFrame - cameraPosition
        local forwardVector = cameraRotation.LookVector
        local rightVector = cameraRotation.RightVector
        local upVector = cameraRotation.UpVector
        local newPos = cameraPosition + (forwardVector * 2) - (rightVector * 1.6) - (upVector * -.6)
        local newCFrame = CFrame.new(newPos) * cameraRotation * CFrame.Angles(0, math.rad(270), 0)
        workstation.Mirror.CFrame = newCFrame
        wait()
        mouse1press()
        wait()
        mouse1release()
        wait()
        workstation.Mirror.CFrame = oldPos
    end
    function submitHaircut() 
        local oldPos = workstation.Mirror.CFrame
        local cameraCFrame = game.workspace.CurrentCamera.CFrame
        local cameraPosition = cameraCFrame.Position
        local cameraRotation = cameraCFrame - cameraPosition
        local forwardVector = cameraRotation.LookVector
        local rightVector = cameraRotation.RightVector
        local upVector = cameraRotation.UpVector
        local newPos = cameraPosition + (forwardVector * 2) - (upVector * -1.65)
        local newCFrame = CFrame.new(newPos) * cameraRotation * CFrame.Angles(0, math.rad(270), 0)
        workstation.Mirror.CFrame = newCFrame
        wait()
        mouse1click()
        wait()
        wait(.5)
        workstation.Mirror.CFrame = oldPos
    end
    function getHC()
        if tostring(workstation.HairdresserDummy.Hair.BrickColor)=="Medium stone grey" then return "Black"
        else return kHC[tostring(workstation.HairdresserDummy.Hair.BrickColor)] end
    end
    function getStyle()
        if string.sub(workstation.HairdresserDummy.Hair.Mesh.MeshId, -9, -9)=="/" then return "Afro" 
        else return kHS[string.sub(workstation.HairdresserDummy.Hair.Mesh.MeshId, -8)] end
    end
    function getOrder()
        for _,v in pairs(game.workspace._game.SpawnedCharacters:GetChildren()) do
            if v.Name=="StylezHairStudioCustomer" and v.HumanoidRootPart.CFrame==CFrame.new(862.600037, 13.499999, 175.999786, -1, 0, 0, 0, 1, 0, 0, 0, -1) then
                return v.Order.Style.Value,v.Order.Color.Value
            end
        end
        return false,false
    end
    repeat wait() until getOrder()
    getgenv().farmiiii=not getgenv().farmiiii
    while getgenv().farmiiii do
        pcall(function()
        while color~=getHC() do
            cycleColor()
            wait(.1)
            style,color=getOrder()
        end
        while style~=getStyle() do
        cycleStyle()
        wait(.1)
        style,color=getOrder()
        end
    submitHaircut()
    repeat task.wait() until getOrder()
    end)
    end
    lp.CameraMode = Enum.CameraMode.Classic
end)
tab:CreateParagraph("How to use","1. Enter the job\n2. Go to the first workstation on the right\n3. Change the hair yourself once (just click it)\n4. Press the keybind (also press to disable)\nalso dont have any gui in the middle of your screen, that would block the clicks\n--- join the discord server in misc to request features to be added ---")
tab:CreateParagraph("Solara info","If youre on solara and NOT wave you gotta use an autoclicker while farming because solaras mouse1click() function is really weird for some reason\nI would really appreciate if someone could tell me a better way to handle this")
tab:CreateDropdown(
    "Animation pack",
    {"Vampire", "Hero", "ZombieClassic", "Cowboy", "Patrol", "Bold", "ZombieFE", "Princess", "Popstar", "Sneaky", "Toy", "Knight", "Confident", "Ghost", "Elder", "Levitation", "Mage", "Astronaut", "Ninja", "Werewolf", "Cartoon", "Pirate"},
    "Select",
    false,
    function(opt)
       getgenv().animchanger=erm(opt)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/a'))()
end)

-- tab:CreateSection("you dont need this")
-- tab:CreateButton("Load Open Aimbot",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua'))()end)
-- tab:CreateButton("Load Dex",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua'))()end)

-- wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
-- MISCTAB:CreateSlider("CFrame Speed",{0, 12},1,"boost",0,function(v) wsBoost(v/40) end)
-- MISCTAB:CreateLabel("^^ Kicks you if you walk long distances with high speed")
MISCTAB:CreateButton("Rejoin Server", function() loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("wont even put my credits on dis one")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() getgenv().wsbran=false end)
