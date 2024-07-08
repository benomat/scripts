repeat task.wait() until game:IsLoaded()

local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    game:GetService("Players").LocalPlayer:Kick("This game uses ModernChatService which Vadrifts does not support.")
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/RelkzzRebranded/Bypassed---OBFUSCATED..../main/Adonis%20BYPASS.lua"))()
wait(0.1)

for k, v in pairs(getgc(true)) do if pcall(function() return rawget(v, "indexInstance") end) and type(rawget(v, "indexInstance")) == "table" and (rawget(v, "indexInstance"))[1] == "kick" then v.tvk = {
            "kick", function() return game.Workspace:WaitForChild("") end } end end
wait(0.1)

local Namecall
Namecall = hookmetamethod(game, '__namecall', function(self, ...)
   local Caller = tostring(getcallingscript())
   local Method = getnamecallmethod()
   
   if Caller == 'ClientMover' and Method == 'GetService' then
       return
   end
   
   return Namecall(self, ...)
end)
wait(0.1)

loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua'))()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "vadrifts.byp |  V1.3.9", HidePremium = false, SaveConfig = save, ConfigFolder =
"OrionTest", ScriptIntro = enabled, IntroText = "V3rge's bypassing society" })

local startTime = tick()

local Tab = Window:MakeTab({
    Name = "Script Setup",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Loading"
})
Tab:AddParagraph("Loading..", "Please wait")
Tab:AddParagraph("Quick Tip!","If the script isn't loading, it could be due to your device or executor!")

local function loadScript()

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({ Name = "vadrifts.byp |  V1.3.9", HidePremium = false, SaveConfig = save, ConfigFolder =
    "OrionTest", IntroEnabled = false })


    local endTime = tick()
    local loadTime = endTime - startTime
    game.StarterGui:SetCore("SendNotification",
        { Title = "Loaded!", Text = "Succesfully loaded in " ..
        loadTime .. " seconds.", Duration = 5, })

    local Tab = Window:MakeTab({
        Name = "Home",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
local Section = Tab:AddSection({
    Name = "Discord"
})

local playerName = game.Players.LocalPlayer.Name

Tab:AddButton({
    Name = "Welcome " .. playerName .. ", updates n stuff @ our discord",
    Callback = function()
    end
})

Tab:AddButton({
    Name = "Discord | Click To Copy (TW: Small Server)",
    Callback = function()
setclipboard("https://dsc.gg/vadriftz")
    end
}) 

local Section = Tab:AddSection({
    Name = "UI Stuff"
})

  Tab:AddButton({
    Name = "Close Interface",
    Callback = function()
OrionLib:Destroy()
    end
})

Tab:AddButton({
    Name = "Un-hide UI button (when ui closed)",
    Callback = function()
        local Toggle = Instance.new("ScreenGui")
        local UIToggle = Instance.new("TextButton")
        local CloseButton = Instance.new("TextButton")
        Toggle.Name = "Un-Hide"
        Toggle.Parent = game.CoreGui
        UIToggle.Name = "Un-hide"
        UIToggle.Parent = Toggle
        UIToggle.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        UIToggle.BackgroundTransparency = 0
        UIToggle.Position = UDim2.new(0, 0, 0.454706937, 0)
        UIToggle.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
        UIToggle.Font = Enum.Font.SourceSans
        UIToggle.Text = "Un-Hide!"
        UIToggle.TextColor3 = Color3.fromRGB(75, 0, 130)
        UIToggle.TextSize = 24.000
        UIToggle.TextXAlignment = Enum.TextXAlignment.Left

        local UserInputService = game:GetService("UserInputService")
        local dragging = false
        local dragStart
        local startPos

        local function updateDragging(input)
            local delta = input.Position - dragStart
            UIToggle.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        UIToggle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                dragStart = input.Position
                startPos = UIToggle.Position
            end
        end)

        UIToggle.InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                updateDragging(input)
            end
        end)

        UIToggle.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)

        local function executeScript()
            if OrionLib and OrionLib.Destroy then
                OrionLib:Destroy() -- Reduces lag
            end
            if loadScript then
                loadScript() -- Reopens script
            end
        end

        UIToggle.MouseButton1Click:Connect(executeScript)

        -- Create a close button
        CloseButton.Name = "CloseButton"
        CloseButton.Parent = UIToggle
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        CloseButton.BackgroundTransparency = 0
        CloseButton.Position = UDim2.new(0.8, 0, 0.1, 0)
        CloseButton.Size = UDim2.new(0.2, 0, 0.2, 0)
        CloseButton.Font = Enum.Font.SourceSans
        CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
        CloseButton.TextSize = 16
        CloseButton.Text = "X"
        CloseButton.MouseButton1Click:Connect(function()
            UIToggle:Destroy() -- Destroy the UI elements when the close button is clicked
        end)
    end
})


local Section = Tab:AddSection({
    Name = "Help"
})
Tab:AddParagraph("Notice","If the script gives you a warning on execution, that means that game isn't supported!")
 Tab:AddLabel("Your account must be 13+ for everything to work.")
 Tab:AddLabel("If something gets tagged, say something normal and try again.")
 Tab:AddLabel("Everyone can see the things you say in chat.")
 Tab:AddLabel("For more info go and ask on the Discord")

local Section = Tab:AddSection({
    Name = "Credits"
})

 Tab:AddLabel("B4krs - Development and bypassing.")
 Tab:AddLabel("Sauce_boss01 - Made some Bypasses")
 Tab:AddLabel("clickgameplay - Automatic chat bypasser")
 Tab:AddLabel("Anthony - Chat Logger")
 Tab:AddLabel("OG Vadrifts - Most bypass ideas")
 Tab:AddLabel("d34dly - Made some Bypasses")
 Tab:AddLabel("Dank6s - Script setup")
 Tab:AddLabel("N4 - Made some Bypasses")
 Tab:AddLabel("Tyler - Made some Bypasses")
 Tab:AddLabel("BANANAN. - Development.")

local Section = Tab:AddSection({
    Name = "More Vadrifts/V3rge Scripts"
})

  Tab:AddButton({
    Name = "V3rg. Horrific Housing (OUTDATED)",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BakaPraselol/HH-loader1/main/HH"))()
    end
})

Tab:AddParagraph("Creating more soon..","Making scripts actually work..")

local Tab = Window:MakeTab({
    Name = "Bypassed Words",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Extra"
})


Tab:AddParagraph("Recommended Games"," Rate My Avatar                                                 Public Bathroom Simlator                                                               White room                                                        Natrual Disaster Survival                                                        Ragdoll Engine                                                 Spray Paint!")

  Tab:AddButton({
    Name = "Automatic Chat Bypasser",
    Callback = function()
game.StarterGui:SetCore("SendNotification", {Title="Activated"; Text="Try saying a swear in chat!"; Duration=5;})
print(string.format("vdr.ACB: The Automatic Chat Bypasses has every bypass from the script with some extra ones, for example:"))
print(string.format("wife, suck, kill, yourself, fuck(sometimes works).. And more!"))

repeat task.wait() until game:IsLoaded()
wait(0.1)
local chatService, players = game:GetService("Chat"), game:GetService("Players")

local custom_chars = {
    [" "] = "",
    ["stfu"] = "Ñ•ó €•ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥fó €–ó €•â¥â¥â¥u",
    ["asshole"] = "Ð°Ñ•Ñ•â¥â¥â¥Ò»Ð¾lÐµ",
    ["ass"] = "Ð°â¥â¥â¥Ñ•â¥â¥â¥Ñ•",
    ["arse"] = "Ð°râ¥â¥Ñ•â¥Ðµ",
    ["anus"] = "Ð°â¥â¥â¥nâ¥â¥â¥uâ¥â¥â¥Ñ•â¥â¥â¥",
    ["Anus"] = "Aâ¥â¥â¥nâ¥â¥â¥uâ¥â¥â¥Ñ•â¥â¥â¥",
    ["anal"] = "Ð°nâ¥â¥â¥â¥Ð°l",
    ["blowjob"] = "blowâ¥â¥â¥jâ¥â¥â¥Ð¾â¥â¥â¥bâ¥â¥â¥",
    ["boner"] = "â¥Ð’â¥â¥oâ¥â¥nâ¥â¥Ðµâ¥â¥r",
    ["boobies"] = "bÐ¾â¥â¥â¥â¥â¥â¥â¥â¥Ð¾bÑ–Ðµs",
    ["bullshit"] = "bulÓsÒ»â¥â¥â¥â¥â¥â¥â¥â¥Ñ–t",
    ["bastard"] = "basâ¥â¥â¥â¥â¥â¥â¥â¥tard",
    ["beaner"] = "bâ¥â¥â¥Ðµâ¥â¥â¥Ð°â¥â¥â¥nâ¥â¥â¥Ðµâ¥â¥â¥r",
    ["butthole"] = "buâ¥â¥â¥â¥â¥â¥â¥â¥tthÐ¾le",
    ["bootyhole"] = "bâ¥â¥â¥Ð¾â¥â¥â¥Ð¾â¥â¥â¥tâ¥â¥â¥Ñƒhole",
    ["bondage"] = "bâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð°â¥â¥â¥gâ¥â¥â¥Ðµâ¥â¥â¥",
    ["Bondage"] = "Bâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð°â¥â¥â¥gâ¥â¥â¥Ðµâ¥â¥â¥",
    ["butt"] = "buâ¥â¥â¥â¥â¥â¥â¥â¥tt",
    ["booty"] = "bÐ¾Ð¾ty",
    ["boobs"] = "bÐ¾Ð¾bÑ•",
    ["boob"] = "bÐ¾Ð¾b",
    ["breasts"] = "brÐµÐ°Ñ•tÑ•",
    ["bbc"] = "bâ¥â¥â¥bâ¥â¥â¥Ñ",
    ["bitch"] = "bó €•ó €–ó €—ó €˜ï¿°ï¿°ó €•ó €–ó €—ó €˜Ñ–ó €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €—ó €˜tó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜Ñó €—ó €˜ó €—ó €˜ï¿°ï¿°ï¿°ó €—ó €˜Ò»",
    ["Bitch"] = "Bó €•ó €–ó €—ó €˜ï¿°ï¿°ó €•ó €–ó €—ó €˜Ñ–ó €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €—ó €˜tó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜Ñó €—ó €˜ó €—ó €˜ï¿°ï¿°ï¿°ó €—ó €˜Ò»",
    ["bitches"] = "bó €•ó €–ó €—ó €˜ï¿°ï¿°ó €•ó €–ó €—ó €˜ió €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €—ó €˜tó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜có €—ó €˜ó €—ó €˜ï¿°ï¿°ï¿°ó €—ó €˜Ò»es",
    ["Bitches"] = "Bó €•ó €–ó €—ó €˜ï¿°ï¿°ó €•ó €–ó €—ó €˜ió €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €—ó €˜tó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜có €—ó €˜ó €—ó €˜ï¿°ï¿°ï¿°ó €—ó €˜Ò»es",
    ["cocaine"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥Ñâ¥â¥â¥Ð°â¥â¥â¥iâ¥â¥â¥nâ¥â¥â¥Ðµ",
    ["creampie"] = "Ñâ¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥Ð°â¥â¥â¥mâ¥â¥â¥Ñ€â¥â¥â¥iâ¥â¥â¥Ðµ",
    ["cum"] = "Ñâ¥â¥â¥â¥um",
    ["cunts"] = "Ñuâ¥â¥â¥â¥â¥â¥â¥â¥ntÑ•",
    ["cunt"] = "Ñó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €–ó €•uâ¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €–ó €•nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥t",
    ["cock"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥Ñâ¥â¥â¥k",
    ["cuck"] = "Ñâ¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥k",
    ["cuckold"] = "Ñâ¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥kâ¥â¥â¥Ð¾â¥â¥â¥Óâ¥â¥â¥dâ¥â¥â¥",
    ["condoms"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥mâ¥â¥â¥s",
    ["condom"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥m",
    ["coochies"] = "cooÑâ¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥es",
    ["coochie"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥oâ¥â¥â¥Ñâ¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥Ðµ",
    ["crap"] = "Ñrâ¥â¥â¥â¥Ð°Ñ€",
    ["Crap"] = "Ñrâ¥â¥â¥â¥Ð°Ñ€",
    ["CRAP"] = "Ñrâ¥â¥â¥â¥Ð°Ñ€",
    ["cunny"] = "Ñuâ¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥â¥nÑƒ",
    ["Cunny"] = "Ñuâ¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥â¥nÑƒ",
    ["clit"] = "Ñó €•ó €•â¥Ð†ó €•ó €•â¥Ñ–ó €•ó €•â¥t",
    ["Clit"] = "Ñó €•ó €•â¥Ð†ó €•ó €•â¥Ñ–ó €•ó €•â¥t",
    ["dumbass"] = "duâ¥â¥â¥â¥â¥â¥mbâ¥â¥â¥â¥â¥â¥Ð°Ñ•Ñ•",
    ["discord"] = "dÑ–Ñ•ÑÐ¾rd",
    ["dickhead"] = "dï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°cï¿°ï¿°ï¿°ï¿°ï¿°khï¿°ï¿°ï¿°ï¿°ï¿°ead",
    ["dick"] = "dâ¥â¥â¥â¥ió €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥có €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥k",
    ["damn"] = "dâ¥â¥â¥Ð°â¥â¥â¥mâ¥â¥â¥nâ¥â¥â¥",
    ["doggystyle"] = "dâ¥â¥â¥Ð¾ggystyle",
    ["Doggystyle"] = "Dâ¥â¥â¥Ð¾ggystyle",
    ["fatass"] = "fatï¿°ï¿°ï¿°Ð°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°â¥Ñ•ï¿°ï¿°Ñ•",
    ["fucked"] = "fï¿°ï¿°ï¿°ï¿°ï¿°ï¿°uÑï¿°ï¿°ó €•ó €•ó €•ó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°eï¿°ï¿°ï¿°ï¿°d",
    ["femboy"] = "fÐµmbÐ¾y",
    ["femboys"] = "fÐµmbÐ¾ys",
    ["fuckers"] = "ó €•ó €•ó €•fï¿°ï¿°ï¿°ï¿°ï¿°ï¿°uÑï¿°ï¿°ó €•ó €•ó €•ó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°eï¿°ï¿°ï¿°ï¿°ó €•ó €•ó €•rÑ•",
    ["Fuckers"] = "ó €•ó €•ó €•Fï¿°ï¿°ï¿°ï¿°ï¿°ï¿°uÑï¿°ï¿°ó €•ó €•ó €•ó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°eï¿°ï¿°ï¿°ï¿°ó €•ó €•ó €•rÑ•",
    ["faggot"] = "â¥â¥â¥â¥fâ¥ó €•â¥â€ŠÐ°ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥gó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥gâ¥â¥Ð¾ó €•ó €•â¥â¥ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥tâ¥â¥",
    ["Faggot"] = "â¥â¥â¥â¥Fâ¥ó €•â¥â€ŠÐ°ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥gó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥gâ¥â¥Ð¾ó €•ó €•â¥â¥ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥tâ¥â¥",
    ["Fag"] = "â¥â¥â¥â¥Fâ¥ó €•â¥â€ŠÐ°ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥g",
    ["fag"] = "â¥â¥â¥â¥fâ¥ó €•â¥â€ŠÐ°ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥g",
    ["fap"] = "fâ¥ó €•â¥â¥Ð°â¥ó €•â¥â¥Ñ€",
    ["fanny"] = "faâ¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥â¥nÑƒ",
    ["horny"] = "Ò»â¥â¥â¥â¥â¥Ð¾ó €•ó €•ó €•ó €•râ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ñƒ",
    ["hitler"] = "Ðiâ¥â¥â¥â¥â¥â¥â¥â¥tÓâ¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥r",
    ["hoes"] = "Ò»Ð¾ÐµÑ•",
    ["hoe"] = "Ò»Ð¾Ðµ",
    ["instagram"] = "Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥nó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ñ•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥tÐ°gó €•ó €•ó €•ó €•rÐ°m",
    ["insta"] = "Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥nó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ñ•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥tÐ°",
    ["Instagram"] = "Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥nó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ñ•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥tÐ°gó €•ó €•ó €•ó €•rÐ°m",
    ["Insta"] = "Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥nó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ñ•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥tÐ°",
    ["kys"] = "kâ¥â¥â¥â¥â¥â¥â¥â¥yâ¥â¥â¥Ñ•",
    ["lmfao"] = "Ómâ¥â¥â¥â¥â¥â¥â¥â¥fÐ°â¥â¥Ð¾",
    ["lmao"] = "Óó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥maÐ¾",
    ["Lmao"] = "Óó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥maÐ¾",
    ["motherfucker"] = "motï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°hï¿°eï¿°rfï¿°ï¿°ï¿°ï¿°ï¿°uï¿°Ñï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°eï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°r",
    ["masturbate"] = "mó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ñ•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•ró €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•bó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•e",
    ["Masturbate"] = "Ðœâ¥â¥â¥Ð°â¥â¥â¥Ñ•â¥â¥â¥tâ¥â¥â¥uâ¥â¥â¥râ¥â¥â¥bâ¥â¥â¥Ð°â¥â¥â¥tâ¥â¥â¥Ðµ",
    ["masturbating"] = "mâ¥â¥â¥Ð°â¥â¥â¥Ñ•â¥â¥â¥tâ¥â¥â¥uâ¥â¥â¥râ¥â¥â¥bâ¥â¥â¥Ð°â¥â¥â¥tâ¥â¥â¥ing",
    ["meth"] = "mÐµâ¥â¥â¥â¥â¥â¥â¥â¥th",
    ["naked"] = "nÐ°kÐµd",
    ["nudes"] = "nudÐµÑ•",
    ["nude"] = "nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•dó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ðµ",
    ["Nude"] = "Nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•dó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ðµ",
["negro"] = "nó €•ó €•ó €•ó €•ó €•ó €•ó €•eó €•ó €•ó €•ó €•ó €•ó €•ó €•gó €•ó €•ó €•ó €•ó €•ó €•ó €•ró €•ó €•ó €•ó €•ó €•ó €•ó €•o",
["Negro"] = "nó €•ó €•ó €•ó €•ó €•ó €•ó €•eó €•ó €•ó €•ó €•ó €•ó €•ó €•gó €•ó €•ó €•ó €•ó €•ó €•ó €•ró €•ó €•ó €•ó €•ó €•ó €•ó €•o",
["nipples"] = "nó €•ó €•â¥ió €•ó €•â¥â¥ó €•Ñ€â¥pó €•ó €–â¥â¥ó €•ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•eó €–â¥â¥Ñ•",
["nipple"] = "nó €•ó €•â¥ió €•ó €•â¥â¥ó €•Ñ€â¥pó €•ó €–â¥â¥ó €•ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•eó €–â¥â¥",
["Nipples"] = "Nó €•ó €•â¥ió €•ó €•â¥â¥ó €•Ñ€â¥pó €•ó €–â¥â¥ó €•ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•eó €–â¥â¥Ñ•",
["Nipple"] = "Nó €•ó €•â¥ió €•ó €•â¥â¥ó €•Ñ€â¥pó €•ó €–â¥â¥ó €•ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•eó €–â¥â¥",
    ["orgasm"] = "Ð¾rgâ¥â¥â¥â¥Ð°Ñ•m",
    ["omfg"] = "Ð¾mâ¥â¥â¥â¥â¥â¥â¥â¥fg",
    ["pedophile"] = "pâ¥â¥Ðµâ¥â¥â¥dâ¥â¥â¥â¥â¥â¥â¥Ð¾Ñ€â¥â¥hÑ–Óâ¥â¥â¥â¥â¥â¥â¥Ðµ",
    ["pornhub"] = "â¥â¥Ñ€ó €•ó €•ó €•ó €•ó €•ó €•ó €•Ð¾ó €•ó €•ó €•ó €•ó €•ó €•ó €•ró €•ó €•ó €•ó €•ó €•ó €•ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•Ò»ó €•ó €•ó €•ó €•ó €•ó €•ó €•uó €•ó €•ó €•ó €•ó €•ó €•ó €•b",
    ["penis"] = "penó €•ó €–ó €—ó €˜ó €•ó €–â¥â¥â¥â¥â¥â¥â¥â¥ó €•Ñ–ó €–ó €—ó €˜ó €–ó €—Ñ•",
    ["porn"] = "Ñ€Ð¾rn",
    ["pussies"] = "Ñ€â¥â¥â¥uâ¥â¥â¥sâ¥â¥â¥sâ¥â¥â¥iâ¥â¥â¥Ðµâ¥â¥â¥s",
    ["pussy"] = "Ñ€â¥â¥â¥uâ¥â¥â¥sâ¥â¥â¥sâ¥â¥â¥Ñƒ",
    ["pussy"] = "Ñ€Ñ–ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €–ó €•ss",
    ["queer"] = "qâ¥â¥â¥uâ¥â¥â¥Ðµâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥",
    ["Queer"] = "Qâ¥â¥â¥uâ¥â¥â¥Ðµâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥",
    ["rape"] = "rÐ°Ñ€Ðµ",
    ["stripper"] = "Ñ•trÑ–Ñ€Ñ€Ðµr",
    ["slave"] = "Ñ•â¥â¥â¥Óâ¥â¥â¥Ð°â¥â¥â¥vâ¥â¥â¥Ðµ",
    ["seduce"] = "Ñ•ÐµduÑÐµ",
    ["slut"] = "sÓut",
    ["shit"] = "â¥â¥â¥Ñ•â¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥t",
    ["sexy"] = "Ñ•ÐµÑ…Ñƒ",
    ["sex"] = "Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥",
    ["sperm"] = "Ñ•pÐµó €•ï¿°ï¿°ï¿°ï¿°ó €–rï¿°ó €–m",
    ["Sperm"] = "Ñ•pÐµó €•ï¿°ï¿°ï¿°ï¿°ó €–rï¿°ó €–m",
    ["Semen"] = "Ñ•ó €•ó €–ó €—ó €˜â¥â¥â¥â¥â¥â¥â¥â¥emen",
    ["semen"] = "Ñ•ó €•ó €–ó €—ó €˜â¥â¥â¥â¥â¥â¥â¥â¥emen",
    ["schlong"] = "Ñ•ó €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–có €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–hó €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–ló €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–oó €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–ng",
    ["retarded"] = "rÐµtÐ°rded",
    ["retard"] = "â¥â¥râ¥ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ðµó €–ó €•tâ€Šó €•ó €•ó €•ó €•ó €–ó €•Ð°â¥â¥â¥ó €•ó €•ó €•ó €–ó €•ró €•ó €•ó €•â¥â¥â¥â¥ó €•d",
    ["rizz"] = "rÑ–zz",
    ["Rizz"] = "RÑ–zz",
    ["titties"] = "tâ¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥Ñ•",
    ["thots"] = "tâ¥â¥â¥â¥â¥â¥â¥â¥hâ¥â¥â¥â¥â¥â¥â¥â¥otÑ•",
    ["thot"] = "tâ¥â¥â¥â¥â¥â¥â¥â¥hâ¥â¥â¥â¥â¥â¥â¥â¥ot",
    ["tits"] = "tâ¥â¥â¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥â¥â¥ts",
    ["tit"] = "tÑ–t",
    ["virginity"] = "vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°tï¿°ï¿°ï¿°Ñƒ",
    ["virgins"] = "vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°s",
    ["vagina"] = "vó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•gó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•a",
    ["virgin"] = "vó €•ó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €•ó €–ó €—ó €˜Ñ–ó €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €—ó €˜ró €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜gó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €—ó €˜Ñ–ó €˜ó €•ó €–ó €˜ó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°n",
    ["whore"] = "wâ¥â¥â¥Ò»â¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥Ðµ",
    ["weed"] = "â¥â¥â¥â¥wâ¥ó €•â¥eed",
    ["Weed"] = "â¥â¥â¥â¥Wâ¥ó €•â¥eed",
    ["ASS"] = "ÐÐ…Ð…",
    ["ANUS"] = "Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Îó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ð…",
    ["ARSE"] = "Aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ró €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ð…ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•E",
    ["ASSHOLE"] = "ÐÐ…Ð…ÐÐžLÐ•",
    ["ANAL"] = "ÐÎâ¥â¥â¥â¥â¥â¥ÐL",
    ["BASTARD"] = "Ð’ÐÐ…Ð¢ÐRD",
    ["BONER"] = "â¥Ð’â¥â¥Oâ¥â¥Nâ¥â¥Ð•â¥â¥R",
    ["BONDAGE"] = "Ð’ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ðžó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Îó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Dó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐGÐ•",
    ["BONDAGE"] = "BLOWÐˆOB",
    ["BITCHES"] = "Ð’ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¢ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¡ÐÐ•S",
    ["BITCH"] = "Ð’ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¢ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¡Ð",
    ["BOOBS"] = "Ð’ÐžÐžÐ’S",
    ["BOOB"] = "Ð’ÐžÐžÐ’",
    ["BUTTHOLE"] = "Ð’UÐ¢Ð¢â¥â¥â¥â¥ÐOLÐ•",
    ["BUTT"] = "Ð’UÐ¢Ð¢",
    ["BOOTY"] = "Ð’ÐžÐžÐ¢Î¥",
    ["BULLSHIT"] = "Ð’ó €•ó €•ó €•ó €•Uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥LLâ¥â¥â¥Ð…â¥â¥â¥Ðâ¥â¥â¥Ó€â¥â¥â¥Ð¢",
    ["BEANER"] = "Ð’ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Îó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥R",
    ["CUNTS"] = "Ð¡Uâ¥â¥â¥â¥â¥â¥â¥â¥NÐ¢Ð…",
    ["COCAINE"] = "Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐžÐ¡Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ó€Îó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•",
    ["COOCHIES"] = "Ð¡ó €•ó €•ó €•Oó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐžÐ¡Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ó€ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•S",
    ["COOCHIE"] = "Ð¡ó €•ó €•ó €•Oó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐžÐ¡Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ó€ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•",
    ["CUNT"] = "Ð¡Uâ¥â¥â¥â¥â¥â¥â¥â¥NÐ¢",
    ["CUCKOLD"] = "Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Uó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥KOLD",
    ["CUCK"] = "Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Uó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥K",
    ["CREAMPIE"] = "Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ró €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐÐœó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥PIE",
    ["CUM"] = "Ð¡UÐœ",
    ["COCK"] = "Ð¡ÐžÐ¡K",
    ["DISCORD"] = "DÓ€Ð…Ð¡ÐžRD",
    ["DUMBASS"] = "DUMBÐÐ…Ð…",
    ["DAMN"] = "DÐÐœÎ",
    ["DICKHEAD"] = "Dâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥IÐ¡ÎšÐÐ•ó €•â¥â¥ó €•AD",
    ["DICK"] = "Dâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥IÐ¡Îš",
    ["FAGGOT"] = "Fó €•ó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €•ó €–ó €—ó €˜Ðó €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €•Gâ¥â¥ó €–ó €—ó €˜ó €–ó €—ó €˜â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €˜ó €˜Gó €–ó €—ó €˜ó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ðžó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—Ð¢",
    ["FATASS"] = "Fâ¥â¥â¥Ðâ¥â¥â¥Ð¢Ðâ¥â¥â¥Ð…â¥â¥â¥Ð…",
    ["FEMBOYS"] = "FÐ•ÐœÐ’ÐžÎ¥Ð…",
    ["FEMBOY"] = "FÐ•ÐœÐ’ÐžÎ¥",
    ["HITLER"] = "ÐÓ€â¥â¥â¥â¥â¥â¥â¥â¥Ð¢Lâ¥â¥â¥â¥â¥â¥â¥â¥Ð•â¥â¥R",
    ["HENTAI"] = "ÐÐ•â¥â¥â¥â¥Îâ¥Ð¢ÐÓ€",
    ["HORNY"] = "ÐÐžRNY",
    ["HOES"] = "ÐÐžÐ•Ð…",
    ["HOE"] = "ÐÐžÐ•",
    ["KYS"] = "Kâ¥â¥â¥â¥â¥â¥â¥â¥Î¥â¥â¥â¥S",
    ["LMFAO"] = "LÐœFÐÐž",
    ["LMAO"] = "LÐœÐÐž",
    ["MASTURBATE"] = "ÐœÐÐ…Ð¢URÐ’ÐÐ¢Î•",
    ["NUDES"] = "ÎUDÐ•Ð…",
    ["NUDE"] = "Nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Dó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•E",
    ["NEGRO"] = "NEó €•ó €•â¥â¥ó €•Gó €•ó €–â¥â¥ó €•Ró €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•O",
    ["NIPPLES"] = "Îó €•ó €•â¥Ó€ó €•ó €•â¥â¥ó €•Pâ¥â¥Pó €•ó €–â¥â¥ó €•Ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•Ð•ó €–â¥â¥Ð…",
    ["NIPPLE"] = "Îó €•ó €•â¥Ó€ó €•ó €•â¥â¥ó €•Pâ¥â¥Pó €•ó €–â¥â¥ó €•Ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•Ð•ó €–â¥â¥",
    ["NAKED"] = "ÎÎ‘KÎ•D",
    ["OMFG"] = "ÐžMâ¥â¥â¥â¥â¥â¥â¥â¥FG",
    ["PENIS"] = "PENâ¥â¥Ó€S",
    ["PUSSIES"] = "Ð â¥â¥â¥Uâ¥â¥â¥Ð…â¥â¥â¥Sâ¥â¥â¥Ó€â¥â¥â¥Ð•â¥â¥â¥Ð…",
    ["PUSSY"] = "Ð â¥â¥â¥Uâ¥â¥â¥Ð…â¥â¥â¥Sâ¥â¥â¥Î¥",
    ["PISS"] = "Ð Ó€ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €–ó €•SS",
    ["PORN"] = "Ð ÐžRÎ",
    ["RETARD"] = "Râ¥â¥â¥â¥Eâ¥â¥â¥Tâ¥â¥â¥â¥Aâ¥â¥â¥Râ¥â¥â¥â¥D",
    ["RAPE"] = "RÐÐ Ð•",
    ["SHIT"] = "Ð…Hâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥IT",
    ["SEX"] = "Ð…Ð•Ð¥",
    ["SLUT"] = "Ð…Lâ¥â¥â¥â¥UÐ¢",
    ["SLAVE"] = "Ð…LÐó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–VE",
    ["TITTIES"] = "Ð¢IÐ¢Ð¢IES",
    ["TITS"] = "Ð¢IÐ¢Ð…",
    ["THOT"] = "Ð¢Ðâ¥â¥â¥â¥â¥ÐžÐ¢",
    ["THOTS"] = "Ð¢Ðâ¥â¥â¥â¥â¥ÐžÐ¢Ð…",
    ["VIRGINITY"] = "Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ó€ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ó€ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ÎITY",
    ["VIRGINS"] = "Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°INS",
    ["VIRGIN"] = "Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°N",
    ["VAGINA"] = "Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ðï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ó€ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð",
    ["XXX"] = "Xâ¥â¥â¥â¥XX",
    ["WHORE"] = "Wâ¥â¥â¥Ðâ¥â¥â¥Ðžâ¥â¥â¥Râ¥â¥â¥Ð•",
    ["WEED"] = "â¥â¥â¥â¥Wâ¥ó €•EED",
    ["blacked.com"] = "blacked.câ¥â¥â¥Ð¾â¥â¥â¥m", --Nsfw websites
    ["pornhub.com"] = "Ñ€â¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥nâ¥â¥â¥Ò»â¥â¥â¥uâ¥â¥â¥b.câ¥â¥â¥Ð¾â¥â¥â¥m",
    ["XVIDEOS.COM"] = "Ð¥ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €–ó €•VÓ€â¥â¥â¥â¥â¥â¥Dâ¥â¥â¥ó €•ó €•ó €•Ð•â¥â¥â¥ó €•ó €•ó €•ÐžÐ….Ð¡â¥â¥â¥ó €•ó €•ó €•ÐžÐœ",
    ["https://blacked.com"] = "httÑ€s:/â¥â¥â¥/blacked.câ¥â¥â¥Ð¾â¥â¥â¥m",
    ["PORNHUB.COM"] = "Ð â¥â¥â¥Ðžâ¥â¥â¥Râ¥â¥â¥Îâ¥â¥â¥Ðâ¥â¥â¥Uâ¥â¥â¥Ð’.Ð¡â¥â¥â¥Ðžâ¥â¥â¥Ðœâ¥â¥â¥",
    ["Asshole"] = "Ð°Ñ•Ñ•â¥â¥â¥Ò»Ð¾lÐµ", --Capitals at the first letter
    ["Ass"] = "Ð°â¥â¥â¥Ñ•â¥â¥â¥Ñ•",
    ["Arse"] = "Ð°râ¥â¥Ñ•â¥Ðµ",
    ["Anal"] = "Ð°nâ¥â¥â¥â¥Ð°l",
    ["Blowjob"] = "Blowâ¥â¥â¥jâ¥â¥â¥Ð¾â¥â¥â¥bâ¥â¥â¥",
    ["Boner"] = "â¥Ð’â¥â¥oâ¥â¥nâ¥â¥Ðµâ¥â¥r",
    ["Boobies"] = "BÐ¾â¥â¥â¥â¥â¥â¥â¥â¥Ð¾bÑ–Ðµs",
    ["Bullshit"] = "BulÓsÒ»â¥â¥â¥â¥â¥â¥â¥â¥Ñ–t",
    ["Bastard"] = "Basâ¥â¥â¥â¥â¥â¥â¥â¥tard",
    ["Beaner"] = "Bâ¥â¥â¥Ðµâ¥â¥â¥Ð°â¥â¥â¥nâ¥â¥â¥Ðµâ¥â¥â¥r",
    ["Butthole"] = "Buâ¥â¥â¥â¥â¥â¥â¥â¥tthÐ¾le",
    ["Bootyhole"] = "Bâ¥â¥â¥Ð¾â¥â¥â¥Ð¾â¥â¥â¥tâ¥â¥â¥Ñƒhole",
    ["Butt"] = "buâ¥â¥â¥â¥â¥â¥â¥â¥tt",
    ["Booty"] = "bÐ¾Ð¾ty",
    ["Boobs"] = "bÐ¾Ð¾bÑ•",
    ["Boob"] = "bÐ¾Ð¾b",
    ["Breats"] = "BrÐµÐ°Ñ•tÑ•",
    ["Bbc"] = "Bâ¥â¥â¥bâ¥â¥â¥Ñ",
    ["Cocaine"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥Ñâ¥â¥â¥Ð°â¥â¥â¥iâ¥â¥â¥nâ¥â¥â¥Ðµ",
    ["Creampie"] = "Ñâ¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥Ð°â¥â¥â¥mâ¥â¥â¥Ñ€â¥â¥â¥iâ¥â¥â¥Ðµ",
    ["Cum"] = "Ñâ¥â¥â¥â¥um",
    ["Cunts"] = "Ñuâ¥â¥â¥â¥â¥â¥â¥â¥ntÑ•",
    ["Cunt"] = "Ñó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €–ó €•uâ¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €–ó €•nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥t",
    ["Cock"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥Ñâ¥â¥â¥k",
    ["Cuck"] = "Ñâ¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥k",
    ["Cuckold"] = "Ñâ¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥kâ¥â¥â¥Ð¾â¥â¥â¥Óâ¥â¥â¥dâ¥â¥â¥",
    ["Condoms"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥mâ¥â¥â¥s",
    ["Condom"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥m",
    ["Coochies"] = "cooÑâ¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥es",
    ["Coochie"] = "Ñâ¥â¥â¥Ð¾â¥â¥â¥oâ¥â¥â¥Ñâ¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥Ðµ",
    ["Dumbass"] = "Duâ¥â¥â¥â¥â¥â¥mbâ¥â¥â¥â¥â¥â¥Ð°Ñ•Ñ•",
    ["Discord"] = "DÑ–Ñ•ÑÐ¾rd",
    ["Dickhead"] = "Dï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°cï¿°ï¿°ï¿°ï¿°ï¿°khï¿°ï¿°ï¿°ï¿°ï¿°ead",
    ["Dick"] = "Dâ¥â¥â¥â¥ió €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥có €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥k",
    ["Damn"] = "Dâ¥â¥â¥Ð°â¥â¥â¥mâ¥â¥â¥nâ¥â¥â¥",
    ["Fatass"] = "Fatï¿°ï¿°ï¿°Ð°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°â¥Ñ•ï¿°ï¿°Ñ•",
    ["Fucked"] = "Fï¿°ï¿°ï¿°ï¿°ï¿°ï¿°uÑï¿°ï¿°ó €•ó €•ó €•ó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°eï¿°ï¿°ï¿°ï¿°d",
    ["Femboy"] = "FÐµmbÐ¾y",
    ["Femboys"] = "FÐµmbÐ¾ys",
    ["Horny"] = "Ò»â¥â¥â¥â¥â¥Ð¾ó €•ó €•ó €•ó €•râ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ñƒ",
    ["Hitler"] = "Ðiâ¥â¥â¥â¥â¥â¥â¥â¥tÓâ¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥r",
    ["Hentai"] = "Hó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•eó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•i", 
    ["hentai"] = "hó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•eó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•i", 
    ["Hoes"] = "Ò»Ð¾ÐµÑ•",
    ["Hoe"] = "Ò»Ð¾Ðµ",
    ["Kys"] = "Kâ¥â¥â¥â¥â¥â¥â¥â¥yâ¥â¥â¥Ñ•",
    ["Lmfao"] = "Lmâ¥â¥â¥â¥â¥â¥â¥â¥fÐ°â¥â¥Ð¾",
    ["Motherfucker"] = "Motï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°hï¿°eï¿°rfï¿°ï¿°ï¿°ï¿°ï¿°uï¿°Ñï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°eï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°r",
    ["Masturbating"] = "Mâ¥â¥â¥Ð°â¥â¥â¥Ñ•â¥â¥â¥tâ¥â¥â¥uâ¥â¥â¥râ¥â¥â¥bâ¥â¥â¥Ð°â¥â¥â¥tâ¥â¥â¥ing",
    ["Meth"] = "MÐµâ¥â¥â¥â¥â¥â¥â¥â¥th",
    ["Naked"] = "NÐ°kÐµd",
    ["Nudes"] = "NudÐµÑ•",
    ["Orgasm"] = "Ð¾rgâ¥â¥â¥â¥Ð°Ñ•m",
    ["Omfg"] = "Ð¾mâ¥â¥â¥â¥â¥â¥â¥â¥fg",
    ["Pedophile"] = "pâ¥â¥Ðµâ¥â¥â¥dâ¥â¥â¥â¥â¥â¥â¥Ð¾Ñ€â¥â¥hÑ–Óâ¥â¥â¥â¥â¥â¥â¥Ðµ",
    ["Pornhub"] = "Ñ€Ð¾rnhub",
    ["Penis"] = "penó €•ó €–ó €—ó €˜ó €•ó €–â¥â¥â¥â¥â¥â¥â¥â¥ó €•Ñ–ó €–ó €—ó €˜ó €–ó €—Ñ•",
    ["Porn"] = "Ñ€Ð¾rn",
    ["Pussies"] = "Ñ€â¥â¥â¥uâ¥â¥â¥sâ¥â¥â¥sâ¥â¥â¥iâ¥â¥â¥Ðµâ¥â¥â¥s",
    ["Pussy"] = "Ñ€â¥â¥â¥uâ¥â¥â¥sâ¥â¥â¥sâ¥â¥â¥Ñƒ",
    ["Rape"] = "RÐ°Ñ€Ðµ",
    ["Stripper"] = "StrÑ–Ñ€Ñ€Ðµr",
    ["Slave"] = "Ñ•â¥â¥â¥Óâ¥â¥â¥Ð°â¥â¥â¥vâ¥â¥â¥Ðµ",
    ["Seduce"] = "Ñ•ÐµduÑÐµ",
    ["Slut"] = "Ñ•Óâ¥â¥â¥â¥â¥â¥â¥â¥ut",
    ["Shit"] = "â¥â¥â¥Ñ•â¥â¥â¥hâ¥â¥â¥iâ¥â¥â¥t",
    ["Sexy"] = "Ñ•ÐµÑ…Ñƒ",
    ["Sex"] = "Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥",
    ["Retarded"] = "RÐµtÐ°rded",
    ["Retard"] = "Râ¥â¥â¥â¥eâ¥â¥â¥tâ¥â¥â¥â¥aâ¥â¥â¥râ¥â¥â¥â¥d",
    ["Titties"] = "Tâ¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥Ñ•",
    ["Thots"] = "Tâ¥â¥â¥â¥â¥â¥â¥â¥hâ¥â¥â¥â¥â¥â¥â¥â¥otÑ•",
    ["Thot"] = "Tâ¥â¥â¥â¥â¥â¥â¥â¥hâ¥â¥â¥â¥â¥â¥â¥â¥ot",
    ["Tits"] = "Tâ¥â¥â¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥â¥â¥ts",
    ["Tit"] = "TÑ–t",
    ["Virginity"] = "Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°tï¿°ï¿°ï¿°Ñƒ",
    ["Virgin"] = "Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°s",
    ["Vagina"] = "Vó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•gó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•a",
    ["fuck you"] = "fó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ucó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–kyó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–oó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–u",
    ["what the fuck"] = "whaâ¥â¥â¥â¥â¥â¥ttâ¥â¥â¥â¥â¥â¥Ò»Ðµfâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uÑâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥k",
    ["shut the fuck up"] = "sÒ»â¥â¥â¥â¥â¥â¥uttâ¥â¥â¥â¥â¥â¥Ò»Ðµfâ¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥câ¥kuâ¥â¥â¥â¥â¥â¥â¥â¥â¥p",
    ["go fuck yourself"] = "gofâ¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥câ¥kÑƒâ¥â¥â¥â¥â¥Ð¾â¥â¥urself",
    ["fuck"] = "fâ¥â¥â¥â¥â¥â¥â¥â¥uÑk", --Sometimes works
    ["fucking"] = "fâ¥â¥â¥â¥â¥â¥â¥â¥uÑking",
    ["Fuck"] = "Fâ¥â¥â¥â¥â¥â¥â¥â¥uÑk",
    ["Fucking"] = "Fâ¥â¥â¥â¥â¥â¥â¥â¥uÑking",
    ["FUCKING"] = " Fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥UÐ¡ÎšÓ€ó €•ó €•ó €•ó €–ó €•Nâ¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•G ", 
    ["FUCKERS"] = "Fó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Có €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Îšó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Eó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•RS",
    ["FUCKER"] = "Fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥UÐ¡Îšó €•ó €•ó €•ER",
    ["FUCK"] = "Fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥UÐ¡Îš", --always works
    ["FUCKS"] = "Fâ¥â¥â¥â¥Uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥Có €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥ÎšS", 
    ["bites your cock"] = "bitesyourÑÐ¾â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñk", --Sentences that dont work normally
    ["big black cock"] = "big black ÑÐ¾Ñk",
    ["suck my cock retard"] = "Ñ•uÑk my ÑÐ¾Ñk retâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°rd",
    ["i pull all the bitches"] = "i pull all the bitÑÒ»Ðµs",
    ["small penis"] = "small Ñ€enâ¥â¥â¥â¥â¥â¥â¥â¥iÑ•",
    ["nigger"] = "nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐµr",
    ["suck my cock"] = "Ñ•â¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥kmyÑÐ¾â¥â¥â¥Ñk",
    ["lets have sex"] = "â¥â¥â¥Óâ¥â¥â¥Ðµâ¥â¥â¥tâ¥â¥â¥Ñ• â¥â¥â¥Ò»â¥â¥â¥Ð°â¥â¥â¥vâ¥â¥â¥Ðµâ¥â¥â¥ Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥",
    ["I HAVE A MASSIVE COCK"] = "I HAVE A MASSIVE Ð¡ÐžÐ¡K",
    ["SHUT THE FUCK UP"] = "SHUTTHEFï¿°ï¿°ï¿°ï¿°ï¿°ï¿°UÐ¡ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ÎšUÐ ",
    ["I AM ABOUT TO CUM"] = "IÐÐœ ÐÐ’OUï¿°ï¿°ï¿°TTOÐ¡ï¿°ï¿°ï¿°Uï¿°ï¿°ï¿°Ðœ",
    ["wife"] = "wÑ–fÐµ", --Extra
    ["suck"] = "Ñ•uÑk",
    ["love"] = "Óâ¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥vÐµ",
    ["pregnant"] = "Ñ€rÐµgnÐ°nt",
    ["mommy"] = "mÐ¾mmÑƒ",
    ["daddy"] = "dâ¥â¥â¥Ð°â¥â¥â¥dâ¥â¥â¥dâ¥â¥â¥Ñƒ",
    ["WIFE"] = "WIFÎ•",
    ["SUCK"] = "SUÐ¡K",
    ["kill"] = "kó €•ó €•ó €•Ñ–ó €•ó €•ó €•ló €•ó €•ó €•Ó",
    ["yourself"] = "ÑƒÐ¾ó €•ó €•â¥â¥â¥â¥uró €•ó €•â¥â¥â¥â¥Ñ•ó €•ó €•â¥â¥â¥â¥Ðµlf",
    ["E-Rape"] = "Ð•-RÐ°Ñ€Ðµ",
    ["pedo"] = "pâ¥â¥Ðµâ¥â¥â¥dâ¥â¥â¥â¥â¥â¥â¥Ð¾"
}

local default = ""

local player = players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local chatGui, chatBar = playerGui:WaitForChild("Chat")

repeat task.wait() until chatGui:FindFirstChild("ChatBar", true)
chatBar = chatGui:FindFirstChild("ChatBar", true)

do
    local randomstr = function()
        local characters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
        local str = ""
        local length = math.random(12, 32)

        for i = 1, length do
            str = str .. characters[math.random(#characters)]
        end
        return str
    end
    task.spawn(function()
        while wait(.1) do
            if chatBar:IsFocused() then
                chatService:FilterStringForBroadcast(randomstr(), player)
            end
        end
    end)
end

local c = function()
    for i = 1, 2 do
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/e Hey how are you doing?", "All")
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/e How are you doing?", "All")
    end
end

local old
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and self.Name == "SayMessageRequest" and #args == 2 and not checkcaller() then
        local newMessage = args[1]
        for i,v in pairs(custom_chars) do
            local rep = string.gsub(newMessage, i, v .. "â¥")
            newMessage = rep
        end
        newMessage = "" .. newMessage .. default

        args[1] = newMessage
        coroutine.wrap(c)
        return old(self, unpack(args))
    end
    return old(self, ...)
end))
    end
})

  Tab:AddButton({
    Name = "Fix Bypasses",
    Callback = function()
game.StarterGui:SetCore("SendNotification", {Title="Info"; Text="The button prevents tagging; once clicked, it stops tagging the bypasses for a bit."; Duration=5;})
      game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("abcdeABCDE12345~`|â€¢âˆš?x", "All")
    end
})

local Section = Tab:AddSection({
    Name = "lowecase A-Z"
})

  Tab:AddButton({
    Name = "ass",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°Ñ•Ñ•â¥â¥â¥Ò»Ð¾lÐµ", "All")
    end
})

  Tab:AddButton({
    Name = "asshole",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°â¥â¥â¥Ñ•â¥â¥â¥Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "anus",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°â¥â¥â¥nâ¥â¥â¥uâ¥â¥â¥Ñ•â¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "arse ",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°râ¥â¥Ñ•â¥Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "anal",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°nâ¥â¥â¥â¥Ð°l", "All")
    end
})

  Tab:AddButton({
    Name = "Boner",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥Ð’â¥â¥oâ¥â¥nâ¥â¥Ðµâ¥â¥r", "All")
    end
})

  Tab:AddButton({
    Name = "blowjob",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("blowâ¥â¥â¥jâ¥â¥â¥Ð¾â¥â¥â¥bâ¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "bitches ",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bï¿°ï¿°iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°tï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°cï¿°ï¿°ï¿°Ò»es", "All")
    end
})

  Tab:AddButton({
    Name = "bitch ",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bó €—ó €•iâ¥â¥â¥â¥tó €—ó €•ó €•ó €•ó €•â¥â¥â¥â¥ÑÒ»", "All")
    end
})

  Tab:AddButton({
    Name = "boobies ",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bÐ¾â¥â¥â¥â¥â¥â¥â¥â¥Ð¾bÑ–Ðµs", "All")
    end
})

  Tab:AddButton({
    Name = "bullshit ",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bulÓsÒ»â¥â¥â¥â¥â¥â¥â¥â¥Ñ–t", "All")
    end
})

  Tab:AddButton({
    Name = "bastard ",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("basâ¥â¥â¥â¥â¥â¥â¥â¥tard", "All")
    end
})

  Tab:AddButton({
    Name = "beaner",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bâ¥â¥â¥Ðµâ¥â¥â¥Ð°â¥â¥â¥nâ¥â¥â¥Ðµâ¥â¥â¥r", "All")
    end
})

  Tab:AddButton({
    Name = "bondage",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð°â¥â¥â¥gâ¥â¥â¥Ðµâ¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "butthole",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("buâ¥â¥â¥â¥â¥â¥â¥â¥tthÐ¾le", "All")
    end
})

  Tab:AddButton({
    Name = "bootyhole",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bâ¥â¥â¥Ð¾â¥â¥â¥Ð¾â¥â¥â¥tâ¥â¥â¥Ñƒhole", "All")
    end
})

  Tab:AddButton({
    Name = "butt",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("buâ¥â¥â¥â¥â¥â¥â¥â¥tt", "All")
    end
})

  Tab:AddButton({
    Name = "booty",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bÐ¾Ð¾ty", "All")
    end
})

  Tab:AddButton({
    Name = "boobs",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bÐ¾Ð¾bÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "boob",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bÐ¾Ð¾b", "All")
    end
})

  Tab:AddButton({
    Name = "breasts",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("brÐµÐ°Ñ•tÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "bbc",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bâ¥â¥â¥bâ¥â¥â¥Ñ", "All")
    end
})

  Tab:AddButton({
    Name = "cocaine",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥Ð¾â¥â¥â¥Ñâ¥â¥â¥Ð°â¥â¥â¥iâ¥â¥â¥nâ¥â¥â¥Ðµ", "All")
    end
})


  Tab:AddButton({
    Name = "creampie",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥Ð°â¥â¥â¥mâ¥â¥â¥Ñ€â¥â¥â¥iâ¥â¥â¥Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "cumming",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥â¥umming", "All")
    end
})

  Tab:AddButton({
    Name = "cum",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥â¥um", "All")
    end
})


  Tab:AddButton({
    Name = "cunts",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñuâ¥â¥â¥â¥â¥â¥â¥â¥ntÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "cunt",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €–ó €•uâ¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•ó €–ó €•nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥t", "All")
    end
})

  Tab:AddButton({
    Name = "cock",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥Ð¾â¥â¥â¥Ñâ¥â¥â¥k", "All")
    end
})

  Tab:AddButton({
    Name = "clit",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñó €•ó €•â¥Ð†ó €•ó €•â¥Ñ–ó €•ó €•â¥t", "All")
    end
})

  Tab:AddButton({
    Name = "cuck",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥k", "All")
    end
})

  Tab:AddButton({
    Name = "cuckold",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥kâ¥â¥â¥Ð¾â¥â¥â¥Óâ¥â¥â¥dâ¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "condoms",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥mâ¥â¥â¥s", "All")
    end
})


  Tab:AddButton({
    Name = "condom",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥m", "All")
    end
})

  Tab:AddButton({
    Name = "coochies",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cooÑâ¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥es", "All")
    end
})


  Tab:AddButton({
    Name = "coochie",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥Ð¾â¥â¥â¥oâ¥â¥â¥Ñâ¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "cunny",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñuâ¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥â¥nÑƒ", "All")
    end
})

  Tab:AddButton({
    Name = "dumbass",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("duâ¥â¥â¥â¥â¥â¥mbâ¥â¥â¥â¥â¥â¥Ð°Ñ•Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "dickhead",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("dï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°cï¿°ï¿°ï¿°ï¿°ï¿°khï¿°ï¿°ï¿°ï¿°ï¿°ead", "All")
    end
})

  Tab:AddButton({
    Name = "discord",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("dÑ–Ñ•ÑÐ¾rd", "All")
    end
})

  Tab:AddButton({
    Name = "damn",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("dâ¥â¥â¥Ð°â¥â¥â¥mâ¥â¥â¥nâ¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "doggystyle",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("dâ¥â¥â¥Ð¾ggystyle", "All")
    end
})

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð•-RÐ°Ñ€Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "fatass",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fatï¿°ï¿°ï¿°Ð°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°â¥Ñ•ï¿°ï¿°Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "fucked",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fï¿°ï¿°ï¿°ï¿°ï¿°ï¿°uÑï¿°ï¿°ó €•ó €•ó €•ó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°eï¿°ï¿°ï¿°ï¿°d", "All")
    end
})

  Tab:AddButton({
    Name = "fuckers (semi-brocken)",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ó €•ó €•ó €•fï¿°ï¿°ï¿°ï¿°ï¿°ï¿°uÑï¿°ï¿°ó €•ó €•ó €•ó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°eï¿°ï¿°ï¿°ï¿°ó €•ó €•ó €•rÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "fap",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fâ¥ó €•â¥â¥Ð°â¥ó €•â¥â¥Ñ€", "All")
    end
})

  Tab:AddButton({
    Name = "femboys",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fÐµmbÐ¾ys", "All")
    end
})

  Tab:AddButton({
    Name = "femboy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fÐµmbÐ¾y", "All")
    end
})

  Tab:AddButton({
    Name = "fanny",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("faâ¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥â¥nÑƒ", "All")
    end
})

  Tab:AddButton({
    Name = "horny",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ò»â¥â¥â¥â¥â¥Ð¾ó €•ó €•ó €•ó €•râ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ñƒ", "All")
    end
})

  Tab:AddButton({
    Name = "Hitler",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ðiâ¥â¥â¥â¥â¥â¥â¥â¥tÓâ¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥r", "All")
    end
})

  Tab:AddButton({
    Name = "hentai",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("hó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•eó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•i", "All")
    end
})

  Tab:AddButton({
    Name = "hoes",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ò»Ð¾ÐµÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "hoe",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ò»Ð¾Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "instagram",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥nó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ñ•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥tÐ°gó €•ó €•ó €•ó €•rÐ°m", "All")
    end
})

  Tab:AddButton({
    Name = "insta",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ió €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥nó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥só €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥ta", "All")
    end
})

  Tab:AddButton({
    Name = "kys",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("kâ¥â¥â¥â¥â¥â¥â¥â¥yâ¥â¥â¥Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "Lmfao",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Lmâ¥â¥â¥â¥â¥â¥â¥â¥fâ¥â¥Ð°Ð¾", "All")
    end
})

  Tab:AddButton({
    Name = "lmfao",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ómâ¥â¥â¥â¥â¥â¥â¥â¥fÐ°â¥â¥Ð¾", "All")
    end
})

  Tab:AddButton({
    Name = "lmao",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Óó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•â¥â¥â¥â¥maÐ¾", "All")
    end
})

  Tab:AddButton({
    Name = "motherfucker",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("motï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°hï¿°eï¿°rfï¿°ï¿°ï¿°ï¿°ï¿°uï¿°Ñï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°kï¿°eï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°r", "All")
    end
})

  Tab:AddButton({
    Name = "masturbate",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ñ•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•ró €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•bó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•tó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•e", "All")
    end
})

  Tab:AddButton({
    Name = "masturbating",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mâ¥â¥â¥Ð°â¥â¥â¥Ñ•â¥â¥â¥tâ¥â¥â¥uâ¥â¥â¥râ¥â¥â¥bâ¥â¥â¥Ð°â¥â¥â¥tâ¥â¥â¥ing", "All")
    end
})

  Tab:AddButton({
    Name = "molest",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mâ¥â¥â¥â¥oâ¥â¥â¥â¥Óâ¥â¥â¥â¥Ðµâ¥â¥â¥Ñ•â¥â¥â¥â¥t", "All")
    end
})

  Tab:AddButton({
    Name = "meth",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mÐµâ¥â¥â¥â¥â¥â¥â¥â¥th", "All")
    end
})

  Tab:AddButton({
    Name = "naked",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("nÐ°kÐµd", "All")
    end
})

  Tab:AddButton({
    Name = "negro",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("nó €•ó €•ó €•ó €•ó €•ó €•ó €•eó €•ó €•ó €•ó €•ó €•ó €•ó €•gó €•ó €•ó €•ó €•ó €•ó €•ó €•ró €•ó €•ó €•ó €•ó €•ó €•ó €•o", "All")
    end
})

  Tab:AddButton({
    Name = "nipples",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("nó €•ó €•â¥ió €•ó €•â¥â¥ó €•Ñ€â¥pó €•ó €–â¥â¥ó €•ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•eó €–â¥â¥Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "nipple",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("nó €•ó €•â¥ió €•ó €•â¥â¥ó €•Ñ€â¥pó €•ó €–â¥â¥ó €•ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•eó €–â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "nudes",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("nudÐµÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "nude",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•dó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "orgasm",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¾rgâ¥â¥â¥â¥Ð°Ñ•m", "All")
    end
})

  Tab:AddButton({
    Name = "omfg",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¾mâ¥â¥â¥â¥â¥â¥â¥â¥fg", "All")
    end
})

  Tab:AddButton({
    Name = "pedophile",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("pâ¥â¥Ðµâ¥â¥â¥dâ¥â¥â¥â¥â¥â¥â¥Ð¾Ñ€â¥â¥hÑ–Óâ¥â¥â¥â¥â¥â¥â¥Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "pornhub",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥â¥Ñ€ó €•ó €•ó €•ó €•ó €•ó €•ó €•Ð¾ó €•ó €•ó €•ó €•ó €•ó €•ó €•ró €•ó €•ó €•ó €•ó €•ó €•ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•Ò»ó €•ó €•ó €•ó €•ó €•ó €•ó €•uó €•ó €•ó €•ó €•ó €•ó €•ó €•b", "All")
    end
})

  Tab:AddButton({
    Name = "penis",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("penó €•ó €–ó €—ó €˜ó €•ó €–â¥â¥â¥â¥â¥â¥â¥â¥ó €•Ñ–ó €–ó €—ó €˜ó €–ó €—Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "porn",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ€Ð¾rn", "All")
    end
})

  Tab:AddButton({
    Name = "pussies",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ€â¥â¥â¥uâ¥â¥â¥sâ¥â¥â¥sâ¥â¥â¥iâ¥â¥â¥Ðµâ¥â¥â¥s", "All")
    end
})

  Tab:AddButton({
    Name = "pussy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ€â¥â¥â¥uâ¥â¥â¥sâ¥â¥â¥sâ¥â¥â¥Ñƒ", "All")
    end
})

  Tab:AddButton({
    Name = "piss",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ€Ñ–ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €–ó €•ss", "All")
    end
})

  Tab:AddButton({
    Name = "queer",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("qâ¥â¥â¥uâ¥â¥â¥Ðµâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "retarded",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("rÐµtÐ°rded", "All")
    end
})
  Tab:AddButton({
    Name = "retard",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥â¥râ¥ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ðµó €–ó €•tâ€Šó €•ó €•ó €•ó €•ó €–ó €•Ð°â¥â¥â¥ó €•ó €•ó €•ó €–ó €•ró €•ó €•ó €•â¥â¥â¥â¥ó €•d", "All")
    end
})

  Tab:AddButton({
    Name = "rape",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("rÐ°Ñ€Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "schlong",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•ó €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–có €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–hó €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–ló €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–oó €•ó €–ó €—ï¿°ï¿°ï¿°ï¿°ó €˜ó €˜ó €•ó €–ng", "All")
    end
})

  Tab:AddButton({
    Name = "stripper",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•trÑ–Ñ€Ñ€Ðµr", "All")
    end
})

  Tab:AddButton({
    Name = "slave",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•â¥â¥â¥Óâ¥â¥â¥Ð°â¥â¥â¥vâ¥â¥â¥Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "sperm",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•pÐµó €•ï¿°ï¿°ï¿°ï¿°ó €–rï¿°ó €–m", "All")
    end
})

  Tab:AddButton({
    Name = "seduce",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•ÐµduÑÐµ", "All")
    end
})

  Tab:AddButton({
    Name = "slut",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("sÓut", "All")
    end
})

  Tab:AddButton({
    Name = "shit",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥â¥â¥Ñ•â¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥t", "All")
    end
})

  Tab:AddButton({
    Name = "sexy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•ÐµÑ…Ñƒ", "All")
    end
})

  Tab:AddButton({
    Name = "sex",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "titties",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("tâ¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "thots",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("tâ¥â¥â¥â¥â¥â¥â¥â¥hâ¥â¥â¥â¥â¥â¥â¥â¥otÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "thot",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("tâ¥â¥â¥â¥â¥â¥â¥â¥hâ¥â¥â¥â¥â¥â¥â¥â¥ot", "All")
    end
})

  Tab:AddButton({
    Name = "tits",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("tâ¥â¥â¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥â¥â¥ts", "All")
    end
})

  Tab:AddButton({
    Name = "tit",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("tÑ–t", "All")
    end
})

  Tab:AddButton({
    Name = "virginity",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°tï¿°ï¿°ï¿°Ñƒ", "All")
    end
})

  Tab:AddButton({
    Name = "virgins",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("virï¿°gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ñ–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°s", "All")
    end
})

  Tab:AddButton({
    Name = "virgin",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("vó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €˜Ñ–ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €˜ró €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €–gó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €˜Ñ–ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°n", "All")
    end
})

  Tab:AddButton({
    Name = "vagina",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("vó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•aó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•gó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ñ–ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•a", "All")
    end
})

  Tab:AddButton({
    Name = "whore",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("wâ¥â¥â¥Ò»â¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "weed",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥â¥â¥â¥wâ¥ó €•â¥eed", "All")
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

  Tab:AddButton({
    Name = "ASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐ…Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "ASSHOLE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐ…Ð…ÐÐžLÐ•", "All")
    end
})

  Tab:AddButton({
    Name = "ANUS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Îó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "ARSE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ró €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ð…ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Ð•", "All")
    end
})

  Tab:AddButton({
    Name = "ANAL",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÎâ¥â¥â¥â¥â¥â¥ÐL", "All")
    end
})

  Tab:AddButton({
    Name = "BASTARD",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ÐÐ…Ð¢ÐRD", "All")
    end
})

  Tab:AddButton({
    Name = "BONDAGE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ðžó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Îó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Dó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐGÐ•", "All")
    end
})

  Tab:AddButton({
    Name = "BONER",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥Ð’â¥â¥Oâ¥â¥Nâ¥â¥Ð•â¥â¥R", "All")
    end
})

  Tab:AddButton({
    Name = "BITCHES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¢ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¡ÐÐ•S", "All")
    end
})

  Tab:AddButton({
    Name = "BITCH",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¢ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¡Ð", "All")
    end
})

  Tab:AddButton({
    Name = "BLOWJOB",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("BLOWÐˆOB", "All")
    end
})

  Tab:AddButton({
    Name = "BULLSHIT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ó €•ó €•ó €•ó €•Uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥LLâ¥â¥â¥Ð…â¥â¥â¥Ðâ¥â¥â¥Ó€â¥â¥â¥Ð¢", "All")
    end
})

  Tab:AddButton({
    Name = "BOOBS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ÐžÐžÐ’S", "All")
    end
})

  Tab:AddButton({
    Name = "BOOB",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ÐžÐžÐ’", "All")
    end
})

  Tab:AddButton({
    Name = "BUTTHOLE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’UÐ¢Ð¢â¥â¥â¥â¥ÐOLÐ•", "All")
    end
})

  Tab:AddButton({
    Name = "BUTT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’UÐ¢Ð¢", "All")
    end
})

  Tab:AddButton({
    Name = "BOOTY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ÐžÐžÐ¢Î¥", "All")
    end
})

  Tab:AddButton({
    Name = "BEANER",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Îó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥R", "All")
    end
})

  Tab:AddButton({
    Name = "COCAINE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐžÐ¡Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ó€Îó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•", "All")
    end
})

  Tab:AddButton({
    Name = "CUNTS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡Uâ¥â¥â¥â¥â¥â¥â¥â¥NÐ¢Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "CUNT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡Uâ¥â¥â¥â¥â¥â¥â¥â¥NÐ¢", "All")
    end
}) 

  Tab:AddButton({
    Name = "COOCHIES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ó €•ó €•ó €•Oó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐžÐ¡Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ó€ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•S", "All")
    end
})

  Tab:AddButton({
    Name = "COOCHIE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ó €•ó €•ó €•Oó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐžÐ¡Ðó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ó€ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•", "All")
    end
})

  Tab:AddButton({
    Name = "CUM",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡UÐœ", "All")
    end
})

  Tab:AddButton({
    Name = "CREAMPIE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ró €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð•ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥ÐÐœó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥PIE", "All")
    end
})

  Tab:AddButton({
    Name = "COCK",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ÐžÐ¡K", "All")
    end
})

  Tab:AddButton({
    Name = "CUCKOLD",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Uó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥KOLD", "All")
    end
})

  Tab:AddButton({
    Name = "CUCK",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Uó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥Ð¡ó €•ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥K", "All")
    end
})

  Tab:AddButton({
    Name = "DISCORD",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("DÓ€Ð…Ð¡ÐžRD", "All")
    end
})

  Tab:AddButton({
    Name = "DUMBASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Dó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €•ó €•UMâ¥â¥â¥â¥â¥â¥â¥â¥â¥BÐÐ…Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "DICKHEAD",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Dâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥IÐ¡ÎšÐÐ•ó €•â¥â¥ó €•AD", "All")
    end
})

  Tab:AddButton({
    Name = "DICK",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Dâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥IÐ¡Îš", "All")
    end
})

  Tab:AddButton({
    Name = "DAMN",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("DÐÐœÎ", "All")
    end
})

  Tab:AddButton({
    Name = "FAGGOT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fó €•ó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €•ó €–ó €—ó €˜Ðó €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €•Gâ¥â¥ó €–ó €—ó €˜ó €–ó €—ó €˜â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €˜ó €˜Gó €–ó €—ó €˜ó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ðžó €–ó €—ó €˜ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—Ð¢", "All")
    end
})


  Tab:AddButton({
    Name = "FATASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fâ¥â¥â¥Ðâ¥â¥â¥Ð¢Ðâ¥â¥â¥Ð…â¥â¥â¥Ð…", "All")
    end
})
  Tab:AddButton({
    Name = "FEMBOYS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("FÐ•ÐœÐ’ÐžÎ¥Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "FEMBOY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("FÐ•ÐœÐ’ÐžÎ¥", "All")
    end
})

  Tab:AddButton({
    Name = "FUCKERS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Có €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Îšó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Eó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•RS", "All")
    end
})

  Tab:AddButton({
    Name = "FUCKER",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥UÐ¡Îšó €•ó €•ó €•ER", "All")
    end
})


  Tab:AddButton({
    Name = "HITLER",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÓ€â¥â¥â¥â¥â¥â¥â¥â¥Ð¢Lâ¥â¥â¥â¥â¥â¥â¥â¥Ð•â¥â¥R", "All")
    end
})


  Tab:AddButton({
    Name = "HENTAI",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐ•â¥â¥â¥â¥Îâ¥Ð¢ÐÓ€", "All")
    end
})

  Tab:AddButton({
    Name = "HORNY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐžRNY", "All")
    end
})

  Tab:AddButton({
    Name = "HOES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐžÐ•Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "HOE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐžÐ•", "All")
    end
})

  Tab:AddButton({
    Name = "KYS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Kâ¥â¥â¥â¥â¥â¥â¥â¥Î¥â¥â¥â¥S", "All")
    end
})

  Tab:AddButton({
    Name = "LMFAO",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LÐœFÐÐž", "All")
    end
})

  Tab:AddButton({
    Name = "LMAO",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LÐœÐÐž", "All")
    end
})

  Tab:AddButton({
    Name = "MOTHERFUCKER",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("MOTHERFï¿°ï¿°ï¿°ï¿°ï¿°ï¿°UÐ¡ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Îšï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Eï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°R", "All")
    end
})

  Tab:AddButton({
    Name = "MASTURBATE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐœÐÐ…Ð¢URÐ’ÐÐ¢Î•", "All")
    end
})


  Tab:AddButton({
    Name = "METH",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐœETH", "All")
    end
})

  Tab:AddButton({
    Name = "NAKED",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÎÎ‘KÎ•D", "All")
    end
})

  Tab:AddButton({
    Name = "NEGRO",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("NEó €•ó €•â¥â¥ó €•Gó €•ó €–â¥â¥ó €•Ró €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•O", "All")
    end
})


  Tab:AddButton({
    Name = "NUDES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÎUDÐ•Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "NUDE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Nó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Uó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•Dó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €•ó €–ó €•E", "All")
    end
})

  Tab:AddButton({
    Name = "NIPPLES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Îó €•ó €•â¥Ó€ó €•ó €•â¥â¥ó €•Pâ¥â¥Pó €•ó €–â¥â¥ó €•Ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•Ð•ó €–â¥â¥Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "NIPPLE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Îó €•ó €•â¥Ó€ó €•ó €•â¥â¥ó €•Pâ¥â¥Pó €•ó €–â¥â¥ó €•Ló €•ó €•ó €•â¥â¥ó €•ó €•ó €–ó €•Ð•ó €–â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "OMFG",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐžMâ¥â¥â¥â¥â¥â¥â¥â¥FG", "All")
    end
})

  Tab:AddButton({
    Name = "PENIS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("PENâ¥â¥Ó€S", "All")
    end
})


  Tab:AddButton({
    Name = "PUSSIES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð â¥â¥â¥Uâ¥â¥â¥Ð…â¥â¥â¥Sâ¥â¥â¥Ó€â¥â¥â¥Ð•â¥â¥â¥Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "PUSSY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð â¥â¥â¥Uâ¥â¥â¥Ð…â¥â¥â¥Sâ¥â¥â¥Î¥", "All")
    end
})


  Tab:AddButton({
    Name = "PISS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð Ó€Ð…Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "PORN",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð ÐžRÎ", "All")
    end
})


  Tab:AddButton({
    Name = "RETARD",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Râ¥â¥â¥â¥â¥â¥â¥Eâ¥â¥â¥â¥â¥â¥Tâ¥â¥â¥â¥â¥â¥â¥Aâ¥â¥â¥â¥â¥â¥Râ¥â¥â¥â¥â¥â¥â¥D", "All")
    end
})

  Tab:AddButton({
    Name = "RAPE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("RÐÐ Ð•", "All")
    end
})


  Tab:AddButton({
    Name = "SHIT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…Hâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥IT", "All")
    end
})

  Tab:AddButton({
    Name = "SLUT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…Lâ¥â¥â¥â¥UÐ¢", "All")
    end
})


  Tab:AddButton({
    Name = "SLAVE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…LÐó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–ó €—ó €•ó €•ó €•ó €•ó €•ó €–ó €–VE", "All")
    end
})

  Tab:AddButton({
    Name = "SEX",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…Ð•Ð¥", "All")
    end
})


  Tab:AddButton({
    Name = "TITTIES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¢IÐ¢Ð¢IES", "All")
    end
})

  Tab:AddButton({
    Name = "TITS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¢IÐ¢Ð…", "All")
    end
})


  Tab:AddButton({
    Name = "THOTS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¢Ðâ¥â¥â¥â¥â¥ÐžÐ¢Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "THOT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¢Ðâ¥â¥â¥â¥â¥ÐžÐ¢", "All")
    end
})



  Tab:AddButton({
    Name = "VIRGINITY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ó€ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ó€ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ÎITY", "All")
    end
})

  Tab:AddButton({
    Name = "VIRGINS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°INS", "All")
    end
})



  Tab:AddButton({
    Name = "VIRGIN",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Rï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°N", "All")
    end
})

  Tab:AddButton({
    Name = "VAGINA",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Vï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ðï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Gï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ó€ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Nï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð", "All")
    end
})



  Tab:AddButton({
    Name = "XXX",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Xâ¥â¥â¥â¥XX", "All")
    end
})

  Tab:AddButton({
    Name = "WHORE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Wâ¥â¥â¥Ðâ¥â¥â¥Ðžâ¥â¥â¥Râ¥â¥â¥Ð•", "All")
    end
})


local Tab = Window:MakeTab({
    Name = "Sentences",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "lowercase A-Z"
})

  Tab:AddButton({
    Name = "anal sex pls",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°nâ¥â¥â¥â¥Ð°l Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥ pls", "All")
    end
})

  Tab:AddButton({
    Name = "anal sex",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°nâ¥â¥â¥â¥Ð°l Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…", "All")
    end
})


  Tab:AddButton({
    Name = "ass sex pls",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°â¥â¥â¥â¥Ñ•Ñ•sâ¥â¥â¥â¥ÐµÑ…pÓs", "All")
    end
})

  Tab:AddButton({
    Name = "Boom cockshot!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’â¥â¥â¥â¥Ð¾â¥â¥â¥â¥Ð¾â¥â¥â¥â¥mâ¥â¥â¥â¥ Ñâ¥â¥â¥â¥Ð¾â¥â¥â¥â¥Ñâ¥â¥â¥â¥kâ¥â¥â¥â¥Ñ•â¥â¥â¥â¥hâ¥â¥â¥â¥Ð¾â¥â¥â¥â¥tâ¥â¥â¥â¥!", "All")
    end
})

  Tab:AddButton({
    Name = "boner alert!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bâ¥â¥â¥oâ¥â¥â¥nâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥ â¥â¥â¥Ð°â¥â¥â¥Óâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥tâ¥â¥â¥!", "All")
    end
})

  Tab:AddButton({
    Name = "butt sex",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("buâ¥â¥â¥â¥â¥â¥â¥â¥tt Ñ•â¥â¥â¥Ðµx", "All")
    end
})

  Tab:AddButton({
    Name = "big cock",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bâ¥ig ÑÐ¾â¥â¥â¥Ñk", "All")
    end
})

  Tab:AddButton({
    Name = "boobs or ass?",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bâ¥â¥â¥Ð¾â¥â¥â¥Ð¾â¥â¥â¥bâ¥â¥â¥Ñ•â¥â¥â¥ â¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥ â¥â¥â¥Ð°â¥â¥â¥Ñ•â¥â¥â¥Ñ•?", "All")
    end
})



  Tab:AddButton({
    Name = "Big ass thighs",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Ñ–g Ð°Ñ•Ñ• thÑ–ghÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "big black cock",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("big black ÑÐ¾Ñk", "All")
    end
})



  Tab:AddButton({
    Name = "Big ass",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Ñ–g Ð°Ñ•Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "Be my wife!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Ðµ mÑƒ wÑ–fÐµ!", "All")
    end
})



  Tab:AddButton({
    Name = "Can I see those cute boobs of yours?",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡Ð°n Ð† Ñ•ÐµÐµ thÐ¾Ñ•Ðµ ÑutÐµ bÐ¾Ð¾bÑ• Ð¾f ÑƒÐ¾urÑ•?", "All")
    end
})

  Tab:AddButton({
    Name = "cock sucker",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÑÐ¾Ñk Ñ•uÑkÐµr", "All")
    end
})



  Tab:AddButton({
    Name = "Cum on me please!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡â¥â¥â¥â¥umonme please!", "All")
    end
})

  Tab:AddButton({
    Name = "cum please",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥â¥um Ñ€ÓÐµÐ°Ñ•Ðµ", "All")
    end
})


  Tab:AddButton({
    Name = "cut yourself.",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÑutyÐ¾urself.", "All")
    end
})

  Tab:AddButton({
    Name = "child porn",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñhild Ñ€Ð¾rn", "All")
    end
})



  Tab:AddButton({
    Name = "Cock incoming!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Có €•ó €•ó €•ó €•Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñkiâ¥â¥ó €•ó €•ó €•ó €•â¥nÑâ¥â¥ó €•ó €•ó €•ó €•â¥Ð¾ó €•ó €•ó €•ó €•mó €•ó €•ó €•ó €•ió €•ó €•ó €•ó €•nâ¥â¥â¥g!", "All")
    end
})

  Tab:AddButton({
    Name = "Cock in bedroom",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ó €•ó €•ó €•ó €•Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñó €•â¥â¥kÑ–â¥ó €•ó €•ó €•ó €•â¥â¥nbâ¥â¥Ðµó €•ó €•ó €•ó €•drâ¥Ð¾Ð¾m", "All")
    end
})



  Tab:AddButton({
    Name = "Cock or Boobs",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡â¥â¥â¥Ð¾â¥â¥â¥Ñâ¥â¥â¥kâ¥â¥â¥ â¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥ â¥â¥â¥Ð’â¥â¥â¥Ð¾â¥â¥â¥Ð¾â¥â¥â¥bâ¥â¥â¥Ñ•â¥â¥â¥?", "All")
    end
})

  Tab:AddButton({
    Name = "damn you got a long schlong daddy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("dâ¥â¥â¥Ð°â¥â¥â¥mâ¥â¥â¥nâ¥â¥â¥ â¥â¥â¥Ñƒâ¥â¥â¥Ð¾â¥â¥â¥uâ¥â¥â¥ â¥â¥â¥gâ¥â¥â¥Ð¾â¥â¥â¥tâ¥â¥â¥ â¥â¥â¥Ð°â¥â¥â¥ â¥â¥â¥Óâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥gâ¥â¥â¥ â¥â¥â¥Ñ•â¥â¥â¥Ñâ¥â¥â¥Ò»â¥â¥â¥Óâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥gâ¥â¥â¥ â¥â¥â¥dâ¥â¥â¥Ð°â¥â¥â¥dâ¥â¥â¥dâ¥â¥â¥Ñƒ", "All")
    end
})



  Tab:AddButton({
    Name = "dirty hoe",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("dâ¥â¥â¥â¥â¥â¥iâ¥â¥â¥â¥rtâ¥â¥â¥Ñƒâ¥â¥hâ¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥â¥e", "All")
    end
})

  Tab:AddButton({
    Name = "fuck yourself",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ó €•â¥â¥ó €•fâ¥â¥â¥â¥â¥â¥ó €•ó €•â¥â¥â¥â¥â¥â¥uÑó €•ó €•â¥â¥â¥â¥ó €•kó €•ó €•â¥â¥yó €•ó €•â¥â¥â¥â¥â¥â¥â¥ó €•Ð¾â¥â¥uâ¥â¥ó €•â¥râ¥â¥ó €•â¥â¥â¥â¥â¥Ñ•â¥â¥â¥ó €•â¥â¥â¥â¥ó €•ó €•ó €•eâ¥â¥lâ¥â¥f", "All")
    end
})

  Tab:AddButton({
    Name = "free porn",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("frÐµÐµ Ñ€Ð¾rn", "All")
    end
})


  Tab:AddButton({
    Name = "fatass hoe",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fó €˜ó €•ó €–ó €—Ð°tï¿°ï¿°ï¿°aï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°â¥Ñ•ï¿°ï¿°Ñ•Ò»â¥â¥â¥â¥â¥â¥â¥â¥â¥ó €˜ó €•ó €–ó €—Ð¾Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "fat ass",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fó €˜ó €•ó €–ó €—Ð°t ï¿°ï¿°ï¿°aï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°â¥Ñ•s", "All")
    end
})



  Tab:AddButton({
    Name = "go end your own life.",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("gÐ¾ Ðµnd ÑƒÐ¾ur Ð¾wn lÑ–fÐµ.", "All")
    end
})

  Tab:AddButton({
    Name = "Hail Hitler",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐ°â¥â¥â¥â¥â¥iÓÐiâ¥â¥â¥â¥â¥â¥â¥â¥tÓâ¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥r", "All")
    end
})



  Tab:AddButton({
    Name = "hardcore sex",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("hâ¥â¥â¥Ð°â¥â¥â¥râ¥â¥â¥dâ¥â¥â¥Ñâ¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥ Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "I eat pussy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Iâ¥â¥â¥â¥â¥â¥ Ðµâ¥â¥â¥â¥â¥â¥â¥Ð°t â¥â¥Ñ€â¥â¥â¥uâ¥â¥â¥â¥sâ¥â¥sÑƒ", "All")
    end
})



  Tab:AddButton({
    Name = "i love minors",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥â¥â¥Ñ– Óâ¥â¥â¥Ð¾â¥â¥â¥vâ¥â¥â¥Ðµ â¥â¥â¥mâ¥â¥â¥Ñ–â¥â¥â¥nâ¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥Ñ•", "All")
    end
})

  Tab:AddButton({
    Name = "i love you",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ– ÓÐ¾vÐµ ÑƒÐ¾u", "All")
    end
})



  Tab:AddButton({
    Name = "I love cocks",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Iâ¥â¥â¥â¥â¥â¥ Óâ¥â¥Ð¾â¥â¥vÐµ â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥kÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "i love boobs",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–â¥â¥â¥ â¥â¥â¥Óâ¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥vÐµ bÐ¾Ð¾bÑ•", "All")
    end
})



  Tab:AddButton({
    Name = "i like titties",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ– ÓÑ–kÐµ tÑ–ttÑ–Ðµs", "All")
    end
})

  Tab:AddButton({
    Name = "im gonna make you pregnant mommy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–m gÐ¾nnÐ° mÐ°kÐµ ÑƒÐ¾u Ñ€rÐµgnÐ°nt mÐ¾mmÑƒ", "All")
    end
})



  Tab:AddButton({
    Name = "i'm sexy, and you know it",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–'m Ñ•ÐµÑ…Ñƒ, Ð°nd ÑƒÎ¿Ï… knÎ¿w Ñ–t", "All")
    end
})

  Tab:AddButton({
    Name = "i'm horny so moan",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–'m Ò»â¥â¥â¥â¥â¥Ð¾ó €•ó €•ó €•ó €•râ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ñƒ Ñ•Î¿ mÎ¿Ð°n", "All")
    end
})



  Tab:AddButton({
    Name = "i'm mad horny",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–'m mad Ò»â¥â¥â¥â¥â¥Ð¾ó €•ó €•ó €•ó €•râ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ñƒ", "All")
    end
})

  Tab:AddButton({
    Name = "i'm gonna bang you hard",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–'m gÎ¿nnÐ° bÐ°ng ÑƒÎ¿u Ò»Ð°rd", "All")
    end
})



  Tab:AddButton({
    Name = "i'm so hard rn",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–'m Ñ•Ð¾ hÐ°rd rn", "All")
    end
})

  Tab:AddButton({
    Name = "i'm so wet daddy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–'m Ñ•Ð¾ wÐµt daddy", "All")
    end
})

  Tab:AddButton({
    Name = "i'm so wet",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ–'m Ñ•Ð¾ wÐµt", "All")
    end
})


  Tab:AddButton({
    Name = "I would like to see some titties",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Î™ wÎ¿uÓd ÓÑ–kÐµ tÎ¿ Ñ•ÐµÐµ Ñ•Î¿mÐµ tÑ–ttÑ–Ðµs", "All")
    end
})



  Tab:AddButton({
    Name = "i wanna kms",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ– wÐ°nnÐ° kmÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "i wanna smash you",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ– wÐ°nnÐ° Ñ•mÐ°Ñ•h ÑƒÐ¾u", "All")
    end
})



  Tab:AddButton({
    Name = "i want to drink your breasts",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ– wÐ°nt tÐ¾ drâ¥â¥â¥â¥â¥Ñ–nkÑƒÐ¾urbrÐµâ¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥Ñ•tÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "I do sexy things",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð† dÐ¾ Ñ•ÐµÑ…Ñƒ thÑ–ngÑ•", "All")
    end
})



  Tab:AddButton({
    Name = "I banged your girl so hard",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð† bÐ°ngÐµd ÑƒÐ¾ur gÑ–rl Ñ•Ð¾ Ò»Ð°rd", "All")
    end
})

  Tab:AddButton({
    Name = "I dont give a shit.",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I dont give a sÒ»Ñ–t.", "All")
    end
})



  Tab:AddButton({
    Name = "I love sex",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I love Ñ•Ðµx", "All")
    end
})

  Tab:AddButton({
    Name = "I'll make you pregnant",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð†'ÓÓ mÐ°kÐµ ÑƒÐ¾u Ñ€rÐµgnÐ°nt", "All")
    end
})



  Tab:AddButton({
    Name = "imagine getting no bitches",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("imagine getting no bitÑÒ»Ðµs", "All")
    end
})

  Tab:AddButton({
    Name = "kill yourself",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("kÑ–Ól ÑƒÐ¾urÑ•ÐµÓf", "All")
    end
})

  Tab:AddButton({
    Name = "keep moaning",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("keep mÐ¾Ð°ning", "All")
    end
})

  Tab:AddButton({
    Name = "lets do doggy style",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Óâ¥â¥â¥Ðµâ¥â¥â¥tâ¥â¥â¥Ñ•â¥â¥â¥â¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥gâ¥â¥â¥gâ¥â¥â¥Ñƒâ¥â¥â¥ â¥â¥â¥Ñ•â¥â¥â¥tâ¥â¥â¥Ñƒâ¥â¥â¥Óâ¥â¥â¥Ðµ", "All")
    end
})



  Tab:AddButton({
    Name = "lets have sex",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â¥â¥â¥Óâ¥â¥â¥Ðµâ¥â¥â¥tâ¥â¥â¥Ñ• â¥â¥â¥Ò»â¥â¥â¥Ð°â¥â¥â¥vâ¥â¥â¥Ðµâ¥â¥â¥ Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "let me squish those titties",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÓÐµt mÐµ Ñ•qÏ…Ñ–Ñ•Ò» tÒ»Î¿Ñ•Ðµ tÑ–ttÑ–Ðµs", "All")
    end
})



  Tab:AddButton({
    Name = "lgbtq+ is related to autism",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Î™â¥â¥â¥gâ¥â¥â¥bâ¥â¥â¥tâ¥â¥â¥qâ¥â¥â¥+â¥â¥â¥ â¥â¥â¥Ñ–â¥â¥â¥Ñ•â¥â¥â¥ â¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥lâ¥â¥â¥Ð°â¥â¥â¥tâ¥â¥â¥Ðµâ¥â¥â¥d tâ¥â¥â¥Ð¾â¥â¥â¥ Ð°â¥â¥â¥uâ¥â¥â¥tâ¥â¥â¥Ñ–â¥â¥â¥Ñ•â¥â¥â¥m", "All")
    end
})

  Tab:AddButton({
    Name = "Mind if you let me squish those titties",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Mind if you ÓÐµt mÐµ Ñ•qÏ…Ñ–Ñ•Ò» tÒ»Î¿Ñ•Ðµ tÑ–ttÑ–Ðµs", "All")
    end
})



  Tab:AddButton({
    Name = "my condom fell off!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mÑƒ â¥â¥â¥Ñâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥dâ¥â¥â¥Ð¾â¥â¥â¥m fÐµÓÓ Ð¾ff!", "All")
    end
})

  Tab:AddButton({
    Name = "Mr Breast is so cool",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ðœr Ð’rÐµÐ°Ñ•t Ñ–Ñ• Ñ•Ð¾ ÑÐ¾Ð¾l", "All")
    end
})



  Tab:AddButton({
    Name = "my cock is dirty",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("myÑÐ¾â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñkisdirty", "All")
    end
})

  Tab:AddButton({
    Name = "make me pregnant",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mÐ°kÐµ mÐµ Ñ€rÐµgnÐ°nt", "All")
    end
})



  Tab:AddButton({
    Name = "Naked boys",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÎÐ°kÐµd Ð’Î¿ÑƒÑ•", "All")
    end
})

  Tab:AddButton({
    Name = "Naked girls",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÎÐ°kÐµd GÑ–rÓÑ•", "All")
    end
})



  Tab:AddButton({
    Name = "pussy licker",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ€â¥â¥â¥uâ¥â¥â¥â¥sâ¥â¥sÑƒ Óiâ¥â¥Ñâ¥â¥â¥kâ¥â¥Ðµâ¥â¥â¥â¥â¥â¥r", "All")
    end
})

  Tab:AddButton({
    Name = "rape me",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("rÐ°Ñ€ÐµmÐµ", "All")
    end
})



  Tab:AddButton({
    Name = "spank me daddy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•â¥â¥â¥Ñ€â¥â¥â¥Ð°â¥â¥â¥nâ¥â¥â¥kâ¥â¥â¥ â¥â¥â¥mâ¥â¥â¥Ðµâ¥â¥â¥ â¥â¥â¥dâ¥â¥â¥Ð°â¥â¥â¥dâ¥â¥â¥dâ¥â¥â¥Ñƒ", "All")
    end
})

  Tab:AddButton({
    Name = "sex slave",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•â¥â¥â¥Ðµâ¥â¥â¥Ñ…â¥â¥â¥ â¥â¥â¥Ñ•â¥â¥â¥Óâ¥â¥â¥Ð°â¥â¥â¥vâ¥â¥â¥Ðµ", "All")
    end
})


  Tab:AddButton({
    Name = "Sweet cock dude",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…wÐµÐµt ÑÐ¾Ñk dudÐµ", "All")
    end
})

  Tab:AddButton({
    Name = "smd hoe",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•md Ò»â¥â¥â¥Ð¾â¥â¥â¥Ðµ", "All")
    end
})



  Tab:AddButton({
    Name = "suck my cock",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•â¥â¥â¥ó €•ó €•uâ¥ó €•ó €•Ñâ¥â¥â¥kó €•mó €•yÑó €•ó €•Ð¾â¥ó €•â¥â¥Ñk", "All")
    end
})

  Tab:AddButton({
    Name = "Sweet cock you got up there",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…wÐµÐµtÑÐ¾â¥â¥â¥â¥â¥â¥â¥â¥â¥ÑkÑƒÐ¾ugÐ¾tuÑ€thÐµrÐµ", "All")
    end
})



  Tab:AddButton({
    Name = "shut the fuck up",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("só €•ó €•Ò»â¥â¥ó €•ó €•â¥â¥â¥â¥uó €•ó €•ttâ¥â¥ó €•ó €•â¥â¥â¥â¥Ò»Ðµfâ¥â¥â¥ó €•ó €•ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥câ¥kó €•ó €•uâ¥â¥â¥â¥â¥â¥â¥â¥â¥Ñ€", "All")
    end
})

  Tab:AddButton({
    Name = "Shut yo goofy ass up",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Sâ¥â¥â¥Ò»â¥â¥â¥ut ÑƒÐ¾gÐ¾â¥â¥â¥Ð¾â¥â¥â¥fâ¥â¥â¥Ñƒ Ð°â¥â¥â¥Ñ•â¥â¥â¥Ñ• uâ¥â¥â¥p", "All")
    end
})



  Tab:AddButton({
    Name = "shut yo broke ass up",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("shutyobrokeÐ°Ñ•Ñ•up", "All")
    end
})

  Tab:AddButton({
    Name = "suck my cock retard",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ•uÑkmyÑÐ¾Ñkretâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°rd", "All")
    end
})



  Tab:AddButton({
    Name = "son of a bitch",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("sonofabó €•ó €–ó €—ó €˜ï¿°ï¿°ó €•ó €–ó €—ó €˜Ñ–ó €•ó €–ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €—ó €˜tó €•ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜Ñó €—ó €˜ó €—ó €˜ï¿°ï¿°ï¿°ó €—ó €˜Ò»", "All")
    end
})

  Tab:AddButton({
    Name = "small penis",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("small Ñ€enâ¥â¥â¥â¥â¥â¥â¥â¥iÑ•", "All")
    end
})



  Tab:AddButton({
    Name = "Theres cum everywhere!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¢â¥â¥â¥hâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥Ñ• â¥â¥â¥Ñâ¥â¥â¥â¥uâ¥â¥â¥mâ¥â¥â¥ â¥â¥â¥Ðµâ¥â¥â¥vâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥Ñƒâ¥â¥â¥wâ¥â¥â¥hâ¥â¥â¥Ðµâ¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥!", "All")
    end
})

  Tab:AddButton({
    Name = "that bbc dont play",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("thÐ°t bâ¥â¥â¥bâ¥â¥â¥Ñ dÐ¾nt Ñ€lÐ°Ñƒ", "All")
    end
})


  Tab:AddButton({
    Name = "ur gf was craving my raging schlong",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("uâ¥â¥â¥râ¥â¥â¥ â¥â¥â¥gâ¥â¥â¥fâ¥â¥â¥ â¥â¥â¥wâ¥â¥â¥Ð°â¥â¥â¥Ñ•â¥â¥â¥ â¥â¥â¥Ñâ¥â¥â¥râ¥â¥â¥Ð°â¥â¥â¥vâ¥â¥â¥Ñ–â¥â¥â¥nâ¥â¥â¥gâ¥â¥â¥ â¥â¥â¥mâ¥â¥â¥Ñƒâ¥â¥â¥ â¥â¥â¥râ¥â¥â¥Ð°â¥â¥â¥gâ¥â¥â¥Ñ–â¥â¥â¥nâ¥â¥â¥gâ¥â¥â¥ â¥â¥â¥Ñ•â¥â¥â¥Ñâ¥â¥â¥hâ¥â¥â¥Óâ¥â¥â¥Ð¾â¥â¥â¥nâ¥â¥â¥g", "All")
    end
})

  Tab:AddButton({
    Name = "ur moms booty is delicious",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ur mÐ¾mÑ• bÐ¾Ð¾tÑƒ Ñ–Ñ• dÐµlÑ–ÑÑ–Ð¾uÑ•", "All")
    end
})



  Tab:AddButton({
    Name = "wanna have sex?",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("wÐ°nnÐ° Ò»Ð°vÐµ sâ¥â¥â¥â¥ÐµÑ…?", "All")
    end
})

  Tab:AddButton({
    Name = "wsg bbg you lookin sexy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("wÑ•g bbg ÑƒÐ¾u lÐ¾Ð¾kÑ–n Ñ•ÐµÑ…Ñƒ", "All")
    end
})



  Tab:AddButton({
    Name = "what the fuck",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("whaâ¥â¥â¥â¥â¥â¥ttâ¥â¥â¥â¥â¥â¥Ò»Ðµfâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uÑâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥k", "All")
    end
})

  Tab:AddButton({
    Name = "wanna see some bbc",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("wÐ°nnÐ° Ñ•ÐµÐµ Ñ•Ð¾mÐµ bâ¥â¥â¥bâ¥â¥â¥Ñ", "All")
    end
})



  Tab:AddButton({
    Name = "you stupid nigger",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥oâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ustuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥pidnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐµr", "All")
    end
})

  Tab:AddButton({
    Name = "you like to rape and suck black oiled up men",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÑƒÐ¾u lÑ–kÐµ tÐ¾ rÐ°Ñ€Ðµ Ð°nd Ñ•uÑk blÐ°Ñk Ð¾Ñ–lÐµd uÑ€ mÐµn", "All")
    end
})



  Tab:AddButton({
    Name = "yo my shaft is hard, mind jerking it?",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÑƒÐ¾ mÑƒ Ñ•hÐ°ft Ñ–Ñ• Ò»Ð°rd, mÑ–nd Ñ˜ÐµrkÑ–ng Ñ–t?", "All")
    end
})

  Tab:AddButton({
    Name = "you're such a whore",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñƒâ¥â¥â¥Ð¾â¥â¥â¥uâ¥â¥â¥'râ¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥Ñ•â¥â¥â¥uâ¥â¥â¥Ñâ¥â¥â¥Ò»â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥wâ¥â¥â¥Ò»â¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥Ðµ", "All")
    end
})



  Tab:AddButton({
    Name = "you're a pedophile",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñƒâ¥â¥â¥Ð¾â¥â¥â¥uâ¥â¥â¥'â¥â¥â¥râ¥â¥â¥Ðµâ¥â¥â¥ â¥â¥â¥Ð°â¥â¥â¥ pâ¥â¥Ðµâ¥â¥â¥dâ¥â¥â¥â¥â¥â¥â¥Ð¾Ñ€â¥â¥hÑ–Óâ¥â¥â¥â¥â¥â¥â¥Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "you pathetic slut",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("youpatheticsÓut", "All")
    end
})



  Tab:AddButton({
    Name = "you're a pussy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÑƒÐ¾u'rÐµ Ð° Ñ€uâ¥â¥â¥ssÑƒ", "All")
    end
})

  Tab:AddButton({
    Name = "you're so sexy",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÑƒÐ¾u'rÐµ Ñ•Ð¾ Ñ•ÐµÑ…Ñƒ", "All")
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

  Tab:AddButton({
    Name = "BE MY WIFE!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Î• ÐœÎ¥ WIFÎ•!", "All")
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY LATINAS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Ð†G Ð’ÐžÐžÐ¢Î¥ LÐÐ¢Ð†ÎÐÐ…", "All")
    end
})



  Tab:AddButton({
    Name = "BIG BOOTY ASIANS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Ð†G Ð’ÐžÐžÐ¢Î¥ ÐÐ…Ð†ÐÎÐ…", "All")
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY FEMBOYS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Ð†G Ð’ÐžÐžÐ¢Î¥ FÐ•ÐœÐ’ÐžÎ¥Ð…", "All")
    end
})



  Tab:AddButton({
    Name = "BIG BOOTY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð’Ð†G Ð’ÐžÐžÐ¢Î¥", "All")
    end
})

  Tab:AddButton({
    Name = "BIG BOOBS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("BIG Ð’ÐžÐžÐ’S", "All")
    end
})


  Tab:AddButton({
    Name = "CAN I PISS INSIDE YOUR BUTTHOLE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡â¥â¥â¥â¥â¥ÐN Ð† Ð â¥â¥â¥â¥Ð†Ð…Ð… Ð†NÐ…IDE YOUâ¥â¥â¥R Ð’â¥â¥â¥Uâ¥â¥â¥â¥Ð¢Ð¢â¥â¥â¥â¥ÐOLÐ•?", "All")
    end
})

  Tab:AddButton({
    Name = "CAN I PISS ON YOU?",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡â¥â¥â¥â¥â¥ÐNÐ†Ð â¥â¥â¥â¥Ð†Ð…Ð…ONYOU?", "All")
    end
})



  Tab:AddButton({
    Name = "COCK IN BEDROOM",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ÐžÐ¡KIâ¥â¥â¥NBEDROOM", "All")
    end
})

  Tab:AddButton({
    Name = "CUM ON ME",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡UÐœÐžÎÐœÐ•", "All")
    end
})



  Tab:AddButton({
    Name = "CUM ON MY FACE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¡ï¿°ï¿°ï¿°UÐœONÐœÎ¥FÐâ¥â¥â¥â¥â¥â¥â¥â¥Ð¡Ð•", "All")
    end
})

  Tab:AddButton({
    Name = "DO YOU HAVE TITS?",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("DÐž Î¥ÐžU ÐÐVÐ• Ð¢â¥â¥â¥Ð†â¥â¥â¥Ð¢â¥â¥â¥Ð…?", "All")
    end
})



  Tab:AddButton({
    Name = "EAT PUSSY BITCH",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EATÐ â¥â¥â¥Uâ¥â¥â¥Ð…â¥â¥â¥Ð…â¥â¥â¥YÐ’Ð†â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥TÐ¡H", "All")
    end
})

  Tab:AddButton({
    Name = "FATASS HOE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fâ¥â¥â¥ÐÐ¢ÐÐ…â¥â¥Ð… ÐÐžÐ•", "All")
    end
})



  Tab:AddButton({
    Name = "FAT ASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fâ¥â¥â¥Ðâ¥â¥â¥Ð¢Ðâ¥â¥â¥Ð…â¥â¥â¥Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "FREE HENTAI",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("FRÐ•Ð• ÐÐ•â¥â¥â¥â¥Îâ¥Ð¢ÐÓ€", "All")
    end
})



  Tab:AddButton({
    Name = "FUCK YOU",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥UÐ¡ÎšÎ¥ÐžU", "All")
    end
})

  Tab:AddButton({
    Name = "HELP! THERE'S A COCK IN MY ASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hâ¥â¥â¥Ð•â¥â¥â¥Lâ¥â¥â¥Pâ¥â¥â¥!â¥â¥â¥ Tâ¥â¥â¥Hâ¥â¥â¥Ð•â¥â¥â¥Râ¥â¥â¥Ð•â¥â¥â¥'â¥â¥â¥Sâ¥â¥â¥ Ðâ¥â¥â¥ Ð¡â¥â¥â¥Ðžâ¥â¥â¥Câ¥â¥â¥Kâ¥â¥â¥ Iâ¥â¥â¥Nâ¥â¥â¥ Ðœâ¥â¥â¥Yâ¥â¥â¥ Ðâ¥â¥â¥â¥Ð…â¥â¥â¥Ð…", "All")
    end
})



  Tab:AddButton({
    Name = "HELP! THERE'S A HOE CHASING ME",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐÐ•LÐ ! Ð¢ÐÐ•RÐ•S Ð ÐÐžÐ• Ð¡ÐÐSING ÐœÐ•", "All")
    end
})

  Tab:AddButton({
    Name = "I AM ABOUT TO CUM",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("IÐó €•ó €–ó €—ÐœÐÐ’ó €•ó €–ó €—OUï¿°ï¿°ï¿°TTó €•ó €–ó €—OÐ¡ï¿°ó €•ó €–ó €—ó €•ó €–ó €—ï¿°ï¿°Uï¿°ï¿°ï¿°Ðœ", "All")
    end
})



  Tab:AddButton({
    Name = "I EAT PUSSY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ó€ Ð•ÐÐ¢ Ð UÐ…Ð…Ò®", "All")
    end
})

  Tab:AddButton({
    Name = "I PREFER PUSSY",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Iâ¥â¥â¥â¥â¥â¥â¥â¥ Pâ¥â¥â¥â¥â¥â¥â¥â¥Râ¥â¥â¥â¥â¥â¥â¥â¥Eâ¥â¥â¥â¥â¥â¥â¥â¥Fâ¥â¥â¥â¥â¥â¥â¥â¥Eâ¥â¥â¥â¥â¥â¥â¥â¥Râ¥ Ð â¥â¥UÐ…â¥â¥Ð…â¥â¥Ò®â¥", "All")
    end
})


  Tab:AddButton({
    Name = "I HAVE A MASSIVE COCK",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I HAVE A MASSIVE Ð¡ÐžÐ¡K", "All")
    end
})

  Tab:AddButton({
    Name = "I HAD AWESOME SEX WITH UR MOM!!!!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I Ðâ¥â¥â¥Ðâ¥â¥â¥â¥D Ðâ¥â¥â¥Wâ¥â¥â¥â¥Ð•Sâ¥â¥â¥â¥â¥ÐžÐœâ¥â¥â¥Ð•â¥â¥â¥ Sâ¥â¥â¥Ð•â¥â¥â¥â¥Ð¥â¥â¥ Wâ¥â¥â¥Iâ¥â¥Ð¢â¥â¥â¥â¥Ð Uâ¥â¥â¥R Ðœâ¥â¥â¥â¥â¥Ðžâ¥â¥â¥â¥Ðœ!!!!", "All")
    end
})

  Tab:AddButton({
    Name = "ILL MAKE YOU PREGNANT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ILL ÐœÎ‘KÎ• Î¥ÐžU Ð RÎ•GÎÎ‘ÎÐ¢", "All")
    end
})

  Tab:AddButton({
    Name = "LET ME SQUICH THOSE TITTIES",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LÐ•Ð¢ÐœÐ•Ð…QUÐ†Ð…ÐÐ¢ÐÐžÐ…Ð•Ð¢Ð†Ð¢Ð¢Ð†Ð•Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "LETS HAVE SEX",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Lâ¥â¥â¥Ð•â¥â¥â¥Ð¢â¥â¥â¥Ð…â¥â¥â¥ â¥â¥â¥Ðâ¥â¥â¥Ðâ¥â¥â¥Vâ¥â¥â¥Ð•â¥â¥â¥ â¥â¥â¥Ð…â¥â¥â¥Ð•â¥â¥â¥Ð¥", "All")
    end
})

  Tab:AddButton({
    Name = "LET'S FUCK",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LET'SFï¿°ï¿°ï¿°ï¿°ï¿°ï¿°UÐ¡ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Îš", "All")
    end
})

  Tab:AddButton({
    Name = "MY CONDOM FELL OFF!",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐœÎ¥ Ð¡â¥â¥â¥Ðžâ¥â¥â¥Îâ¥â¥â¥Dâ¥â¥â¥Ðžâ¥â¥â¥Ðœ FÐ•LL ÐžFF!", "All")
    end
})

  Tab:AddButton({
    Name = "NAKED GIRLS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÎÎ‘KÎ•DGIRLÐ…", "All")
    end
})

  Tab:AddButton({
    Name = "NAKED BOYS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÎÐÎšÐ•D Ð’ÐžÎ¥Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "oh my god, not this DUMBASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("oh my god, not this DUÐœÐ’ ÐÐ…Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "PUT YOUR COCK IN MY ASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð UÐ¢Î¥ï¿°ï¿°ï¿°ÐžUï¿°ï¿°RÐ¡Ðžâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð¡KINMY Ðï¿°ï¿°ï¿°Ð…ï¿°ï¿°ï¿°Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "STRAIGHT POWER MOTHERFUCKERS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("STRAIGHTPOWERMï¿°ï¿°ï¿°ï¿°ï¿°Oï¿°ï¿°ï¿°ï¿°ï¿°Tï¿°ï¿°ï¿°ï¿°ï¿°Hï¿°ï¿°ï¿°ï¿°ï¿°Eï¿°ï¿°ï¿°ï¿°ï¿°Rï¿°ï¿°ï¿°ï¿°ï¿°Fï¿°ï¿°ï¿°ï¿°ï¿°ï¿°UÐ¡ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Îšï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Eï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°RS", "All")
    end
})

  Tab:AddButton({
    Name = "SUCK MY COCK",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Só €•ó €–ó €—UÐ¡ó €•ó €–ó €—KÐœó €•ó €–ó €—Î¥Ð¡ó €•ó €–ó €—Oâ¥â¥â¥â¥â¥â¥ó €•ó €–ó €—ó €•ó €–ó €—â¥â¥â¥â¥â¥Ð¡K", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT THE FUCK UP",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("SHUTTHEFï¿°ï¿°ï¿°ï¿°ï¿°ï¿°UÐ¡ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ÎšUÐ ", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT UP FAGGOT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("SHâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥UTUPFâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥AGGOT", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT UP CUNT",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("SHUTUPCUâ¥â¥â¥â¥â¥â¥â¥â¥â¥NÐ¢", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT UP HOE",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("SÐUT UP ÐÐžÐ•", "All")
    end
})

  Tab:AddButton({
    Name = "SHAKE THAT ASS",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…HAKEÐ¢Ðâ¥â¥â¥â¥â¥â¥â¥â¥ÐÐ¢Ðï¿°ï¿°ï¿°Ð…ï¿°ï¿°ï¿°Ð…", "All")
    end
})

  Tab:AddButton({
    Name = "SON OF A BITCH",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…Oó €–ó €—â¥â¥â¥â¥â¥â¥â¥ó €˜ó €•ó €–NOó €–ó €—ó €˜ó €•ó €–FAó €—ó €˜ó €•ó €–Ð’ï¿°ï¿°ï¿°ï¿°ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°Iï¿°ó €—ó €˜ó €•ó €–ï¿°ï¿°ï¿°ï¿°ï¿°TCó €—ó €˜ó €•ó €–H", "All")
    end
})

  Tab:AddButton({
    Name = "SHIT NOOOOOOOO",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð…â¥â¥â¥â¥Ðâ¥â¥â¥â¥Î™â¥â¥â¥â¥Ð¢â¥â¥â¥â¥ Îâ¥â¥â¥â¥Ðžâ¥â¥â¥â¥Ðžâ¥â¥â¥â¥Ðžâ¥â¥â¥â¥Ðžâ¥â¥â¥â¥Ðžâ¥â¥â¥â¥Ðžâ¥â¥â¥â¥Ðžâ¥â¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "YOU ARE SO ASS AT THIS GAME",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Î¥ÐžUÐRÐ•Ð…Ðž Ðï¿°ï¿°ï¿°Ð…ï¿°ï¿°ï¿°Ð… ÐÐ¢THIÐ…GÐÐœÐ•", "All")
    end
})

local Tab = Window:MakeTab({
    Name = "RolePlay",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "RP A-Z"
})

  Tab:AddButton({
    Name = "Ð°h ÑƒÐµÑ•~ *moans* ÑƒÐµÑ• Ò»Ð°rdÐµr~",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð°h ÑƒÐµÑ•~ *mâ¥â¥â¥Ð¾â¥â¥â¥Ð°â¥â¥â¥nâ¥â¥â¥Ñ•* ÑƒÐµÑ• Ò»Ð°rdÐµr~", "All")
    end
})

  Tab:AddButton({
    Name = "*bites your cock*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*bÑ–tÐµó €•ó €•sÑƒó €•ó €•Ð¾urÑâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð¾Ñó €•ó €•k*", "All")
    end
})

  Tab:AddButton({
    Name = "*cums*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Ñâ¥â¥â¥â¥umÑ•*", "All")
    end
})

  Tab:AddButton({
    Name = "*looks under skirt* wow nice balls bro",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*ÓÐ¾Ð¾kÑ• undÐµr Ñ•kÑ–rt* wÐ¾w nÑ–ÑÐµ bÐ°lÓÑ• brÐ¾", "All")
    end
})

  Tab:AddButton({
    Name = "*masturbates*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*maâ¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•â¥â¥â¥stâ¥â¥â¥â¥â¥ó €•ó €•ó €•ó €•â¥â¥â¥uró €•ó €•bó €•ó €•aó €•ó €•tó €•ó €•eó €•ó €•s*", "All")
    end
})

  Tab:AddButton({
    Name = "*moans*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*mÐ¾Ð°ns*", "All")
    end
})

  Tab:AddButton({
    Name = "nice balls *slaps them*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("nÑ–ÑÐµ bÐ°llÑ• *Ñ•lÐ°Ñ€Ñ• thÐµm*", "All")
    end
})

  Tab:AddButton({
    Name = "*rapes*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("râ€ŠÐ°Ñ€Ðµs*", "All")
    end
})

  Tab:AddButton({
    Name = "*sucks cock*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Ñ•uÑkÑ• ÑÐ¾Ñk*", "All")
    end
})

  Tab:AddButton({
    Name = "*shits*",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*â¥â¥â¥Ñ•â¥â¥â¥Ò»â¥â¥â¥iâ¥â¥â¥tÑ•*", "All")
    end
})

local Tab = Window:MakeTab({
    Name = "Suggested",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Suggestions from the discord (A-Z)"
})

  Tab:AddButton({
    Name = "cock and ball torture sex",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñâ¥â¥â¥Ð¾â¥â¥ó €•ó €•ó €•â¥Ñâ¥â¥â¥kÐ°ndbó €•ó €•ó €•Ð°â¥â¥â¥â¥lltoró €•ó €•ó €•turÐµÑ•ó €•ó €•ó €•â¥â¥â¥Ðµâ¥â¥â¥Ñ…", "All")
    end
})

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð•-RÐ°Ñ€Ðµ", "All")
    end
})

  Tab:AddButton({
    Name = "eat my shit nigger",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("eaâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥tmâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥yÑ•â¥â¥â¥â¥â¥â¥hâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥tnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñ–â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥gâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥geâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥r", "All")
    end
})

  Tab:AddButton({
    Name = "im very horny and i will cum inside you hard",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("im very Ò»Ð¾rnâ¥â¥â¥â¥â¥â¥yandiwill Ñâ¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥miâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥nsidÐµyou hard", "All")
    end
})

  Tab:AddButton({
    Name = "murder the lgbtq+",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mâ¥â¥â¥â¥â¥â¥urâ¥â¥â¥â¥â¥â¥dÐµrthÐµÓgâ¥â¥â¥â¥â¥â¥bâ¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥q+", "All")
    end
})


Tab:AddParagraph("Join our Discord and suggest YOUR bypass to get it added!","there's 5 bypasses because y'all dumbasses suggested too long/n word bypasses >:(")

local Tab = Window:MakeTab({
    Name = "NSFW Websites",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Not Safe For Work websites"
})

  Tab:AddButton({
    Name = "blacked.com",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("blacked.câ¥â¥â¥Ð¾â¥â¥â¥m", "All")
    end
})

  Tab:AddButton({
    Name = "pornhub.com",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ñ€â¥â¥â¥Ð¾â¥â¥â¥râ¥â¥â¥nâ¥â¥â¥Ò»â¥â¥â¥uâ¥â¥â¥b.câ¥â¥â¥Ð¾â¥â¥â¥m", "All")
    end
})

  Tab:AddButton({
    Name = "rule34.xxx",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("râ¥â¥â¥uâ¥â¥â¥Óâ¥â¥â¥Ðµ3â¥â¥â¥4.Ñ…Ñ…Ñ…", "All")
    end
})

  Tab:AddButton({
    Name = "e621.net",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ðµâ¥â¥â¥6â¥â¥â¥2â¥â¥â¥1â¥â¥â¥.nâ¥â¥â¥Ðµâ¥â¥â¥t", "All")
    end
})

  Tab:AddButton({
    Name = "PORNHUB.COM",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð â¥â¥â¥Ðžâ¥â¥â¥Râ¥â¥â¥Îâ¥â¥â¥Ðâ¥â¥â¥Uâ¥â¥â¥Ð’.Ð¡â¥â¥â¥Ðžâ¥â¥â¥Ðœâ¥â¥â¥", "All")
    end
})

  Tab:AddButton({
    Name = "XVIDEOS.COM",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¥ó €•ó €•ó €•ó €•â¥â¥â¥â¥â¥â¥ó €•ó €•ó €•ó €–ó €•VÓ€â¥â¥â¥â¥â¥â¥Dâ¥â¥â¥ó €•ó €•ó €•Ð•â¥â¥â¥ó €•ó €•ó €•ÐžÐ….Ð¡â¥â¥â¥ó €•ó €•ó €•ÐžÐœ", "All")
    end
})

local Section = Tab:AddSection({
    Name = "Full Links"
})

  Tab:AddButton({
    Name = "https://blacked.com",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("httÑ€s:/â¥â¥â¥/blacked.câ¥â¥â¥Ð¾â¥â¥â¥m", "All")
    end
})

  Tab:AddButton({
    Name = "https://pornhub.com",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("htó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—tpsó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—:/ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—/â¥â¥â¥pó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—oró €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—nhó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ubó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—.ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—có €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—ó €˜ó €•ó €–ó €—om", "All")
    end
})

  Tab:AddButton({
    Name = "MASTURBATING TO HTTPS://PORNHUB.COM",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐœÐâ¥â¥â¥ó €•ó €–â¥Ð…â¥â¥â¥ó €•ó €–â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð¢â¥â¥â¥ó €•ó €–â¥URâ¥Ð’ÐÐ¢Ó€ÎGTOHÐ¢ó €•ó €•ó €•ó €•Ð¢Ð Ð…ó €•ó €•ó €•ó €•:/â¥â¥â¥/Ð Ðžó €•ó €•RÎó €•ó €•ÐUâ¥â¥â¥â¥Ð’.Câ¥â¥â¥OM", "All")
    end
})

local Tab = Window:MakeTab({
    Name = "NOT LEGIT",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Not Legit A-Z"
})

Tab:AddParagraph("Note","'NOT LEGIT' on this script means that the bypasses DON'T look like it was said normally")

  Tab:AddButton({
    Name = "a hard r",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¿â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ió €•gâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥gó €•ó €•Ðµó €•Ð³", "All")
    end
})

  Tab:AddButton({
    Name = "a lil n word",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ð¿â¥iÉ¡â¥É¡â€Šâ¥Ð°", "All")
    end
})

  Tab:AddButton({
    Name = "fuck",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fï¿°ï¿°ï¿°ï¿°ï¿°ó €•ó €•ï¿°ï¿°ï¿°ï¿°ï¿°á»¥Ã§ó €•ó €•Ä·", "All")
    end
})

  Tab:AddButton({
    Name = "KKK",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÐšÐšÐš", "All")
    end
})

  Tab:AddButton({
    Name = "KYS BITCH",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ðšâ¥â¥â¥â¥â¥â¥â¥â¥Î¥â¥â¥â¥SÐ’ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Iï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¢ï¿°ï¿°ï¿°ï¿°ï¿°ï¿°Ð¡Ð", "All")
    end
})

local Tab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Chat"
})

  Tab:AddButton({
    Name = "Chat a huge annoying blank text box",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("â€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ¥", "All")
    end
})

  Tab:AddButton({
    Name = "Chat our dsc link",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("httÑ€s:/â¥â¥â¥/dÑ•Ñâ¥â¥â¥.â¥â¥â¥gâ¥â¥â¥g/â¥â¥â¥vadriftz", "All")
    end
})

local Section = Tab:AddSection({
    Name = "Chat Spammer"
})

local ChatSpamText = ""
local SpamCoroutine
local IsChatSpamming = false
local SpamInterval = 1 -- Default interval in seconds

Tab:AddTextbox({
    Name = "Enter spam text",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        ChatSpamText = Value
    end
})

Tab:AddSlider({
    Name = "Spam Interval (seconds)",
    Min = 0.1,
    Max = 5,
    Default = 1,
    Color = Color3.fromRGB(128, 64, 255), -- Purple color
    Increment = 0.1,
    ValueName = "seconds",
    Callback = function(Value)
        SpamInterval = Value
    end
})

Tab:AddButton({
    Name = "Start Chat Spam",
    Callback = function()
        IsChatSpamming = true
        SpamCoroutine = coroutine.create(function()
            while IsChatSpamming do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ChatSpamText, "All")
                wait(SpamInterval)
            end
        end)
        coroutine.resume(SpamCoroutine)
    end
})

Tab:AddButton({
    Name = "Stop Chat Spam",
    Callback = function()
        IsChatSpamming = false
    end
})

local Section = Tab:AddSection({
    Name = "Player Scripts"
})

local infiniteJumpEnabled = false
local infiniteJumpConnection

Tab:AddToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(Value)
        infiniteJumpEnabled = Value

        if infiniteJumpEnabled then
            local plr = game:GetService('Players').LocalPlayer
            local m = plr:GetMouse()

            infiniteJumpConnection = m.KeyDown:Connect(function(k)
                if k:byte() == 32 then
                    local humanoid = plr.Character:FindFirstChildOfClass('Humanoid')
                    if humanoid then
                        humanoid:ChangeState('Jumping')
                        wait()
                        humanoid:ChangeState('Seated')
                    end
                end
            end)
        else
            if infiniteJumpConnection then
                infiniteJumpConnection:Disconnect()
                infiniteJumpConnection = nil
            end
        end
    end
})

local defaultWalkSpeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
local defaultJumpPower = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower

Tab:AddSlider({
  Name = "WalkSpeed",
  Min = 1,
  Max = 350,
  Default = defaultWalkSpeed,
  Color = Color3.fromRGB(128, 0, 128), -- Purple color
  Increment = 1,
  ValueName = "Speed",
  Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end    
})

Tab:AddSlider({
  Name = "JumpPower",
  Min = 1,
  Max = 350,
  Default = defaultJumpPower,
  Color = Color3.fromRGB(128, 0, 128), -- Purple color
  Increment = 1,
  ValueName = "JumpPower",
  Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
  end    
})

Tab:AddToggle({
    Name = "ESP (see people)",
    Default = false,
    Callback = function(Value)
        if Value then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
        end
    end
})

Tab:AddToggle({
    Name = "Anti-Fling",
    Default = false,
    Callback = function(Value)
        if Value then
            local Players = game:GetService("Players")
            local RunService = game:GetService("RunService")
            local Player = Players.LocalPlayer

            RunService.Stepped:Connect(function()
                for _, CoPlayer in pairs(Players:GetChildren()) do
                    if CoPlayer ~= Player and CoPlayer.Character then
                        for _, Part in pairs(CoPlayer.Character:GetChildren()) do
                            if Part.Name == "HumanoidRootPart" then
                                Part.CanCollide = false
                            end
                        end
                    end
                end

                for _, Accessory in pairs(workspace:GetChildren()) do
                    if Accessory:IsA("Accessory") and Accessory:FindFirstChildWhichIsA("Part") then
                        Accessory:FindFirstChildWhichIsA("Part"):Destroy()
                    end
                end
            end)
        end
    end
})

local Section = Tab:AddSection({
    Name = "Admin"
})

  Tab:AddButton({
    Name = "Infinite yield",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

  Tab:AddButton({
    Name = "Nameless Admin",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
    end
})

Tab:AddParagraph("Hello :)","its The End, for now..")

OrionLib:Init()
end
loadScript()

OrionLib:Init()
