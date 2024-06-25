--[[

Made by griffindoescooking

]]--
local Remotes = game:GetService("ReplicatedStorage").GTycoonClient.Remotes
local Drops = game.workspace:FindFirstChild("Drops")
local lp = game.Players.LocalPlayer
local codes = [[Nirvana GOOBLESTHEALIEN Boostmeup ELSEP03M MichaelsaJoestar CIPHER RIGVSQERGIV MonkeyTycoonForever Nothing bottle asteroid rollthedice Ape Bakery Plantain Tarantula September Medusa Thanks Nevergonnagiveyouup Nevergonnaletyoudown Nevergonnarunaroundanddesertyou Nevergonnamakeyoucry Nevergonnasaygoodbye freeslimemonkey Nevergonnatellalieandhurtyou]]
getgenv().config = {cD = false,bM = false,bMM = false,uL = false,mM = false}

repeat task.wait() until game:IsLoaded() if game.PlaceId ~= 11400511154 then lp:Kick("wrong game") end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Monkey Tycoon /// [>::<] ^(>.1)^",
    LoadingTitle = "Monkey tycoon",
    LoadingSubtitle = "by griffindoescooking",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,
        FileName = nil
    },
    Discord = {
        Enabled = false,
        Invite = "griffin",
        RememberJoins = false
    },
    KeySystem = false
})
local Tab = Window:CreateTab("Main")
local tab3 = Window:CreateTab("Misc")
Tab:CreateToggle({
    Name = "Auto Collect and Deposit (banana)",
    CurrentValue = false,
    Callback = function(value)
        config.cD = value
        while config.cD and task.wait() do
            Remotes.DepositDrops:FireServer()
            for _, v in pairs(Drops:GetChildren()) do
                v.CFrame = lp.Character.HumanoidRootPart.CFrame
            end
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Buy (monkey)",
    CurrentValue = false,
    Callback = function(value)
        config.bM = value
        while config.bM and task.wait() do
            Remotes.BuyDropper:FireServer(1)
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Buy All (monkey)",
    CurrentValue = false,
    Callback = function(value)
        config.bMM = value
        while config.bMM and task.wait() do
            Remotes.BuyDropperMax:FireServer()
        end
    end
})
Tab:CreateParagraph({
    Title = "Using ABAM and AUBL",
    Content = "Using both of these at the same time will cause it to only do ABAM due to pricing scaling on the ABAM being lower than the AUBL"
})

Tab:CreateToggle({
    Name = "Auto Upgrade Banana Launcher",
    CurrentValue = false,
    Callback = function(value)
        config.uL = value
        while config.uL and task.wait() do
            Remotes.BuySpeed:FireServer()
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Merge (monkeys)",
    CurrentValue = false,
    Callback = function(value)
        config.mM = value
        while config.mM and task.wait() do
            Remotes.MergeDroppers:FireServer()
        end
    end
})

Tab:CreateButton({
    Name = "Apply All Codes",
    Callback = function()
        if lp:IsInGroup(16210277) and lp:IsInGroup(16977407) and lp:IsInGroup(11010524) then
            for _, code in ipairs(string.split(codes, " ")) do
                if code ~= " " then
                    Remotes.ApplyCode:FireServer(code)
                    wait(2)
                end
            end
        else
            Rayfield:Notify({
                Title = "Missing Group",
                Content = 'You need to join the "Babble Games", "Secret Monkey Squad", and "Team Blue Monkey" groups inorder to apply all codes',
                Duration = 5,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "Close",
                        Callback = function()end
                    }
                }
            })
        end
    end
})

Tab:CreateButton({
    Name = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)
    end
})
local Slider = tab3:CreateSlider({
   Name = "Speed",
   Range = {16, 500},
   Increment = 1,
   Suffix = "studs per second",
   CurrentValue = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 
   Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
tab3:CreateButton({Name = "Rejoin Server ", Callback=function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end})
tab3:CreateLabel("Credits!")
tab3:CreateLabel("originally made by griffindoescooking")
tab3:CreateLabel("fixed and stuff by benomat")
tab3:CreateLabel("join n stuff")
tab3:CreateButton({Name="Copy discord invite",Callback=function()setclipboard("discord.gg/gUMYGXqPPw")end})