Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()
local window = Lib:CreateWindow({
   Name = "skidded",
   LoadingTitle = "yoyo",
   LoadingSubtitle = "fuckdude"})
local tab = window:CreateTab("------- stuff and stuf --------")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer





local MiscSection =  tab:CreateSection("Thanks for sucking balls!", true)
local MiscParagraph =
tab:CreateParagraph(
		{
			Title = "Welcome, " .. Player.DisplayName,
			Content = "this is cracked and stuff haha, balls! ",
			Section = MiscSection
		}
	)
    local Section =  tab:CreateSection("Dupe", true)


    local Button = tab:CreateButton({
        Name = "Get TimedPet",
        Info = "Button info/Description.",
        Interact = 'Changable',
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClaimTimePet"):InvokeServer(true)
            
        end,
     })
    
     local Button = tab:CreateButton({
        Name = "Get Invite Pet",
        Info = "Button info/Description.",
        Interact = 'Changable',
        Callback = function()
            local args = {[1] = true}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClaimInvitePet"):InvokeServer(unpack(args))
            
        end,
     })
    
    
     local Button = tab:CreateButton({
        Name = "Claim next daily (Can Loop",
        Info = "Button info/Description.",
        Interact = 'Changable',
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("DailyEvents"):WaitForChild("ClaimDaily"):FireServer()

            
        end,
     })


     local Button = tab:CreateButton({
        Name = "Get 90 Spins",
        Info = "Button info/Description.",
        Interact = 'Changable',
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer("Spins", 90)
            
        end,
     })
    
     local Button = tab:CreateButton({
        Name = "Get 30x 5x Boost",
        Info = "Button info/Description.",
        Interact = 'Changable',
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer("x5 Power", 30)
        end,
     })
 
    

local Section =  tab:CreateSection("Automation", true)




local autoPowerS = {
    Boolean = false,
    connection = ""
}

local function autoPower(Value)
    autoPowerS.Boolean = Value

          local function startOP()
            if autoPowerS.Boolean then
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClaimReward"):FireServer("Power", 9999999999)

            end
          end


    autoPowerS.connection = game:GetService('RunService').Heartbeat:Connect(function()
        startOP()
    end)
end


local Toggle = tab:CreateToggle({
    Name = "AutoFarm Max",
    Info = "Toggle info/Description.",
    CurrentValue = false,
    Flag = "Toggle_AutoFarmMax",
    Callback = function(Value)
        autoPower(Value)
    end,
 })



 local Toggle_AURAB1
 local boolean_011xX1 = false
 
 local function findToolIgnoreability(character)
     for _, item in ipairs(character:GetChildren()) do
         if item:IsA('Tool') and item.Name == "Punch" or  item.Name == "Dragonslayer" or  item.Name == "Cosmic Sword" or  item.Name == "Ancient Dragon Blade" then
             return item
         end
     end
     
     return nil
 end
 
 local function ClickFarm(ValueBoolean)
    boolean_011xX1 = ValueBoolean
 
     while boolean_011xX1 do
         local playerGui = Players.LocalPlayer.PlayerGui
         local toolBar = game:GetService("Players").LocalPlayer.PlayerGui.CustomHotBar.ToolBar["1"].Background.In
         wait(0.2)
         if tostring(toolBar.BackgroundColor3) == "0.184314, 1, 0" then
             local tool = findToolIgnoreability(game:GetService("Players").LocalPlayer.Character)
             if tool then
                tool.Event:FireServer(math.random(1,3))
                
             else
                Toggle_AURAB1:Set(false)
                Lib:Notify({
                     Title = "Equip your tool" ,
                     Content = "Please equip your tool for Auto click to work!",
                     Duration = 3,
                     Image = 4483362458,
                     Actions = {},
                 })
                 break
             end
         else
            Toggle_AURAB1:Set(false)
            Lib:Notify({
                Title = "Equip your tool" ,
                Content = "Please equip your tool for Auto click to work!",
                Duration = 3,
                Image = 4483362458,
                Actions = {},
            })
         end
     end
 end
 
 Toggle_AURAB1 = tab:CreateToggle({
     Name = "Auto Click",
     Info = "Toggle info/Description.",
     CurrentValue = false,
     Flag = "Toggle_AutoClick",
     Callback = function(Value)
        ClickFarm(Value)
     end,
 })

FKDSJKJEIVALUE = false
 local function autoRebirth(BooleanValue01)

    FKDSJKJEIVALUE = BooleanValue01
     while FKDSJKJEIVALUE do
        local args = {
            [1] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):InvokeServer(unpack(args))
          wait(1)
         
     end
 end

 Toggle_AURAB1XX = tab:CreateToggle({
    Name = "Auto Rebirth",
    Info = "Toggle info/Description.",
    CurrentValue = false,
    Flag = "Toggle_AutoRebirth",
    Callback = function(Value)
        autoRebirth(Value)
    end,
})



 local Toggle_AURAB
 local boolean_011xX = false
 
 local function findToolIgnorePunch(character)
     for _, item in ipairs(character:GetChildren()) do
         if item:IsA('Tool') and item.Name ~= "Punch" then
             return item
         end
     end
     
     return nil
 end
 
 local function abilityAura(ValueBoolean)
     boolean_011xX = ValueBoolean
 
     while boolean_011xX do
         local playerGui = Players.LocalPlayer.PlayerGui
         local toolBar = game:GetService("Players").LocalPlayer.PlayerGui.CustomHotBar.ToolBar["2"].Background.In
         wait(0.2)
         if tostring(toolBar.BackgroundColor3) == "0.184314, 1, 0" then
             local tool = findToolIgnorePunch(game:GetService("Players").LocalPlayer.Character)
             if tool then
                 tool.Event:FireServer(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
             else
                 Toggle_AURAB:Set(false)
                 Lib:Notify({
                     Title = "Equip Ability",
                     Content = "Please equip your Kamehameha for Ability Aura to work!",
                     Duration = 3,
                     Image = 4483362458,
                     Actions = {},
                 })
                 break
             end
         else
             Toggle_AURAB:Set(false)
             Lib:Notify({
                 Title = "Equip Ability",
                 Content = "Please equip your Kamehameha for Ability Aura to work!",
                 Duration = 3,
                 Image = 4483362458,
                 Actions = {},
             })
         end
     end
 end
 
 Toggle_AURAB = tab:CreateToggle({
     Name = "Ability Aura",
     Info = "Toggle info/Description.",
     CurrentValue = false,
     Flag = "Toggle_AbilityAura",
     Callback = function(Value)
         abilityAura(Value)
     end,
 })

 local Button = tab:CreateButton({
    Name = "Claim all codes",
    Info = "Button info/Description.",
    Interact = 'Changable',
    Callback = function()
        local codes = {"SubToSnickers", "SubToFreekid26", "SorryForTheBugs",  "SecretCode2", "Release", "SubToRusso", "ItsMeBelowZero", "NewUpdate"}
        for i = 1, #codes do
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Codes"):InvokeServer(codes[i])
        end
        
    end,
 })



 local Section =  tab:CreateSection("Player", true)
 local Toggle = tab:CreateToggle({
    Name = "God Mode",
    Info = "Toggle info/Description.",
    CurrentValue = false,
    Flag = "Toggle_GodMode",
    Callback = function(Value)
       if Value then
        Player:SetAttribute("SafeZone", true)
       else
        Player:SetAttribute("SafeZone", false)
       end
    end,
 })


 
 local Section =  tab:CreateSection("World", true)

local function tweenWorld(World)
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    local character = Player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local part = workspace.Worlds[World].Spawns["1"]
 
    local TweenService = game:GetService("TweenService")
    
    local tweenInfo = TweenInfo.new(
        0.2,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.InOut,
        0, 
        false,
        0 
    )
    
    local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = part.CFrame})
    tween:Play()

end

 local Dropdown = tab:CreateDropdown({
    Name = "Teleport To World",
    Options = {"Starter World","Sky World", "Space World"},
    CurrentOption = "Starter World",
    MultiSelection = false,
    Flag = "DropDown_WorldSelector",
    Callback = function(Option)
        tweenWorld(Option[1])
    end,
 })



 local Section =  tab:CreateSection("Other", true)




 local Input = tab:CreateInput({
    Name = "Delete Pet",
    Info = "Input info/Description.",
    PlaceholderText = "Input Placeholder",
    NumbersOnly = false,
    CharacterLimit = 48,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        game:GetService("Players").LocalPlayer.Pets[tostring(Text)]:Destroy()

    end,
 })