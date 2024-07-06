window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Cabin Crew Sim")
tab=window:CreateTab("Main")
MISCTAB=window:CreateTab("Misc")

tab:CreateSection("lets do stuff")
RF=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction
RE=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent
tab:CreateButton("Close bins [let me know if this works]",function()
    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, bin in pairs(flight.clientFolder:GetChildren()[1].overhead_bins:GetChildren()) do
                if ({bin:FindFirstChild(bin.Name).rotationRef.Value:GetComponents()})[4] ~= 1 then
                    old_value=bin:FindFirstChild(bin.Name).rotationRef.Value
                    RE:FireServer("prompt","Bins",tonumber(bin.Name:match("_(%d+)$")))
                    wait(.8)
                    if old_value==bin:FindFirstChild(bin.Name).rotationRef.Value then
                        RE:FireServer("prompt","Bins",tonumber(bin.Name:match("_(%d+)$")))
                        wait(.5)
                        RE:FireServer("prompt","Bins",tonumber(bin.Name:match("_(%d+)$"))+2)
                        wait(.8)
                        if old_value==bin:FindFirstChild(bin.Name).rotationRef.Value then
                            RE:FireServer("prompt","Bins",tonumber(bin.Name:match("_(%d+)$"))+2)
                            wait(.5)
                            RE:FireServer("prompt","Bins",2)
                            wait(.8)
                            if old_value==bin:FindFirstChild(bin.Name).rotationRef.Value then
                                RE:FireServer("prompt","Bins",2)
                                wait(.6)
                                RE:FireServer("prompt","Bins",3)
                                wait(.8)
                                if old_value==bin:FindFirstChild(bin.Name).rotationRef.Value then
                                    RE:FireServer("prompt","Bins",3)
                                    wait(.6)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

if not _G.SelectedClass then _G.SelectedClass="economy" end
tab:CreateDropdown(
    "Class [names might be wrong]",
    {"economy","business","first"},
    _G.SelectedClass,
    false,
    function(opt)
        _G.SelectedClass=opt
end)
tab:CreateButton("Feed all (tell me if this dont work for one class)",function()
    RF=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction
    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, passenger in pairs(flight.clientFolder:GetChildren()[1].npcs:GetChildren()) do
                for i=1,6 do 
                    RF:InvokeServer("GetItem","beverage",_G.SelectedClass,i)
                    wait(.15)
                    RF:InvokeServer("GiveItem",passenger)
                    wait(.15)
                    RF:InvokeServer("GetItem","food",_G.SelectedClass,i)
                    wait(.15)
                    RF:InvokeServer("GiveItem",passenger)
                    wait(.15)
                end
            end
        end
    end
end)
tab:CreateButton("Trash all",function()
    game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction:InvokeServer("TrashBag")
    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, passenger in pairs(flight.clientFolder:GetChildren()[1].npcs:GetChildren()) do
                for _,trash in pairs(flight.clientFolder:GetChildren()[1].clientNpcs[passenger.Name]:GetChildren()) do
                    if trash:isA("Model") then
                        RE:FireServer("Trash",passenger,trash.Name)
                        wait(.15)
                    end
                end
            end
        end
    end
    game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction:InvokeServer("TrashBag")
end)
tab:CreateButton("Fix all",function()
    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, passenger in pairs(flight.clientFolder:GetChildren()[1].npcs:GetChildren()) do
                    RE:FireServer("Fix","tray",passenger)
                    wait(.15)
                    RE:FireServer("Fix","seat",passenger)
                    wait(.15)
                    RE:FireServer("Fix","seatbelt",passenger)
                    wait(.15)
            end
        end
    end
end)



-- tab:CreateSection("uhhh")
-- tab:CreateButton("Load Open Aimbot",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua'))()end)
-- tab:CreateButton("Load Dex",function()loadstring(game:HttpGet('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua'))()end)
-- tab:CreateButton("Load Simple Spy",function()loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()end)
-- tab:CreateButton("Respawn",function()game.Players.LocalPlayer.Character.Head:Destroy()end)


MISCTAB:CreateSlider("Speed",{16, 300},1,"studs per second",game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MISCTAB:CreateButton("Rejoin Server", function ()loadstring(game:HttpGet('https://pastebin.com/raw/e8jN1Lvu'))() end)
MISCTAB:CreateLabel("by benomat")
MISCTAB:CreateButton("Copy discord invite",function()setclipboard("discord.gg/gUMYGXqPPw")end)
