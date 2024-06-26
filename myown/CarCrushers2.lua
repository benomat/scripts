window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Car Crushers 2")
tab=window:CreateTab("Main")
TPTab=window:CreateTab("Teleports")
MISCTAB=window:CreateTab("Misc")


function fun()
    for i=1,35 do
        wait(0.5)
        game.Workspace.CarCollection:findFirstChild(game.Players.LocalPlayer.Name).Car:MoveTo(Vector3.new(0,950,0))
    end
end
carlist={'Chevrolet_2','Reliant','Peel','Toyota_1','Chevrolet_1','TukTuk','Morris','UAZ','Chevrolet_3','Ford_5','Honda_4','Nissan_1','Mercedes_9','Scion_2','UAZ_2','Potty','Dodge_7','Golf','Fiat','Honda_5','Reliant_2','Volkswagen_4','Jeep_1','Scion_1','Mazda_5','Zamboni','Volkswagen_1','Lexus_1','Mitsubishi_1','Wilson','Ford_10','Mopetti','Dodge_1','Honda_2','Toyota_7','TransitBus','Omnibus','NM_1','Pamingo','Paganotta_1','Ford_8','Chevrolet_4','Mitsubishi_3','GoKart','Honda_1','Trilogy','IceCream','NM_2','Volkswagen_2','Cadillac_4','Avanta_1','Chevrolet_8','Nissan_8','Toyota_2','Chevrolet_10','Ford_9','Toyota_3','Ford_2','Auva_1','Auva_2','Valor','Jeep_2','Ford_12','Audi_1','Lancia_1','Paganotta_2','Mazda','Hutton','Sokudo_3','Volkswagen_3','Honda_3','Cadillac_1','Paganotta_3','BMW_1','Caterham','Mazda_3','Toyota_4','Lexus_2','Kastell','Tesla_1','Halftrack','Toyota_5','GMC','Sherp','Mitsubishi_2','Dodge_6','Ford_3','Zealherr','Nissan_5','Subaru_1','Mercedes_1','Chevrolet_5','WVD_1','Ford_11','Ford_4','BMW_2','Nissan_2','Hayani_2','EXR_5','BMW_3','Acura','Terrain','NM_3','Hummer_2','Summit_2','Lynden','DeLorean','Avanta_2','Toyota_8','BMW_4','SleighCar','Dodge_2','Qubiq_1','Audi_4','WVD_2','Paganotta_4','Lakeland','NM_4','Toyota_6','Hummer','Lytan_2','RV','Mercedes_2','RampCar','Chevrolet_7','GraniteDump','Dodge_3','Toilet','EXR_1','Cement','Nissan_3','Cadillac_2','Chevrolet_9','Kulber_1','Mower','Ford_16','Folstak_1','Harvester','Cadillac_3','LT','Avanta_3','Chevrolet_6','Ariel_1','Reveri_1','Porsche_1','KZ','Elso_1','WienerMobile','Dodge_4','Toyota_9','BlueBird','Mercedes_10','Ariel_2','Volvo','Toyota_10','SprintRacer','Brabus','Chevrolet_11','Mazda_4','Ford_7','Nito','Dodge_8','Audi_2','Avanta_4','Tesla_2','Ford_15','Hummer_3','BMW_7','RMMV_2','Honda_6','Avanta_5','Steamroller','Cyvon_1','Ferarri_1','Marchi','Mercedes_3','Dodge_5','Mercedes_4','Bugatti_10','Katyusha','Tesla_3','Dynex','Ferarri_3','HotRod_1','Scania','BMW_5','Tesla_4','Aston_6','Couch','Humvee','Nissan_4','Audi_6','Valkyrie','Grandeur_1','Kenworth','Grandeur_2','Banana','LandRover','Magnar','Avanta_7','BAC','Volvo_2','E460','BMW_6','Grandeur_3','Nivala_1','Ferarri_7','Terrabus','Mercedes_6','Folstak_2','MAZ','Formula','Porsche_7','Tractor','Acura_2','Porsche_8','Mercedes_7','Tanker','Culara_1','Porsche_4','London','Audi_3','Porsche_6','Gavanni_9','Kenworth_2','Bugatti_3','Porsche_5','Cyper','Scania_2','Bentygla_1','Porsche_10','Ford_17','Ferarri_11','Mclaren_6','Bullboff','Vivano','Motoreni_1','Avanta_6','Audi_8','Porsche_11','Mclaren_4','Gavanni_8','EXR_2','Aston','Nervudo','Shelby_1','Mclaren_5','RMMV_1','Auva_3','RollsRoyce','WVD_3','Ferarri_9','Lexus_3','BankTransport','Saleen','Brabus_2','Hennessey_2','Ford_13','Tractor_2','Ferarri_12','Mercedes_5','Gavanni_1','Nissan_6','Tesla_7','Ford_6','Elso_3','Aston_4','Razor','PistenMaster','Shizoka_1','Crane','Ferarri_10','Porsche_14','Mossenham_1','Volvo_3','Audi_5','Nitsu_1','Ripsaw','Aston_5','Wildsrunner','Mercedes_11','Porsche_3','Marathor','Gavanni_4','Mclaren_2','Nissan_7','Mclaren_3','Remera_1','Grader','Porsche_13','Pagani_1','Cadillac_5','Ferarri_6','SnowCoach','Tesla_5','Ferarri_5','Bugatti_9','Harvester_2','Midnight_1','Motoreni_2','Lytan_1','Superlift','Ferarri_2','Gavanni_5','Koenigsegg_1','Monster_2','Mclaren_7','VelocyTor','Mercedes_12','Pagani_2','Mahindra','Bugatti_7','Fire','Bugatti_2','Koenigsegg_4','Folstak_3','Foremost','Grandeur_4','Rover','Midnight_2','Aston_2','Koenigsegg_2','Luxima','Ferarri_8','Koenigsegg_5','Avanta_8','Elso_2','Renault_1','SSC_2','A7V','Mclaren_1','ScyTech','Mazda_2','Monster','Audi_7','Crusader','Ferarri_4','Leopard','Porsche_12','APC','Hennessey_1','Panzer','Halligan_1','Rosenbauer','Pagani_3','Dragster','WDZ','Mercedes_8','Tiger','Apollo','Bugatti','Gavanni_6','M2A4S1','Koenigsegg_3','Aston_3','Mashinator','Mclaren_8','Lykan_1','SlagPot','Ford_14','Koenigsegg_6','Bulldozer','Tricera','Apollo_2','BigBud','Tesla_6','Porsche_9','Bugatti_4','Tricera_3','Landkreuzer','Gavanni_2','Bugatti_6','Bugatti_5','Train','SuperMobile','Bugatti_8','EXR_3','Dumper','Trafera','Gavanni_3','Exoniphic','Speeder','Loader','Orius','Annihilator','ShockTruck','EXR_4','Revenni_1','SSC','Tricera_2','Panzer_2','ICBM','Drill','SSC_3','Gavanni_7'}
_G.AUTOFARMVEHICLE="Chevrolet_2"
tab:CreateSection("Farm $$$")
function selectVehicle(vehicle)
    _G.AUTOFARMVEHICLE=vehicle
    -- selectedL:Set("Selected vehicle: ".._G.AUTOFARMVEHICLE)
end
tab:CreateToggle("Auto farm",false,function(state)
    _G.AutoFarm=state
    while _G.AutoFarm do
        res,lol=pcall(function()game:GetService("ReplicatedStorage").rF.SpawnVehicle:InvokeServer(_G.AUTOFARMVEHICLE)end)
        if res then
            print("spawned ".._G.AUTOFARMVEHICLE)
            fun() end
        wait(.2)
    end
end)
tab:CreateSection("Car selector")
tab:CreateLabel("Only select owned vehicles")
tab:CreateDropdown("Select car from list",carlist,_G.AUTOFARMVEHICLE,false,function(txt)
    selectVehicle(txt[1])
end)
-- tab:CreateSlider("Select car by id",{1, 395},1,"",1,function(id)
--     selectVehicle(carlist[id])
-- end)
-- selectedL=tab:CreateLabel("Selected vehicle: ".._G.AUTOFARMVEHICLE)
-- tab:CreateParagraph("info","the id is the place where the car is in the list you can see at the top of the dealership menu.\nTry to spectate the car to see if its working properly.\nIf you dont own the selected car running auto farm wont do anything")

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
TPTab:CreateSection("Teleport just you")
TPTab:CreateDropdown(
    "Players",
    getPlayerNames(),
    getPlayerNames()[1],
    false,
    function(opt)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(erm(opt)).Character.HumanoidRootPart.CFrame
    end
)
local function tp(loc)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
local function tpn(...)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(...)
end
local function tpc(...)
    game.Workspace.CarCollection:findFirstChild(game.Players.LocalPlayer.Name).Car:MoveTo(Vector3.new(...))
end
TPTab:CreateButton("Spawn",function()
    tpn(-3.645031213760376, 13.356705665588379, -13.43399429321289)
end)
TPTab:CreateButton("Stairway",function()
    tpn(-264.6379089355469, 14.387164115905762, 151.92977905273438)
end)
TPTab:CreateSection("Teleport your car")
TPTab:CreateButton("Stairway",function()
    tpc(-264.6379089355469, 14.387164115905762, 151.92977905273438)
end)
wsBoost=loadstring(game:HttpGet("https://raw.githubusercontent.com/benomat/scripts/m/myown/wsBoost.lua"))()
MISCTAB:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateSlider("CFrame Speed",{0, 50},1,"boost",0,function(v) wsBoost(v/25) end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() _G.wsbran=false end)