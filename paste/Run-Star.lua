if game.PlaceId == 12996550309 then
    local CurrentVersion = "Grizzy - Run Star"


        -- Call Lib
        local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

        -- Main Frame
        local GUI = Mercury:Create{
            Name = CurrentVersion,
            Size = UDim2.fromOffset(600, 400),
            Theme = Mercury.Themes.Dark,
            Link = "https://github.com/deeeity/mercury-lib"
        }

            -- Local Vars/lists
            local selectedTradMillValue = nil
            local IsFarmingTread = false
            local selectedEggValue = nil
            local IfOpeningEgg = false
            local selectedWinValue = nil
            local IfStartedWining = false
            local TreadList = {
                ["+1/s TreadMill"] = "1",
                ["+5/s TreadMill"] = "2",
                ["+10/s TreadMill"] = "3",
                ["+20/s TreadMill"] = "4",
                ["+25/s TreadMill"] = "5",
                ["+30/s TreadMill"] = "6",
                ["+40/s TreadMill"] = "8",
                ["+60/s TreadMill"] = "9",
                ["+80/s TreadMill"] = "10",
                ["+100/s TreadMill"] = "11",
                ["+150/s TreadMill"] = "12",
                ["+200/s TreadMill"] = "13",
                ["+1000/s TreadMill"] = "15",
                ["+1400/s TreadMill"] = "16",
                ["+1800/s TreadMill"] = "17",
                ["+2200/s TreadMill"] = "18",
                ["+2600/s TreadMill"] = "19",
                ["+3000/s TreadMill"] = "20",
                ["+5200/s TreadMill"] = "26",
                ["+7000/s TreadMill"] = "27"
            }

            local EggsList = {
                ["WORLD 1, Common Egg"] = 1, 
                ["WORLD 1, Uncommon Egg"] = 2,
                ["WORLD 1, Rare Egg"] = 3,
                ["WORLD 1, Epic Egg"] = 4,
                ["WORLD 2, Common Egg"] = 5,
                ["WORLD 2, Uncommon Egg"] = 6,
                ["WORLD 2, Rare Egg"] = 7,
                ["WORLD 2, Epic Egg"] = 8,
                ["WORLD 2, Legendary Egg"] = 9,
                ["WORLD 2, Mythic Egg"] = 10,
                ["WORLD 3, Common Egg"] = 11,
                ["WORLD 3, Uncommon Egg"] = 12,
                ["WORLD 3, Rare Egg"] = 13,
                ["WORLD 3, Epic Egg"] = 14,
                ["WORLD 3, Legendary Egg"] = 15,
                ["WORLD 3, Mythic Egg"] = 16,
                ["ALMOND MILK I Egg"] = 17,
                ["ALMOND MILK II Egg"] = 18,
                ["ALMOND MILK III Egg"] = 19
            }

            local WinList = {
                ["Farm Wins WORLD 1"] = 1,
                ["Farm Wins WORLD 2"] = 2,
                ["Farm Wins WORLD 3"] = 3,
                ["Farm Wins ALMOND WORLD"] = -1
            }

            
            
            -- Main Tab Create
        local MainTab = GUI:Tab{
            Name = "💪💪",
            Icon = "rbxassetid://4446576906"
        }

        MainTab:Dropdown{
            Name = "Select TreadMill",
            StartingText = "Select...",
            Description = "Has to an unlocked TreadMill",
            Items = {
                "WORLD 1 (PlaceHolder Dont Select)",
                "+1/s TreadMill",
                "+5/s TreadMill",
                "+10/s TreadMill",
                "+20/s TreadMill",
                "+25/s TreadMill",
                "+30/s TreadMill",
                "WORLD 2 (PlaceHolder Dont Select)",
                "+40/s TreadMill",
                "+60/s TreadMill",
                "+80/s TreadMill",
                "+100/s TreadMill",
                "+150/s TreadMill",
                "+200/s TreadMill",
                "WORLD 3 (PlaceHolder Dont Select)",
                "+1000/s TreadMill",
                "+1400/s TreadMill",
                "+1800/s TreadMill",
                "+2200/s TreadMill",
                "+2600/s TreadMill",
                "+3000/s TreadMill",
                "ALMOND MILK WORLD (PlaceHolder Dont Select)",
                "+5200/s TreadMill",
                "+7000/s TreadMill"

            },
            Callback = function(item) 
            selectedTradMillValue = TreadList[item]
            print("Selected: ".. selectedTradMillValue)
            end
        }

        MainTab:Toggle{
            Name = "Start Farming!",
            StartingState = false,
            Description = "Start Farming TreadMill",
            Callback = function(state) 
            IsFarmingTread = state 
            while IsFarmingTread do
            if selectedTradMillValue then
                local args = {
                    [1] = selectedTradMillValue,
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Train"):WaitForChild("AddSpeed"):FireServer(unpack(args))
            end
        wait()
    end
end
}


MainTab:Dropdown{
    Name = "Select Egg",
    StartingText = "Select...",
    Description = nil,
    Items = {
        "WORLD 1, Common Egg",
        "WORLD 1, Uncommon Egg",
        "WORLD 1, Rare Egg",
        "WORLD 1, Epic Egg",
        "WORLD 2, Common Egg",
        "WORLD 2, Uncommon Egg",
        "WORLD 2, Rare Egg",
        "WORLD 2, Epic Egg",
        "WORLD 2, Legendary Egg",
        "WORLD 2, Mythic Egg",
        "WORLD 3, Common Egg",
        "WORLD 3, Uncommon Egg",
        "WORLD 3, Rare Egg",
        "WORLD 3, Epic Egg",
        "WORLD 3, Legendary Egg",
        "WORLD 3, Mythic Egg",
        "ALMOND MILK I Egg",
        "ALMOND MILK II Egg",
        "ALMOND MILK III Egg"
    },
    Callback = function(item) 
    selectedEggValue = EggsList[item]
    print("Selected: ".. selectedEggValue)
    end
}

MainTab:Toggle{
	Name = "Open Selected Egg",
	StartingState = false,
	Description = "Opens Selected Egg",
	Callback = function(state) 
        IfOpeningEgg = state
        while IfOpeningEgg do
            if selectedEggValue then
                local args = {
                    [1] = selectedEggValue,
                    [2] = "Open1",
                    [3] = {}
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(unpack(args))
    end
    wait()
end
end
}

MainTab:Dropdown{
    Name = "Select Win Farm",
    StartingText = "Select...",
    Description = nil,
    Items = {
        "Farm Wins WORLD 1",
        "Farm Wins WORLD 2",
        "Farm Wins WORLD 3",
        "Farm Wins ALMOND WORLD"
    },
    Callback = function(item) 
    selectedWinValue = WinList[item]
    print("Selected: ".. selectedWinValue)
    end
}

MainTab:Toggle{
	Name = "Start Selected AutoWin!",
	StartingState = false,
	Description = "Start Selected AutoWin!",
	Callback = function(state) 
        IfStartedWining = state
        while IfStartedWining do
            if selectedWinValue then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RacePrepare"):InvokeServer()
wait()
local args = {
    [1] = 0.1
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceEnd"):InvokeServer(unpack(args))
wait()
local args = {
    [1] = true,
    [2] = selectedWinValue,
    [3] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceReward"):FireServer(unpack(args))
wait()
end
    wait()
end
end
}
end



