window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Cabin Crew Sim")
tab=window:CreateTab("Main")
MISCTAB=window:CreateTab("Misc")

--TODO: figure out how to get current flight 🙏
tab:CreateSection("lets do stuff")
if not _G.SelectedClass then _G.SelectedClass="economy" end
tab:CreateDropdown(
    "Class [TELL ME WHAT TO ADD]",
    {"economy"},
    _G.SelectedClass,
    false,
    function(opt)
        _G.SelectedClass=opt
end)
tab:CreateButton("Feed all (economy only!?)",function()
    local r=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction
    for _, passenger in pairs(workspace.flights:GetChildren()[1].clientFolder:GetChildren()[1].npcs:GetChildren()) do
        for i=1,6 do 
            r:InvokeServer("GetItem","beverage",_G.SelectedClass,i)
            wait(.15)
            r:InvokeServer("GiveItem",passenger)
            wait(.15)
            r:InvokeServer("GetItem","food",_G.SelectedClass,i)
            wait(.15)
            r:InvokeServer("GiveItem",passenger)
            wait(.15)
        end
    end
end)
tab:CreateButton("Trash all",function()
    for _, passenger in pairs(workspace.flights:GetChildren()[1].clientFolder:GetChildren()[1].npcs:GetChildren()) do
        for _,trash in pairs(workspace.flights:GetChildren()[1].clientFolder:GetChildren()[1].clientNpcs[passenger.Name]:GetChildren()) do
            if trash:isA("Model") then
                game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent:FireServer("Trash",passenger,trash.Name)
                wait(.15)
            end
        end
    end
end)
tab:CreateButton("Fix all",function()
    for _, passenger in pairs(workspace.flights:GetChildren()[1].clientFolder:GetChildren()[1].npcs:GetChildren()) do
            game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent:FireServer("Fix","tray",passenger)
            wait(.15)
            game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent:FireServer("Fix","seat",passenger)
            wait(.15)
            game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent:FireServer("Fix","seatbelt",passenger)
            wait(.15)
    end
end)



-- tab:CreateSection("uhhh")
-- tab:CreateButton("Load Open Aimbot",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua'))()end)
-- tab:CreateButton("Load Dex",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua'))()end)
-- tab:CreateButton("Load Simple Spy",function()loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()end)
-- tab:CreateButton("Respawn",function()game.Players.LocalPlayer.Character.Head:Destroy()end)


MISCTAB:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateButton("Rejoin Server", function () loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
game.Players.LocalPlayer.CharacterAdded:Connect(function() _G.wsbran=false end)
