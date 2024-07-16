window = loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/myown/libwrapper.lua'))():CreateWindow("Cabin Crew Sim")
tab=window:CreateTab("Flight")
optab=window:CreateTab("Money")
MISCTAB=window:CreateTab("Misc")

tab:CreateSection("lets do stuff")

function getnumberofbins(state)
    local count=0
    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, bin in pairs(flight.clientFolder:GetChildren()[1].overhead_bins:GetChildren()) do
                if bin.ProximityPrompt.Enabled==state then --alternative: ({bin:FindFirstChild(bin.Name).rotationRef.Value:GetComponents()})[4] == 1
                    count+=1
                end
            end
        end
    end
    return count
end
tab:CreateButton("Open/Close bins [slow on solara]",function()
    RE=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent
    local huhh=true
    local cook=false
    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, bin in pairs(flight.clientFolder:GetChildren()[1].overhead_bins:GetChildren()) do
                if bin.ProximityPrompt.Enabled==huhh then
                    if not pcall(function() fireproximityprompt(bin.ProximityPrompt)end) then
                        cook=true
                        break
                    end
                end
            end
            if cook then
                local lastcount=getnumberofbins(huhh)
                for _, bin in pairs(flight.clientFolder:GetChildren()[1].overhead_bins:GetChildren()) do
                    RE:FireServer("prompt","Bins",tonumber(bin.Name:match("_(%d+)$")))
                    wait(.3)
                    if getnumberofbins(huhh)>=lastcount then RE:FireServer("prompt","Bins",tonumber(bin.Name:match("_(%d+)$")));wait(.3)
                    else lastcount=getnumberofbins(huhh) wait(.3)
                    end
                end
            end
        end
    end
end)

if not getgenv().SelectedClass then getgenv().SelectedClass="economy" end
tab:CreateDropdown(
    "Class [names might be wrong]",
    {"economy","business","first"},
    getgenv().SelectedClass,
    false,
    function(opt)
        getgenv().SelectedClass=opt
end)
tab:CreateButton("Feed all (tell me if this dont work for one class)",function()
    local RF=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction

    pcall(function()RF:InvokeServer("Cart",getgenv().SelectedClass,"food")end)

    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, passenger in pairs(flight.clientFolder:GetChildren()[1].npcs:GetChildren()) do
                for i=1,6 do 
                    RF:InvokeServer("GetItem","beverage",getgenv().SelectedClass,i)
                    wait(.3)
                    RF:InvokeServer("GiveItem",passenger)
                    wait(.3)
                    RF:InvokeServer("GetItem","food",getgenv().SelectedClass,i)
                    wait(.3)
                    RF:InvokeServer("GiveItem",passenger)
                    wait(.15)
                end
            end
        end
    end
end)
tab:CreateButton("Trash all",function()
    RE=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent
    game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction:InvokeServer("TrashBag")
    for i=1,2 do
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
    end
    game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteFunction:InvokeServer("TrashBag")
end)
tab:CreateButton("Fix all",function()
    RE=game:GetService("Players").LocalPlayer.Character.Client.Client.RemoteEvent
    for _, flight in pairs(workspace.flights:GetChildren()) do
        if flight:FindFirstChild("clientFolder") then
            for _, passenger in pairs(flight.clientFolder:GetChildren()[1].npcs:GetChildren()) do
                    RE:FireServer("Fix","tray",passenger)
                    wait(.03)
                    RE:FireServer("Fix","seat",passenger)
                    wait(.03)
                    RE:FireServer("Fix","seatbelt",passenger)
                    wait(.01)
            end
        end
    end
end)


optab:CreateSection("Very cool (this is enabled by default)")
optab:CreateToggle("Unlock all gamepasses",true,function(state)
    for _, gamepass in pairs(game.Players.LocalPlayer.data.purchases.gamepasses:GetChildren()) do
        gamepass.Value=state
    end
end)
optab:CreateSection("more stuff")
codes={"myles", "airport", "star", "customize", "decoration", "100m", "service", "boba", "galley", "badge", "jetway"}
optab:CreateButton("Claim codes",function()
    for _,code in pairs(codes) do
        game:GetService("ReplicatedStorage").remotes.codes:InvokeServer(code)
        wait(.15)
    end
end)
optab:CreateInput("Set Money (this is just cosmetic)","number",false,function(c)
    game.Players.LocalPlayer.data["player_data"].skybux.Value=tonumber(c)
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
