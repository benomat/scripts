--[[

Made by griffin
Discord: @griffindoescooking
Github: https://github.com/idonthaveoneatm

]]--

if identifyexecutor() == "Solara" then
    print("loading Solara version instead of normal")
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/lua/normal/games/PetSimulator99/SolaraVersion.lua"))()
end

print("Pet Simulator 99 | griffindoescooking")
getgenv().griffinVersion = "3.0.0"

repeat
    task.wait()
until game:IsLoaded()
if game.PlaceId ~= 8737899170 and game.PlaceId ~= 16498369169 and game.PlaceId ~= 17503543197 then
    game.Players.LocalPlayer:Kick("wrong game")
end

-- Compatibility Check

local function checkFunctions()
    local functionNames = ""
    if not isfile then
        functionNames = functionNames.."isfile "
    end
    if not writefile then
        functionNames = functionNames.."writefile "
    end
    if not readfile then
        functionNames = functionNames.."readfile "
    end
    if not isfolder then
        functionNames = functionNames.."isfolder "
    end
    if not makefolder then
        functionNames = functionNames.."makefolder "
    end
    if not cloneref then
        functionNames = functionNames.."cloneref "
    end
    if not setclipboard then
        functionNames = functionNames.."setclipboard "
    end
    if not identifyexecutor then
        functionNames = functionNames.."identifyexecutor "
    end
    return functionNames
end

local missingFunctions = checkFunctions()
if missingFunctions ~= "" then
    return error("Missing: "..missingFunctions)
end

-- Variables

local VirtualUser = cloneref(game:GetService("VirtualUser"))
local HttpService = cloneref(game:GetService("HttpService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local Workspace = cloneref(game:GetService("Workspace"))
local Players = cloneref(game:GetService("Players"))

local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local Client = require(ReplicatedStorage.Library.Client)
local Network = require(ReplicatedStorage.Library.Client.Network)

local LocalPlayer = Players.LocalPlayer
local HumanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart", true)
local Things = Workspace["__THINGS"]
local Instances = Things.Instances
local instanceContainer = Things["__INSTANCE_CONTAINER"]
local Lootbags = Things.Lootbags
local Orbs = Things.Orbs
local Breakables = Things.Breakables
local selectedEgg = ""

local function getMap()
    local rValue
    for _,map in ipairs(Workspace:GetChildren()) do
        if map.Name:find("Map") then
            rValue = map
            break
        end
    end
    return rValue
end

local Map
if getMap() then
    Map = getMap()
else
    task.spawn(function()
        repeat
            task.wait()
        until getMap()
        Map = getMap()
    end)
end

getgenv().griffindoescooking = false
getgenv().griffindoescooking = true

-- Configuration File

getgenv().config = getgenv().config
local isFirstTime = false
local configTemplate = {
    farmSettings = {
        breakObjects = false,
        singleTarget = false,
        breakRadius = 70,
        waitTime = 0.2,
        amountOfPets = 1,
        petsPerBreakable = 1,
        sendPets = false,
        fastPetSpeed = false,
        buyZones = false,
        stayInMaxZone = false,
        collectOrbsAndLootbags = false,
    },
    eggSettings = {
        openEggs = false,
        openAmount = 1
    },
    rewardSettings = {
        collectTimeRewards = false,
        collectSpinnerTicket = false,
        teleportAndStay = false
    },
    miscSettings = {
        antiAFK = false,
        stairwayToHeaven = false
    }
}
if not isfolder("griffins configs") then
    isFirstTime = true
    makefolder("griffins configs")
else
    isFirstTime = false
end
if not isfile("griffins configs/8737899170.config") then
    isFirstTime = true
    writefile("griffins configs/8737899170.config", "")
else
    isFirstTime = false
end
if isFirstTime then
    writefile("griffins configs/8737899170.config", HttpService:JSONEncode(configTemplate))
end
local function updateConfig()
    writefile("griffins configs/8737899170.config", HttpService:JSONEncode(getgenv().config))
end

getgenv().config = HttpService:JSONDecode(readfile("griffins configs/8737899170.config"))

-- Tables

getgenv().coinQueue = {} -- needs to be global to clear it on reexecute
local PS99Info = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/lua/normal/games/PetSimulator99/table/"..Map.Name..".lua"))()

local worlds = PS99Info.Worlds
local vendingMachines = PS99Info.VendingMachines
local rewards = PS99Info.Rewards
local otherMachines = PS99Info.OtherMachines
local minigames = PS99Info.Minigames
local eggs = PS99Info.Eggs

-- Misc Functions

local function getNames(tbl)
    local returnTable = {}
    for _,info in tbl do
        if typeof(info) == "table" then
            table.insert(returnTable, info.Name)
        elseif typeof(info) == "string" then
            table.insert(returnTable, info)
        end
    end
    return returnTable
end
local function findInTable(tbl, name)
    for index,info in tbl do
        if typeof(info) == "table" and info.Name == name then
            return tbl[index]
        elseif typeof(info) == "string" and info == name then
            return tbl[index]
        end
    end
    return nil
end
local function Fire(name, args)
    Network.Fire(name, unpack(args))
end
local function Invoke(name, args)
    Network.Invoke(name, unpack(args))
end
local function XZDist(obj1, obj2)
    local PosX1, PosZ1 = obj1.CFrame.X, obj1.CFrame.Z
    local PosX2, PosZ2 = obj2.CFrame.X, obj2.CFrame.Z
    return math.sqrt(math.pow(PosX1 - PosX2, 2) + math.pow(PosZ1 - PosZ2, 2))
end
local function clickPosition(x,y)
    VirtualUser:Button1Down(Vector2.new(x,y))
    VirtualUser:Button1Up(Vector2.new(x,y))
end
local function goTo(coord)
    if typeof(coord) == "CFrame" then
        LocalPlayer.Character:PivotTo(coord)
    else
        coord = CFrame.new(coord.X,coord.Y,coord.Z)
        goTo(coord)
    end
end
local function waitFor(path, object, bool)
    bool = bool or false
    repeat
        task.wait()
    until path:FindFirstChild(object, bool)
    return path:FindFirstChild(object, bool)
end
local function checkActive(name)
    if not instanceContainer.Active:FindFirstChild(name) then
        goTo(Instances[name]:FindFirstChild("Enter", true).CFrame)
    end
end
local function completeObby(obbyInfo)
    if typeof(obbyInfo) ~= "table" then
        return error("Not a table")
    end
    if typeof(obbyInfo.StartLine) ~= "CFrame" then
        if obbyInfo.StartLine:IsA("Model") then
            obbyInfo.StartLine = obbyInfo.StartLine:FindFirstChild("Part").CFrame
        else
            obbyInfo.StartLine = obbyInfo.StartLine.CFrame
        end
    end
    if typeof(obbyInfo.EndPad) ~= "CFrame" then
        obbyInfo.EndPad = obbyInfo.EndPad.CFrame
    end

    goTo(obbyInfo.StartLine + Vector3.new(0,3,0))
    task.wait(0.5)

    local common = require(instanceContainer.Active:FindFirstChild(obbyInfo.Name):FindFirstChild("Common", true))
    common.WinTimer = 0

    goTo(obbyInfo.EndPad + Vector3.new(0,3,0))
end
local function findNearestBreakable()
    local nearestBreakable
    local nearestDistance = 9e9
    for _, breakable in ipairs(Breakables:GetChildren()) do
        if breakable:FindFirstChildWhichIsA("MeshPart") then
            local meshPart = breakable:FindFirstChildWhichIsA("MeshPart")
            local distance = (HumanoidRootPart.Position - meshPart.Position).magnitude
            if distance < nearestDistance then
                nearestBreakable = breakable
                nearestDistance = distance
            end
        end
    end
    return nearestBreakable
end
local function isBreakableInRadius(breakable)
    if breakable:FindFirstChild("Hitbox", true) and XZDist(breakable:FindFirstChild("Hitbox", true), HumanoidRootPart) <= config.farmSettings.breakRadius then
        return true
    end
    return false
end
local function getBreakables()
    local rTable = {}
    for _, breakable in ipairs(Breakables:GetChildren()) do
        if breakable:FindFirstChildWhichIsA("MeshPart") then
            local meshPart = breakable:FindFirstChildWhichIsA("MeshPart")
            local distance = (HumanoidRootPart.Position - meshPart.Position).magnitude
            table.insert(rTable, {
                Breakable = breakable,
                Distance = distance
            })
        end
    end
    table.sort(rTable, function(a,b)
        return a.Distance < b.Distance
    end)
    return rTable
end
local function getNearestBreakables(amount)
    local breakables = getBreakables()
    local rTable = {}
    for i=1, amount do
        table.insert(rTable, breakables[i].Breakable)
    end
    return rTable
end
local function getPets()
    local petTable = {}
    for _,pet in Client.PlayerPet:GetAll() do
        if pet.owner and pet.owner == LocalPlayer then
            table.insert(petTable, pet)
        end
    end
    return petTable
end
local function getMaxPetsEquipped()
    return Client.Save.GetSaves()[LocalPlayer].MaxPetsEquipped
end
local function sendPetsToTargets(amountSending, amountPerBreakable)
    local pets = getPets()
    if amountSending > #pets then
        amountSending = #pets
    end
    if amountPerBreakable > #pets then
        amountPerBreakable = #pets
    end
    local amountOfBreakables = 0
    local tempValue = amountSending
    repeat
        task.wait()
        tempValue -= amountPerBreakable
        amountOfBreakables += 1
    until tempValue <= 0
    
    local targets = getNearestBreakables(amountOfBreakables)

    local currentPet = 0
    for i=1,#targets do
        if currentPet == amountSending then
            break
        end
        local target = targets[i]
        for _=1, amountPerBreakable do
            currentPet += 1
            if not target or currentPet > amountSending then
                continue
            end
            Client.PlayerPet.SetTarget(pets[currentPet], target)
        end
        Fire("Breakables_PlayerDealDamage", {target})
        task.wait(0.2)
    end
    return targets
end

-- Looped Functions

local doingQueue = false
local farmBreakablesDebounce = false
local farmBreakablesWithPetsDebounce = false
local collectLootbagsDebounce = false
local collectOrbsDebounce = false
local buyZonesDebounce = false
local stayInMaxZoneDebounce = false
local farmEggsDebounce = false
local collectTimeRewardsDebounce = false
local collectStarterWheelTicketDebounce = false
local antiAFKDebounce = false

local function farmBreakables()
    if config.farmSettings.breakObjects and not farmBreakablesDebounce then
        farmBreakablesDebounce = true
        local breakable = findNearestBreakable()
        if config.farmSettings.singleTarget then
            repeat
                task.wait(config.farmSettings.waitTime)
                Fire("Breakables_PlayerDealDamage", {breakable.Name})
            until not Breakables:FindFirstChild(breakable.Name) or not isBreakableInRadius(breakable) or not config.farmSettings.breakObjects or not config.farmSettings.singleTarget
        else
            if not table.find(coinQueue, breakable.Name) then
                table.insert(coinQueue, breakable.Name)
                task.spawn(function()
                    repeat
                        task.wait()
                    until not Breakables:FindFirstChild(breakable) or not isBreakableInRadius(breakable) or config.farmSettings.singleTarget or not config.farmSettings.breakObjects
                    table.remove(coinQueue, table.find(coinQueue, breakable))
                end)
            end
            task.spawn(function()
                if not doingQueue then
                    doingQueue = true
                    for _,currentCoin in ipairs(coinQueue) do
                        Fire("Breakables_PlayerDealDamage", {currentCoin})
                        task.wait(config.farmSettings.waitTime)
                    end
                    doingQueue = false
                end
            end)
        end
        farmBreakablesDebounce = false
    end
end
local function farmBreakablesWithPets()
    if config.farmSettings.sendPets and not farmBreakablesWithPetsDebounce then
        farmBreakablesWithPetsDebounce = true
        local breakables = sendPetsToTargets(config.farmSettings.amountOfPets, config.farmSettings.petsPerBreakable)
        repeat
            for _,breakable in breakables do
                if not Breakables:FindFirstChild(breakable.Name) then
                    table.remove(breakables, table.find(breakables, breakable))
                end
            end
            task.wait()
        until #breakables <= 0
        farmBreakablesWithPetsDebounce = false
    end
end
local function collectLootbags()
    if config.farmSettings.collectOrbsAndLootbags and not collectLootbagsDebounce then
        collectLootbagsDebounce = true
        local lootbags = {}
        for _, lootbag in ipairs(Lootbags:GetChildren()) do
            if not config.farmSettings.collectOrbsAndLootbags then break end
            lootbags[lootbag.Name] = lootbag.Name
            lootbag:Destroy()
        end
        Fire("Lootbags_Claim", {lootbags})
        collectLootbagsDebounce = false
    end
end
local function collectOrbs()
    if config.farmSettings.collectOrbsAndLootbags and not collectOrbsDebounce then
        collectOrbsDebounce = true
        local orbs = {}
        for _, orb in ipairs(Orbs:GetChildren()) do
            if not config.farmSettings.collectOrbsAndLootbags then break end
            table.insert(orbs, tonumber(orb.Name))
            orb:Destroy()
        end
        Fire("Orbs: Collect", {orbs})
        collectOrbsDebounce = false
    end
end
local function buyZones()
    if config.farmSettings.buyZone and not buyZonesDebounce then
        buyZonesDebounce = true
        local nextZone = Client.ZoneCmds.GetNextZone()
        Invoke("Zones_RequestPurchase", {nextZone})
        buyZonesDebounce = false
    end
end
local function stayInMaxZone()
    if config.farmSettings.stayInMaxZone and not stayInMaxZoneDebounce then
        stayInMaxZoneDebounce = true
        local maxOwnedZone = Client.ZoneCmds.GetMaxOwnedZone()
        local worldWithNumbers
        for _,world in getNames(worlds) do
            local split = string.split(world, " | ")[2]
            if split == maxOwnedZone then
                worldWithNumbers = world
                break
            end
        end
        local farmPart = findInTable(worlds, worldWithNumbers).FarmPart
        goTo(farmPart + Vector3.new(0,3,0))
        task.wait(0.2)
        stayInMaxZoneDebounce = false
    end
end
local function farmEggs()
    if config.eggSettings.openEggs and not farmEggsDebounce then
        farmEggsDebounce = true
        local splitName = string.split(selectedEgg, " | ")
        Invoke("Eggs_RequestPurchase",{splitName[2], config.eggSettings.openAmount})
        task.wait(0.4)
        repeat
            task.wait()
            clickPosition(math.huge,math.huge)
        until not Workspace.Camera:FindFirstChild("Eggs") or not config.eggSettings.openEggs
        task.wait(0.75)
        farmEggsDebounce = false
    end
end
local function collectTimeRewards()
    if config.rewardSettings.collectTimeRewards and not collectTimeRewardsDebounce then
        collectTimeRewardsDebounce = true
        for i=1,12 do
            Invoke("Redeem Free Gift", {i})
        end
        collectTimeRewardsDebounce = false
    end
end
local function collectStarterWheelTicket()
    if config.rewardSettings.collectSpinnerTicket and not collectStarterWheelTicketDebounce then
        collectStarterWheelTicketDebounce = true
        Fire("Spinny Wheel: Request Ticket", {"StarterWheel"})
        collectStarterWheelTicketDebounce = false
    end
end
local function antiAFK()
    if config.miscSettings.antiAFK and not antiAFKDebounce then
        antiAFKDebounce = true
        LocalPlayer.Character.Humanoid:ChangeState(3)
        task.wait(math.random(120,180))
        antiAFKDebounce = false
    end
end
local function getFlags()
    local rTable = {}
    for i,v in pairs(Client.Save.GetSaves()[LocalPlayer].Inventory.Misc) do
        if typeof(v) == "table" and v.id:find("Flag") and v.id ~= "Flag Bundle" then
            table.insert(rTable, {
                id = v.id,
                uid = i,
                _am = v._am
            })
        end
    end
    return rTable
end
local function useFlag(name, amount)
    assert(amount, "amount required")
    local Flags = getFlags()
    local chosenFlag
    for _,flag in ipairs(Flags) do
        if flag.id == name then
            chosenFlag = flag
            break
        end
    end
    if chosenFlag._am < amount then
        return warn("amount too high: "..tostring(chosenFlag._am).."(has) < "..tostring(amount).."(requested)")
    end
    print("Attempting to use", name, "with uid of", chosenFlag.uid, "x", amount)
    for i=1,amount do
        Invoke("Flags: Consume", {chosenFlag.id, chosenFlag.uid})
        task.wait()
    end
    print("done")
end

-- Library/Main script

local quake = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/Libraries/normal/quake/src"))()
local main = quake:Window({
    Title = "Pet Simulator 99",
    isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
})

local farmingTab = main:Tab({
    Name = "Farming",
    tabColor = Color3.fromHex("#71d1f5"),
    Image = "rbxassetid://10709769841"
})
local eggTab = main:Tab({
    Name = "Eggs",
    tabColor = Color3.fromRGB(84, 177, 147),
    Image = "rbxassetid://10723345518"
})
local teleportsTab = main:Tab({
    Name = "Teleports",
    tabColor = Color3.fromHex("#9bf038"),
    Image = "rbxassetid://15555209580"
})
local minigamesTab = main:Tab({
    Name = "Minigames",
    tabColor = Color3.fromHex("#d19b4a"),
    Image = "rbxassetid://10723376114"
})
local rewardsTab = main:Tab({
    Name = "Rewards",
    tabColor = Color3.fromHex("#da0a48"),
    Image = "rbxassetid://10723396402"
})
local miscTab = main:Tab({
    Name = "Miscellaneous",
    tabColor = Color3.fromHex("#34d793"),
    Image = "rbxassetid://10709819149"
})
local creditsTab = main:Tab({
    Name = "Credits",
    Image = "rbxassetid://10747373176"
})

-- Farming

local legacyFarm = farmingTab:Group({
    Name = "Legacy Farming"
})
local legacyFarmCoins = legacyFarm:Toggle({
    Name = "Farm Coins",
    Default = config.farmSettings.breakObjects,
    Callback = function(value)
        config.farmSettings.breakObjects = value
        updateConfig()
        if not config.farmSettings.breakObjects then
            table.clear(coinQueue)
        end
    end
})
legacyFarm:Toggle({
    Name = "Single Target",
    Default = config.farmSettings.singleTarget,
    Callback = function(value)
        config.farmSettings.singleTarget = value
        updateConfig()
    end
})
local radiusSetter
radiusSetter = legacyFarm:TextBox({
    Name = "Radius (Recommended: 70)",
    Default = config.farmSettings.breakRadius,
    Callback = function(value)
        if value ~= "" or not tonumber(value) then
            --radiusSetter:SetInput("40")
            main:Notify({
                Title = "Radius Error",
                Duration = 20,
                Body = "You need the RADIUS to be a number. It is now 40"
            })
            return
        end
        config.farmSettings.breakRadius = tonumber(value)
        updateConfig()
    end
})
local waitSetter
waitSetter = legacyFarm:TextBox({
    Name = "Wait Time (Recommended: 0.2)",
    Default = config.farmSettings.waitTime,
    Callback = function(value)
        if value ~= "" or not tonumber(value) then
            --waitSetter:SetInput("0.2")
            main:Notify({
                Title = "Wait Time Error",
                Duration = 20,
                Body = "You need the WAIT TIME to be a number. It is now 0.2"
            })
            return
        end
        config.farmSettings.waitTime = tonumber(value)
        updateConfig()
    end
})
local petFarming = farmingTab:Group({
    Name = "Pet Farming"
})
petFarming:Slider({
    Name = "Amount of Pets to Send",
    InitialValue = getMaxPetsEquipped(),
    Min = 1,
    Max = getMaxPetsEquipped(),
    Step = 1,
    Callback = function(value)
        config.farmSettings.amountOfPets = value
        updateConfig()
    end
})
petFarming:Slider({
    Name = "Amount of Pets per Breakable",
    Min = 1,
    Max = getMaxPetsEquipped(),
    InitialValue = config.farmSettings.petsPerBreakable,
    Step = 1,
    Callback = function(value)
        config.farmSettings.petsPerBreakable = value
        updateConfig()
    end
})
petFarming:Toggle({
    Name = "Send Pets to Target",
    Default = config.farmSettings.sendPets,
    Callback = function(value)
        config.farmSettings.sendPets = value
        updateConfig()
        legacyFarmCoins:SetValue(false)
    end
})

local oldCalculateSpeedMultiplier
oldCalculateSpeedMultiplier = hookfunction(Client.PlayerPet.CalculateSpeedMultiplier, function(...)
    if config.farmSettings.fastPetSpeed then
        return 9e9
    end
    return oldCalculateSpeedMultiplier(...)
end)

farmingTab:Toggle({
    Name = "Fast Pet Speed",
    Default = config.farmSettings.fastPetSpeed,
    Callback = function(value)
        config.farmSettings.fastPetSpeed = value
        updateConfig()
    end
})
farmingTab:Toggle({
    Name = "Buy Next Zone",
    Default = config.farmSettings.buyZone,
    Callback = function(value)
        config.farmSettings.buyZone = value
        updateConfig()
    end
})
farmingTab:Toggle({
    Name = "Stay in Max Zone",
    Default = config.farmSettings.stayInMaxZone,
    Callback = function(value)
        config.farmSettings.stayInMaxZone = value
        updateConfig()
    end
})

farmingTab:Section("Collection")
local collectOrbsAndLootbags
collectOrbsAndLootbags = farmingTab:Toggle({
    Name = "Collect Orbs and Lootbags",
    Default = config.farmSettings.collectOrbsAndLootbags,
    Callback = function(value)
        config.farmSettings.collectOrbsAndLootbags = value
        updateConfig()
    end
})

-- Items

-- eta son

-- Eggs

eggTab:Label("You must be near eggs to hatch them")
eggTab:Dropdown({
    Name = "Egg to farm",
    Items = eggs,
    Multiselect = false,
    Callback = function(value)
        selectedEgg = value
        updateConfig()
    end
})
local amountOfEggs = eggTab:Slider({
    Name = "Amount of eggs",
    Max = 99,
    Min = 1,
    Callback = function(value)
        config.eggSettings.openAmount = value
        updateConfig()
    end
})
amountOfEggs:SetValue(config.eggSettings.openAmount)
eggTab:Toggle({
    Name = "Farm selected egg",
    Default = config.eggSettings.openEggs,
    Callback = function(value)
        config.eggSettings.openEggs = value
        updateConfig()
    end
})

-- Teleports

local selectedWorld
local goToZone
teleportsTab:Dropdown({
    Name = "Zones",
    Items = getNames(worlds),
    Multiselect = false,
    Callback = function(chosenWorld)
        selectedWorld = findInTable(worlds, chosenWorld)
        goToZone:SetName("Go to "..chosenWorld)
        goToZone:Unlock()
    end
})
goToZone = teleportsTab:Button({
    Name = "Go to none",
    Callback = function()
        goTo(selectedWorld.TeleportPart + Vector3.new(0,3,0))
    end
})
goToZone:Lock("Select a Zone")

teleportsTab:Section("Vending Machines")
local selectedVM
local goToVendingMachine
teleportsTab:Dropdown({
    Name = "Vending Machines",
    Items = getNames(vendingMachines),
    Multiselect = false,
    Callback = function(chosenVM)
        selectedVM = findInTable(vendingMachines, chosenVM)
        goToVendingMachine:SetName("Go to "..chosenVM)
        goToVendingMachine:Unlock()
    end
})
goToVendingMachine = teleportsTab:Button({
    Name = "Go to none",
    Callback = function()
        local vmWorld = findInTable(worlds, selectedVM.Location)

        goTo(vmWorld.TeleportPart + Vector3.new(0,50,0))
        waitFor(Map[vmWorld.Name]["PARTS_LOD"], "GROUND")
        local vendingPad = waitFor(Map[vmWorld.Name].INTERACT.Machines, selectedVM.Name).Pad.CFrame
        goTo(vendingPad)
    end
})
goToVendingMachine:Lock("Select Vending Machine")

teleportsTab:Section("Other Machines")
local selectedOM
local goToOtherMachine
teleportsTab:Dropdown({
    Name = "Other Machines",
    Items = getNames(otherMachines),
    Multiselect = false,
    Callback = function(chosenOM)
        selectedOM = findInTable(otherMachines, chosenOM)
        goToOtherMachine:SetName("Go to "..chosenOM)
        goToOtherMachine:Unlock()
    end
})
goToOtherMachine = teleportsTab:Button({
    Name = "Go to none",
    Callback = function()
        local omWorld = findInTable(worlds, selectedOM.Location)

        goTo(omWorld.TeleportPart + Vector3.new(0,50,0))
        waitFor(Map[omWorld.Name]["PARTS_LOD"], "GROUND")
        local vendingPad = waitFor(Map[omWorld.Name].INTERACT.Machines, selectedOM.Name).Pad.CFrame
        goTo(vendingPad)
    end
})
goToOtherMachine:Lock("Select Other Machine")

-- Minigames

local selectedMG
local goToMinigame
local completeMinigame

local nonLoopables = {}
for _, minigame in minigames do
    if not minigame.IsLoopable then
        table.insert(nonLoopables, minigame)
    end
end

minigamesTab:Dropdown({
    Name = "Select Minigame",
    Items = getNames(nonLoopables),
    Multiselect = false,
    Callback = function(chosenMG)
        selectedMG = chosenMG
        goToMinigame:SetName("Go to "..chosenMG)
        completeMinigame:SetName("Complete "..chosenMG)
        if not findInTable(minigames, selectedMG).HasCompletion then
            completeMinigame:Lock("There is no auto complete")
        else
            completeMinigame:Unlock()
        end
    end
})
goToMinigame = minigamesTab:Button({
    Name = "Go to none",
    Callback = function()
        goTo(Things.Instances[selectedMG]:FindFirstChild("Enter", true).CFrame)
    end
})
minigamesTab:Section("Auto Complete")
completeMinigame = minigamesTab:Button({
    Name = 'Complete none',
    Callback = function()
        checkActive(selectedMG)
        task.wait(1)
        local loadedMG = waitFor(instanceContainer.Active, selectedMG)
        task.wait(1)
        local minigameInfo = findInTable(minigames, selectedMG)

        if minigameInfo.CustomFunction then
            loadstring(minigameInfo.CustomFunction)()
        else
            completeObby({
                Name = selectedMG,
                StartLine = waitFor(loadedMG, "StartLine", true),
                EndPad = waitFor(loadedMG, "Goal", true).Pad
            })
        end
    end
})

getgenv().activeLoopedMinigame = ""

for _,minigame in minigames do
    if minigame.IsLoopable then
        local togglableMinigame
        togglableMinigame = minigamesTab:Toggle({
            Name = "Farm "..minigame.Name,
            Default = false,
            Callback = function(value)
                if value then
                    getgenv().activeLoopedMinigame = minigame.Name
                    task.spawn(loadstring(minigame.CustomFunction))
                    task.spawn(function()
                        repeat
                            task.wait()
                        until getgenv().activeLoopedMinigame ~= minigame.Name
                        togglableMinigame:SetValue(false)
                    end)
                else
                    getgenv().activeLoopedMinigame = ""
                end
            end
        })
    end
end

-- Rewards

local timeRewards = rewardsTab:Toggle({
    Name = 'Collect Time Rewards',
    Default = config.rewardSettings.collectTimeRewards,
    Callback = function(value)
        config.rewardSettings.collectTimeRewards = value
        updateConfig()
        if not config.farmSettings.collectOrbsAndLootbags then
            collectOrbsAndLootbags:SetValue(config.rewardSettings.collectTimeRewards)
        end
    end
})
rewardsTab:Toggle({
    Name = "Collect Spinner Ticket",
    Default = config.rewardSettings.collectSpinnerTicket,
    Callback = function(value)
        config.rewardSettings.collectSpinnerTicket = value
        updateConfig()
    end
})
rewardsTab:Section("Daily Rewards")
local selectedReward
local getDailyReward
rewardsTab:Dropdown({
    Name = "Reward Type",
    Items = getNames(rewards),
    Callback = function(chosenReward)
        selectedReward = findInTable(rewards, chosenReward)
        getDailyReward:SetName("Get: "..chosenReward)
    end
})
rewardsTab:Toggle({
    Name = "Teleport and Stay",
    Default = config.rewardSettings.teleportAndStay,
    Callback = function(value)
        config.rewardSettings.teleportAndStay = value
        updateConfig()
    end
})
getDailyReward = rewardsTab:Button({
    Name = "Get: none",
    Callback = function()
        local oldPos = HumanoidRootPart.CFrame
        local rewardWorld = findInTable(worlds, selectedReward.Location)
        goTo(rewardWorld.TeleportPart + Vector3.new(0,50,0))
        waitFor(Map[rewardWorld.Name]["PARTS_LOD"], "GROUND")
        local rewardPad = waitFor(Map[rewardWorld.Name].INTERACT.Machines, selectedReward.Name).Pad.CFrame
        goTo(rewardPad + Vector3.new(0,3,0))
        if not config.rewardSettings.teleportAndStay then
            task.wait(0.2)
            goTo(oldPos)
        end
    end
})
rewardsTab:Button({
    Name = "Go to Crystal Chest",
    Callback = function()
        local ccWorld = findInTable(worlds, "3 | Castle")
        goTo(ccWorld.TeleportPart + Vector3.new(0,50,0))
        waitFor(Map[ccWorld.Name]["PARTS_LOD"], "GROUND")
        local rewardPad = waitFor(Map[ccWorld.Name].INTERACT, "CrystalChest").Pad.CFrame
        goTo(rewardPad + Vector3.new(0,3,0))
    end
})

-- Miscellaneous

miscTab:Label("These are things that dont fit in a category")
miscTab:Button({
    Name = "Run Anti AFK Measures",
    Callback = function()
        local oldnamecall = nil
        oldnamecall = hookmetamethod(game, "__namecall", function(self,...)
            local method = getnamecallmethod()
            if self.Name == "Is Real Player" or self.Name:find("Idle")and method:lower() == "invokeserver" then
                return
            end
            return oldnamecall(self,...)
        end)
        LocalPlayer.PlayerScripts.Scripts.Core["Idle Tracking"].Enabled = false

        if getconnections then
            for _,connection in getconnections(LocalPlayer.Idled) do
                if connection["Disable"] then
                    connection["Disable"](connection)
                elseif connection["Disconnect"] then
                    connection["Disconnect"](connection)
                end
            end
        else
            config.miscSettings.antiAFK = true
        end
    end
})
local completeStairs
completeStairs = miscTab:Toggle({
    Name = "Try and complete stairway to heaven",
    Default = config.miscSettings.stairwayToHeaven,
    Callback = function(value)
        for index,_ in config.minigameSettings do
            config.minigameSettings[index] = false
        end
        config.miscSettings.stairwayToHeaven = value
        updateConfig()

        if config.miscSettings.stairwayToHeaven and not instanceContainer.Active:FindFirstChild("StairwayToHeaven") then
            goTo(CFrame.new(0,-100,0))
        end
        repeat task.wait() until instanceContainer.Active:FindFirstChild("StairwayToHeaven")
        local stairway = instanceContainer.Active.StairwayToHeaven
        local highestY = 0
        local oldHighest = highestY
        local highestCFrame

        while config.miscSettings.stairwayToHeaven and task.wait() do
            if stairway:FindFirstChild("Goal", true) then
                config.miscSettings.stairwayToHeaven = false
                completeStairs:SetValue(false)
                local goal = stairway:FindFirstChild("Goal", true)
                task.wait(0.3)
                goTo(goal.Shrine.Pad.CFrame + Vector3.new(0,3,0))
            end
            task.spawn(function()
                for _,part in ipairs(stairway:GetDescendants()) do
                    if part.Name == "Goal" then
                        config.miscSettings.stairwayToHeaven = false
                        completeStairs:SetValue(false)
                        local goal = stairway:FindFirstChild("Goal", true)
                        task.wait(0.3)
                        goTo(goal.Shrine.Pad.CFrame + Vector3.new(0,3,0))
                    end
                end
            end)
            for _,section in ipairs(stairway.Stairs:GetChildren()) do
                if not config.miscSettings.stairwayToHeaven then break end

                if section.Name == "Section" then
                    for _,part in ipairs(section:GetChildren()) do
                        if not config.miscSettings.stairwayToHeaven then break end

                        if part.Name == "Part" and part:IsA("Part") then
                            if part.Position.Y > highestY then
                                highestY = part.Position.Y
                                highestCFrame = part.CFrame
                            end
                        end
                    end
                end
            end
            if oldHighest ~= highestY then
                oldHighest = highestY
                pcall(function()
                    goTo(highestCFrame + Vector3.new(0,3,0))
                end)
                task.wait(0.2)
            end
        end
    end
})
miscTab:Label("^ This probably doesn't even work ^")
miscTab:Button({
    Name = "Remove Water",
    Callback = function()
        for _, water in ipairs(Map:GetDescendants()) do
            if water:IsA("Folder") and water.Name == "Water Bounds" then
                water:Destroy()
            end
        end
    end
})

creditsTab:Label("UI: griffindoescooking")
creditsTab:Label("Script: griffindoescooking, project L")
creditsTab:Button({
    Name = "project L",
    Callback = function()
        setclipboard("https://discord.gg/Mw7rYHDNw4")
    end
})
creditsTab:Section("Support: ")
creditsTab:Button({
    Name = "Discord",
    Callback = function()
        setclipboard("https://discord.gg/DBPHwFyCVT")
    end
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/lua/normal/games/PetSimulator99/updateInfo.lua"))()

local gitVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/lua/normal/games/PetSimulator99/version"))()
if getgenv().griffinVersion and getgenv().griffinVersion == gitVersion then
    print("versions match")
else
    warn("versions don't match. either you are on the wrong version or the github raw hasnt updated")
end

while task.wait() and getgenv().griffindoescooking do
    task.spawn(farmBreakables)
    task.spawn(farmBreakablesWithPets)
    task.spawn(collectLootbags)
    task.spawn(collectOrbs)
    task.spawn(buyZones)
    task.spawn(stayInMaxZone)
    task.spawn(farmEggs)
    task.spawn(collectTimeRewards)
    task.spawn(collectStarterWheelTicket)
    task.spawn(antiAFK)
end