repeat task.wait() until game:IsLoaded()

local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")
print(1)
if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
  function sendMsg(txt,ermm) game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(txt) end
else
  function sendMsg(txt,ermm) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(txt, ermm) end
end
print(2)
loadstring(game:HttpGet("https://raw.githubusercontent.com/RelkzzRebranded/Bypassed---OBFUSCATED..../main/Adonis%20BYPASS.lua"))()
wait(0.1)
print(3)
for k, v in pairs(getgc(true)) do if pcall(function() return rawget(v, "indexInstance") end) and type(rawget(v, "indexInstance")) == "table" and (rawget(v, "indexInstance"))[1] == "kick" then v.tvk = {
            "kick", function() return game.Workspace:WaitForChild("") end } end end
wait(0.1)
print(4)
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
print(5)
local thisonescript=request({Url='https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua'}).Body
print(thisonescript)
loadstring(thisonescript)()
-- loadstring(request({Url='https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua'}).Body)()
print(6)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "vadrifts.byp |  V1.3.9", HidePremium = false, SaveConfig = save, ConfigFolder =
"OrionTest", ScriptIntro = enabled, IntroText = "V3rge's bypassing society" })
print(7)
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
print(8)
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
    ["stfu"] = "ѕ󠀕󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥f󠀖󠀕⁥⁥⁥u",
    ["asshole"] = "аѕѕ⁥⁥⁥һоlе",
    ["ass"] = "а⁥⁥⁥ѕ⁥⁥⁥ѕ",
    ["arse"] = "аr⁥⁥ѕ⁥е",
    ["anus"] = "а⁥⁥⁥n⁥⁥⁥u⁥⁥⁥ѕ⁥⁥⁥",
    ["Anus"] = "A⁥⁥⁥n⁥⁥⁥u⁥⁥⁥ѕ⁥⁥⁥",
    ["anal"] = "аn⁥⁥⁥⁥аl",
    ["blowjob"] = "blow⁥⁥⁥j⁥⁥⁥о⁥⁥⁥b⁥⁥⁥",
    ["boner"] = "⁥В⁥⁥o⁥⁥n⁥⁥е⁥⁥r",
    ["boobies"] = "bо⁥⁥⁥⁥⁥⁥⁥⁥оbіеs",
    ["bullshit"] = "bulӏsһ⁥⁥⁥⁥⁥⁥⁥⁥іt",
    ["bastard"] = "bas⁥⁥⁥⁥⁥⁥⁥⁥tard",
    ["beaner"] = "b⁥⁥⁥е⁥⁥⁥а⁥⁥⁥n⁥⁥⁥е⁥⁥⁥r",
    ["butthole"] = "bu⁥⁥⁥⁥⁥⁥⁥⁥tthоle",
    ["bootyhole"] = "b⁥⁥⁥о⁥⁥⁥о⁥⁥⁥t⁥⁥⁥уhole",
    ["bondage"] = "b⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥а⁥⁥⁥g⁥⁥⁥е⁥⁥⁥",
    ["Bondage"] = "B⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥а⁥⁥⁥g⁥⁥⁥е⁥⁥⁥",
    ["butt"] = "bu⁥⁥⁥⁥⁥⁥⁥⁥tt",
    ["booty"] = "bооty",
    ["boobs"] = "bооbѕ",
    ["boob"] = "bооb",
    ["breasts"] = "brеаѕtѕ",
    ["bbc"] = "b⁥⁥⁥b⁥⁥⁥с",
    ["bitch"] = "b󠀕󠀖󠀗󠀘￰￰󠀕󠀖󠀗󠀘і󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀗󠀘t󠀕￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘с󠀗󠀘󠀗󠀘￰￰￰󠀗󠀘һ",
    ["Bitch"] = "B󠀕󠀖󠀗󠀘￰￰󠀕󠀖󠀗󠀘і󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀗󠀘t󠀕￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘с󠀗󠀘󠀗󠀘￰￰￰󠀗󠀘һ",
    ["bitches"] = "b󠀕󠀖󠀗󠀘￰￰󠀕󠀖󠀗󠀘i󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀗󠀘t󠀕￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘c󠀗󠀘󠀗󠀘￰￰￰󠀗󠀘һes",
    ["Bitches"] = "B󠀕󠀖󠀗󠀘￰￰󠀕󠀖󠀗󠀘i󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀗󠀘t󠀕￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘c󠀗󠀘󠀗󠀘￰￰￰󠀗󠀘һes",
    ["cocaine"] = "с⁥⁥⁥о⁥⁥⁥с⁥⁥⁥а⁥⁥⁥i⁥⁥⁥n⁥⁥⁥е",
    ["creampie"] = "с⁥⁥⁥r⁥⁥⁥е⁥⁥⁥а⁥⁥⁥m⁥⁥⁥р⁥⁥⁥i⁥⁥⁥е",
    ["cum"] = "с⁥⁥⁥⁥um",
    ["cunts"] = "сu⁥⁥⁥⁥⁥⁥⁥⁥ntѕ",
    ["cunt"] = "с󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀖󠀕u⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀖󠀕n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥t",
    ["cock"] = "с⁥⁥⁥о⁥⁥⁥с⁥⁥⁥k",
    ["cuck"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k",
    ["cuckold"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k⁥⁥⁥о⁥⁥⁥ӏ⁥⁥⁥d⁥⁥⁥",
    ["condoms"] = "с⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m⁥⁥⁥s",
    ["condom"] = "с⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m",
    ["coochies"] = "cooс⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥es",
    ["coochie"] = "с⁥⁥⁥о⁥⁥⁥o⁥⁥⁥с⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥е",
    ["crap"] = "сr⁥⁥⁥⁥ар",
    ["Crap"] = "сr⁥⁥⁥⁥ар",
    ["CRAP"] = "сr⁥⁥⁥⁥ар",
    ["cunny"] = "сu⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу",
    ["Cunny"] = "сu⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу",
    ["clit"] = "с󠀕󠀕⁥І󠀕󠀕⁥і󠀕󠀕⁥t",
    ["Clit"] = "с󠀕󠀕⁥І󠀕󠀕⁥і󠀕󠀕⁥t",
    ["dumbass"] = "du⁥⁥⁥⁥⁥⁥mb⁥⁥⁥⁥⁥⁥аѕѕ",
    ["discord"] = "dіѕсоrd",
    ["dickhead"] = "d￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kh￰￰￰￰￰ead",
    ["dick"] = "d⁥⁥⁥⁥i󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥c󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥k",
    ["damn"] = "d⁥⁥⁥а⁥⁥⁥m⁥⁥⁥n⁥⁥⁥",
    ["doggystyle"] = "d⁥⁥⁥оggystyle",
    ["Doggystyle"] = "D⁥⁥⁥оggystyle",
    ["fatass"] = "fat￰￰￰а￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕ",
    ["fucked"] = "f￰￰￰￰￰￰uс￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰￰k￰￰￰￰￰￰￰￰e￰￰￰￰d",
    ["femboy"] = "fеmbоy",
    ["femboys"] = "fеmbоys",
    ["fuckers"] = "󠀕󠀕󠀕f￰￰￰￰￰￰uс￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰￰k￰￰￰￰￰￰￰￰e￰￰￰￰󠀕󠀕󠀕rѕ",
    ["Fuckers"] = "󠀕󠀕󠀕F￰￰￰￰￰￰uс￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰￰k￰￰￰￰￰￰￰￰e￰￰￰￰󠀕󠀕󠀕rѕ",
    ["faggot"] = "⁥⁥⁥⁥f⁥󠀕⁥ а󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g⁥⁥о󠀕󠀕⁥⁥󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥t⁥⁥",
    ["Faggot"] = "⁥⁥⁥⁥F⁥󠀕⁥ а󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g⁥⁥о󠀕󠀕⁥⁥󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥t⁥⁥",
    ["Fag"] = "⁥⁥⁥⁥F⁥󠀕⁥ а󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g",
    ["fag"] = "⁥⁥⁥⁥f⁥󠀕⁥ а󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g",
    ["fap"] = "f⁥󠀕⁥⁥а⁥󠀕⁥⁥р",
    ["fanny"] = "fa⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу",
    ["horny"] = "һ⁥⁥⁥⁥⁥о󠀕󠀕󠀕󠀕r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥у",
    ["hitler"] = "Нi⁥⁥⁥⁥⁥⁥⁥⁥tӏ⁥⁥⁥⁥⁥⁥⁥⁥е⁥⁥r",
    ["hoes"] = "һоеѕ",
    ["hoe"] = "һое",
    ["instagram"] = "і󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥n󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥tаg󠀕󠀕󠀕󠀕rаm",
    ["insta"] = "і󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥n󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥tа",
    ["Instagram"] = "і󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥n󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥tаg󠀕󠀕󠀕󠀕rаm",
    ["Insta"] = "і󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥n󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥tа",
    ["kys"] = "k⁥⁥⁥⁥⁥⁥⁥⁥y⁥⁥⁥ѕ",
    ["lmfao"] = "ӏm⁥⁥⁥⁥⁥⁥⁥⁥fа⁥⁥о",
    ["lmao"] = "ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥maо",
    ["Lmao"] = "ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥maо",
    ["motherfucker"] = "mot￰￰￰￰￰￰￰h￰e￰rf￰￰￰￰￰u￰с￰￰￰￰￰￰￰￰k￰e￰￰￰￰￰￰￰￰r",
    ["masturbate"] = "m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕b󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e",
    ["Masturbate"] = "М⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥u⁥⁥⁥r⁥⁥⁥b⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е",
    ["masturbating"] = "m⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥u⁥⁥⁥r⁥⁥⁥b⁥⁥⁥а⁥⁥⁥t⁥⁥⁥ing",
    ["meth"] = "mе⁥⁥⁥⁥⁥⁥⁥⁥th",
    ["naked"] = "nаkеd",
    ["nudes"] = "nudеѕ",
    ["nude"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е",
    ["Nude"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е",
["negro"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕o",
["Negro"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕o",
["nipples"] = "n󠀕󠀕⁥i󠀕󠀕⁥⁥󠀕р⁥p󠀕󠀖⁥⁥󠀕l󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕e󠀖⁥⁥ѕ",
["nipple"] = "n󠀕󠀕⁥i󠀕󠀕⁥⁥󠀕р⁥p󠀕󠀖⁥⁥󠀕l󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕e󠀖⁥⁥",
["Nipples"] = "N󠀕󠀕⁥i󠀕󠀕⁥⁥󠀕р⁥p󠀕󠀖⁥⁥󠀕l󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕e󠀖⁥⁥ѕ",
["Nipple"] = "N󠀕󠀕⁥i󠀕󠀕⁥⁥󠀕р⁥p󠀕󠀖⁥⁥󠀕l󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕e󠀖⁥⁥",
    ["orgasm"] = "оrg⁥⁥⁥⁥аѕm",
    ["omfg"] = "оm⁥⁥⁥⁥⁥⁥⁥⁥fg",
    ["pedophile"] = "p⁥⁥е⁥⁥⁥d⁥⁥⁥⁥⁥⁥⁥ор⁥⁥hіӏ⁥⁥⁥⁥⁥⁥⁥е",
    ["pornhub"] = "⁥⁥р󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕b",
    ["penis"] = "pen󠀕󠀖󠀗󠀘󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥󠀕і󠀖󠀗󠀘󠀖󠀗ѕ",
    ["porn"] = "роrn",
    ["pussies"] = "р⁥⁥⁥u⁥⁥⁥s⁥⁥⁥s⁥⁥⁥i⁥⁥⁥е⁥⁥⁥s",
    ["pussy"] = "р⁥⁥⁥u⁥⁥⁥s⁥⁥⁥s⁥⁥⁥у",
    ["pussy"] = "рі󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕ss",
    ["queer"] = "q⁥⁥⁥u⁥⁥⁥е⁥⁥⁥е⁥⁥⁥r⁥⁥⁥",
    ["Queer"] = "Q⁥⁥⁥u⁥⁥⁥е⁥⁥⁥е⁥⁥⁥r⁥⁥⁥",
    ["rape"] = "rаре",
    ["stripper"] = "ѕtrірреr",
    ["slave"] = "ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е",
    ["seduce"] = "ѕеduсе",
    ["slut"] = "sӏut",
    ["shit"] = "⁥⁥⁥ѕ⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥t",
    ["sexy"] = "ѕеху",
    ["sex"] = "ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥",
    ["sperm"] = "ѕpе󠀕￰￰￰￰󠀖r￰󠀖m",
    ["Sperm"] = "ѕpе󠀕￰￰￰￰󠀖r￰󠀖m",
    ["Semen"] = "ѕ󠀕󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥emen",
    ["semen"] = "ѕ󠀕󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥emen",
    ["schlong"] = "ѕ󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖c󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖h󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖l󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖o󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖ng",
    ["retarded"] = "rеtаrded",
    ["retard"] = "⁥⁥r⁥󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е󠀖󠀕t 󠀕󠀕󠀕󠀕󠀖󠀕а⁥⁥⁥󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕⁥⁥⁥⁥󠀕d",
    ["rizz"] = "rіzz",
    ["Rizz"] = "Rіzz",
    ["titties"] = "t⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥⁥ѕ",
    ["thots"] = "t⁥⁥⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥otѕ",
    ["thot"] = "t⁥⁥⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥ot",
    ["tits"] = "t⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥ts",
    ["tit"] = "tіt",
    ["virginity"] = "v￰￰￰￰￰￰і￰￰￰￰￰￰￰￰r￰￰￰￰￰￰￰￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰і￰￰￰￰t￰￰￰у",
    ["virgins"] = "v￰￰￰￰￰￰і￰￰￰￰￰￰￰￰r￰￰￰￰￰￰￰￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰s",
    ["vagina"] = "v󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a",
    ["virgin"] = "v󠀕󠀖󠀗󠀘￰￰￰￰￰￰󠀕󠀖󠀗󠀘і󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰󠀗󠀘r󠀕￰￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘g󠀖󠀗󠀘󠀕󠀖󠀗󠀘￰￰￰￰￰￰￰￰￰󠀗󠀘і󠀘󠀕󠀖󠀘󠀕￰￰￰￰￰￰￰￰n",
    ["whore"] = "w⁥⁥⁥һ⁥⁥⁥о⁥⁥⁥r⁥⁥⁥е",
    ["weed"] = "⁥⁥⁥⁥w⁥󠀕⁥eed",
    ["Weed"] = "⁥⁥⁥⁥W⁥󠀕⁥eed",
    ["ASS"] = "АЅЅ",
    ["ANUS"] = "А󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Ν󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Ѕ",
    ["ARSE"] = "A󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕R󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕E",
    ["ASSHOLE"] = "АЅЅНОLЕ",
    ["ANAL"] = "АΝ⁥⁥⁥⁥⁥⁥АL",
    ["BASTARD"] = "ВАЅТАRD",
    ["BONER"] = "⁥В⁥⁥O⁥⁥N⁥⁥Е⁥⁥R",
    ["BONDAGE"] = "В󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥О󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ν󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥D󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥АGЕ",
    ["BONDAGE"] = "BLOWЈOB",
    ["BITCHES"] = "В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СНЕS",
    ["BITCH"] = "В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН",
    ["BOOBS"] = "ВООВS",
    ["BOOB"] = "ВООВ",
    ["BUTTHOLE"] = "ВUТТ⁥⁥⁥⁥НOLЕ",
    ["BUTT"] = "ВUТТ",
    ["BOOTY"] = "ВООТΥ",
    ["BULLSHIT"] = "В󠀕󠀕󠀕󠀕U⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥LL⁥⁥⁥Ѕ⁥⁥⁥Н⁥⁥⁥Ӏ⁥⁥⁥Т",
    ["BEANER"] = "В󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ЕА󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ν󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥R",
    ["CUNTS"] = "СU⁥⁥⁥⁥⁥⁥⁥⁥NТЅ",
    ["COCAINE"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСА󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ӀΝ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е",
    ["COOCHIES"] = "С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ЕS",
    ["COOCHIE"] = "С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е",
    ["CUNT"] = "СU⁥⁥⁥⁥⁥⁥⁥⁥NТ",
    ["CUCKOLD"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥KOLD",
    ["CUCK"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥K",
    ["CREAMPIE"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥R󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥АМ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥PIE",
    ["CUM"] = "СUМ",
    ["COCK"] = "СОСK",
    ["DISCORD"] = "DӀЅСОRD",
    ["DUMBASS"] = "DUMBАЅЅ",
    ["DAMN"] = "DАМΝ",
    ["DICKHEAD"] = "D⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IСΚНЕ󠀕⁥⁥󠀕AD",
    ["DICK"] = "D⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IСΚ",
    ["FAGGOT"] = "F󠀕󠀖󠀗󠀘￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀖󠀗󠀘А󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰󠀕G⁥⁥󠀖󠀗󠀘󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀘󠀘G󠀖󠀗󠀘󠀖󠀗󠀘￰￰￰￰￰￰￰О󠀖󠀗󠀘￰￰￰￰￰󠀖󠀗Т",
    ["FATASS"] = "F⁥⁥⁥А⁥⁥⁥ТА⁥⁥⁥Ѕ⁥⁥⁥Ѕ",
    ["FEMBOYS"] = "FЕМВОΥЅ",
    ["FEMBOY"] = "FЕМВОΥ",
    ["HITLER"] = "НӀ⁥⁥⁥⁥⁥⁥⁥⁥ТL⁥⁥⁥⁥⁥⁥⁥⁥Е⁥⁥R",
    ["HENTAI"] = "НЕ⁥⁥⁥⁥Ν⁥ТАӀ",
    ["HORNY"] = "НОRNY",
    ["HOES"] = "НОЕЅ",
    ["HOE"] = "НОЕ",
    ["KYS"] = "K⁥⁥⁥⁥⁥⁥⁥⁥Υ⁥⁥⁥S",
    ["LMFAO"] = "LМFАО",
    ["LMAO"] = "LМАО",
    ["MASTURBATE"] = "МАЅТURВАТΕ",
    ["NUDES"] = "ΝUDЕЅ",
    ["NUDE"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕D󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕E",
    ["NEGRO"] = "NE󠀕󠀕⁥⁥󠀕G󠀕󠀖⁥⁥󠀕R󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕O",
    ["NIPPLES"] = "Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥Ѕ",
    ["NIPPLE"] = "Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥",
    ["NAKED"] = "ΝΑKΕD",
    ["OMFG"] = "ОM⁥⁥⁥⁥⁥⁥⁥⁥FG",
    ["PENIS"] = "PEN⁥⁥ӀS",
    ["PUSSIES"] = "Р⁥⁥⁥U⁥⁥⁥Ѕ⁥⁥⁥S⁥⁥⁥Ӏ⁥⁥⁥Е⁥⁥⁥Ѕ",
    ["PUSSY"] = "Р⁥⁥⁥U⁥⁥⁥Ѕ⁥⁥⁥S⁥⁥⁥Υ",
    ["PISS"] = "РӀ󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕SS",
    ["PORN"] = "РОRΝ",
    ["RETARD"] = "R⁥⁥⁥⁥E⁥⁥⁥T⁥⁥⁥⁥A⁥⁥⁥R⁥⁥⁥⁥D",
    ["RAPE"] = "RАРЕ",
    ["SHIT"] = "ЅH⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IT",
    ["SEX"] = "ЅЕХ",
    ["SLUT"] = "ЅL⁥⁥⁥⁥UТ",
    ["SLAVE"] = "ЅLА󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖VE",
    ["TITTIES"] = "ТIТТIES",
    ["TITS"] = "ТIТЅ",
    ["THOT"] = "ТН⁥⁥⁥⁥⁥ОТ",
    ["THOTS"] = "ТН⁥⁥⁥⁥⁥ОТЅ",
    ["VIRGINITY"] = "V￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰ΝITY",
    ["VIRGINS"] = "V￰￰￰￰￰￰I￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰INS",
    ["VIRGIN"] = "V￰￰￰￰￰￰I￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰I￰￰￰￰￰￰￰￰N",
    ["VAGINA"] = "V￰￰￰￰￰￰А￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰￰N￰￰￰￰￰￰￰￰А",
    ["XXX"] = "X⁥⁥⁥⁥XX",
    ["WHORE"] = "W⁥⁥⁥Н⁥⁥⁥О⁥⁥⁥R⁥⁥⁥Е",
    ["WEED"] = "⁥⁥⁥⁥W⁥󠀕EED",
    ["blacked.com"] = "blacked.c⁥⁥⁥о⁥⁥⁥m", --Nsfw websites
    ["pornhub.com"] = "р⁥⁥⁥о⁥⁥⁥r⁥⁥⁥n⁥⁥⁥һ⁥⁥⁥u⁥⁥⁥b.c⁥⁥⁥о⁥⁥⁥m",
    ["XVIDEOS.COM"] = "Х󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕VӀ⁥⁥⁥⁥⁥⁥D⁥⁥⁥󠀕󠀕󠀕Е⁥⁥⁥󠀕󠀕󠀕ОЅ.С⁥⁥⁥󠀕󠀕󠀕ОМ",
    ["https://blacked.com"] = "httрs:/⁥⁥⁥/blacked.c⁥⁥⁥о⁥⁥⁥m",
    ["PORNHUB.COM"] = "Р⁥⁥⁥О⁥⁥⁥R⁥⁥⁥Ν⁥⁥⁥Н⁥⁥⁥U⁥⁥⁥В.С⁥⁥⁥О⁥⁥⁥М⁥⁥⁥",
    ["Asshole"] = "аѕѕ⁥⁥⁥һоlе", --Capitals at the first letter
    ["Ass"] = "а⁥⁥⁥ѕ⁥⁥⁥ѕ",
    ["Arse"] = "аr⁥⁥ѕ⁥е",
    ["Anal"] = "аn⁥⁥⁥⁥аl",
    ["Blowjob"] = "Blow⁥⁥⁥j⁥⁥⁥о⁥⁥⁥b⁥⁥⁥",
    ["Boner"] = "⁥В⁥⁥o⁥⁥n⁥⁥е⁥⁥r",
    ["Boobies"] = "Bо⁥⁥⁥⁥⁥⁥⁥⁥оbіеs",
    ["Bullshit"] = "Bulӏsһ⁥⁥⁥⁥⁥⁥⁥⁥іt",
    ["Bastard"] = "Bas⁥⁥⁥⁥⁥⁥⁥⁥tard",
    ["Beaner"] = "B⁥⁥⁥е⁥⁥⁥а⁥⁥⁥n⁥⁥⁥е⁥⁥⁥r",
    ["Butthole"] = "Bu⁥⁥⁥⁥⁥⁥⁥⁥tthоle",
    ["Bootyhole"] = "B⁥⁥⁥о⁥⁥⁥о⁥⁥⁥t⁥⁥⁥уhole",
    ["Butt"] = "bu⁥⁥⁥⁥⁥⁥⁥⁥tt",
    ["Booty"] = "bооty",
    ["Boobs"] = "bооbѕ",
    ["Boob"] = "bооb",
    ["Breats"] = "Brеаѕtѕ",
    ["Bbc"] = "B⁥⁥⁥b⁥⁥⁥с",
    ["Cocaine"] = "с⁥⁥⁥о⁥⁥⁥с⁥⁥⁥а⁥⁥⁥i⁥⁥⁥n⁥⁥⁥е",
    ["Creampie"] = "с⁥⁥⁥r⁥⁥⁥е⁥⁥⁥а⁥⁥⁥m⁥⁥⁥р⁥⁥⁥i⁥⁥⁥е",
    ["Cum"] = "с⁥⁥⁥⁥um",
    ["Cunts"] = "сu⁥⁥⁥⁥⁥⁥⁥⁥ntѕ",
    ["Cunt"] = "с󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀖󠀕u⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀖󠀕n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥t",
    ["Cock"] = "с⁥⁥⁥о⁥⁥⁥с⁥⁥⁥k",
    ["Cuck"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k",
    ["Cuckold"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k⁥⁥⁥о⁥⁥⁥ӏ⁥⁥⁥d⁥⁥⁥",
    ["Condoms"] = "с⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m⁥⁥⁥s",
    ["Condom"] = "с⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m",
    ["Coochies"] = "cooс⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥es",
    ["Coochie"] = "с⁥⁥⁥о⁥⁥⁥o⁥⁥⁥с⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥е",
    ["Dumbass"] = "Du⁥⁥⁥⁥⁥⁥mb⁥⁥⁥⁥⁥⁥аѕѕ",
    ["Discord"] = "Dіѕсоrd",
    ["Dickhead"] = "D￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kh￰￰￰￰￰ead",
    ["Dick"] = "D⁥⁥⁥⁥i󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥c󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥k",
    ["Damn"] = "D⁥⁥⁥а⁥⁥⁥m⁥⁥⁥n⁥⁥⁥",
    ["Fatass"] = "Fat￰￰￰а￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕ",
    ["Fucked"] = "F￰￰￰￰￰￰uс￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰￰k￰￰￰￰￰￰￰￰e￰￰￰￰d",
    ["Femboy"] = "Fеmbоy",
    ["Femboys"] = "Fеmbоys",
    ["Horny"] = "һ⁥⁥⁥⁥⁥о󠀕󠀕󠀕󠀕r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥у",
    ["Hitler"] = "Нi⁥⁥⁥⁥⁥⁥⁥⁥tӏ⁥⁥⁥⁥⁥⁥⁥⁥е⁥⁥r",
    ["Hentai"] = "H󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕i", 
    ["hentai"] = "h󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕i", 
    ["Hoes"] = "һоеѕ",
    ["Hoe"] = "һое",
    ["Kys"] = "K⁥⁥⁥⁥⁥⁥⁥⁥y⁥⁥⁥ѕ",
    ["Lmfao"] = "Lm⁥⁥⁥⁥⁥⁥⁥⁥fа⁥⁥о",
    ["Motherfucker"] = "Mot￰￰￰￰￰￰￰h￰e￰rf￰￰￰￰￰u￰с￰￰￰￰￰￰￰￰k￰e￰￰￰￰￰￰￰￰r",
    ["Masturbating"] = "M⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥u⁥⁥⁥r⁥⁥⁥b⁥⁥⁥а⁥⁥⁥t⁥⁥⁥ing",
    ["Meth"] = "Mе⁥⁥⁥⁥⁥⁥⁥⁥th",
    ["Naked"] = "Nаkеd",
    ["Nudes"] = "Nudеѕ",
    ["Orgasm"] = "оrg⁥⁥⁥⁥аѕm",
    ["Omfg"] = "оm⁥⁥⁥⁥⁥⁥⁥⁥fg",
    ["Pedophile"] = "p⁥⁥е⁥⁥⁥d⁥⁥⁥⁥⁥⁥⁥ор⁥⁥hіӏ⁥⁥⁥⁥⁥⁥⁥е",
    ["Pornhub"] = "роrnhub",
    ["Penis"] = "pen󠀕󠀖󠀗󠀘󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥󠀕і󠀖󠀗󠀘󠀖󠀗ѕ",
    ["Porn"] = "роrn",
    ["Pussies"] = "р⁥⁥⁥u⁥⁥⁥s⁥⁥⁥s⁥⁥⁥i⁥⁥⁥е⁥⁥⁥s",
    ["Pussy"] = "р⁥⁥⁥u⁥⁥⁥s⁥⁥⁥s⁥⁥⁥у",
    ["Rape"] = "Rаре",
    ["Stripper"] = "Strірреr",
    ["Slave"] = "ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е",
    ["Seduce"] = "ѕеduсе",
    ["Slut"] = "ѕӏ⁥⁥⁥⁥⁥⁥⁥⁥ut",
    ["Shit"] = "⁥⁥⁥ѕ⁥⁥⁥h⁥⁥⁥i⁥⁥⁥t",
    ["Sexy"] = "ѕеху",
    ["Sex"] = "ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥",
    ["Retarded"] = "Rеtаrded",
    ["Retard"] = "R⁥⁥⁥⁥e⁥⁥⁥t⁥⁥⁥⁥a⁥⁥⁥r⁥⁥⁥⁥d",
    ["Titties"] = "T⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥⁥ѕ",
    ["Thots"] = "T⁥⁥⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥otѕ",
    ["Thot"] = "T⁥⁥⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥ot",
    ["Tits"] = "T⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥ts",
    ["Tit"] = "Tіt",
    ["Virginity"] = "V￰￰￰￰￰￰і￰￰￰￰￰￰￰￰r￰￰￰￰￰￰￰￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰і￰￰￰￰t￰￰￰у",
    ["Virgin"] = "V￰￰￰￰￰￰і￰￰￰￰￰￰￰￰r￰￰￰￰￰￰￰￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰s",
    ["Vagina"] = "V󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a",
    ["fuck you"] = "f󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖uc󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖ky󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖o󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖u",
    ["what the fuck"] = "wha⁥⁥⁥⁥⁥⁥tt⁥⁥⁥⁥⁥⁥һеf⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥uс⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥k",
    ["shut the fuck up"] = "sһ⁥⁥⁥⁥⁥⁥utt⁥⁥⁥⁥⁥⁥һеf⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥ku⁥⁥⁥⁥⁥⁥⁥⁥⁥p",
    ["go fuck yourself"] = "gof⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥kу⁥⁥⁥⁥⁥о⁥⁥urself",
    ["fuck"] = "f⁥⁥⁥⁥⁥⁥⁥⁥uсk", --Sometimes works
    ["fucking"] = "f⁥⁥⁥⁥⁥⁥⁥⁥uсking",
    ["Fuck"] = "F⁥⁥⁥⁥⁥⁥⁥⁥uсk",
    ["Fucking"] = "F⁥⁥⁥⁥⁥⁥⁥⁥uсking",
    ["FUCKING"] = " F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚӀ󠀕󠀕󠀕󠀖󠀕N⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕G ", 
    ["FUCKERS"] = "F󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕C󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Κ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕E󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕RS",
    ["FUCKER"] = "F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚ󠀕󠀕󠀕ER",
    ["FUCK"] = "F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚ", --always works
    ["FUCKS"] = "F⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥C󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥ΚS", 
    ["bites your cock"] = "bitesyourсо⁥⁥⁥⁥⁥⁥⁥⁥⁥сk", --Sentences that dont work normally
    ["big black cock"] = "big black сосk",
    ["suck my cock retard"] = "ѕuсk my сосk ret⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥аrd",
    ["i pull all the bitches"] = "i pull all the bitсһеs",
    ["small penis"] = "small рen⁥⁥⁥⁥⁥⁥⁥⁥iѕ",
    ["nigger"] = "n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggеr",
    ["suck my cock"] = "ѕ⁥⁥⁥u⁥⁥⁥с⁥⁥⁥kmyсо⁥⁥⁥сk",
    ["lets have sex"] = "⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ѕ ⁥⁥⁥һ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥",
    ["I HAVE A MASSIVE COCK"] = "I HAVE A MASSIVE СОСK",
    ["SHUT THE FUCK UP"] = "SHUTTHEF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰ΚUР",
    ["I AM ABOUT TO CUM"] = "IАМ АВOU￰￰￰TTOС￰￰￰U￰￰￰М",
    ["wife"] = "wіfе", --Extra
    ["suck"] = "ѕuсk",
    ["love"] = "ӏ⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥vе",
    ["pregnant"] = "рrеgnаnt",
    ["mommy"] = "mоmmу",
    ["daddy"] = "d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у",
    ["WIFE"] = "WIFΕ",
    ["SUCK"] = "SUСK",
    ["kill"] = "k󠀕󠀕󠀕і󠀕󠀕󠀕l󠀕󠀕󠀕ӏ",
    ["yourself"] = "уо󠀕󠀕⁥⁥⁥⁥ur󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕⁥⁥⁥⁥еlf",
    ["E-Rape"] = "Е-Rаре",
    ["pedo"] = "p⁥⁥е⁥⁥⁥d⁥⁥⁥⁥⁥⁥⁥о"
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
        sendMsg("/e Hey how are you doing?", "All")
        sendMsg("/e How are you doing?", "All")
    end
end

local old
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and self.Name == "SayMessageRequest" and #args == 2 and not checkcaller() then
        local newMessage = args[1]
        for i,v in pairs(custom_chars) do
            local rep = string.gsub(newMessage, i, v .. "⁥")
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
      sendMsg("abcdeABCDE12345~`|•√?x", "All")
    end
})

local Section = Tab:AddSection({
    Name = "lowecase A-Z"
})

  Tab:AddButton({
    Name = "ass",
    Callback = function()
sendMsg("а⁥⁥⁥ѕ⁥⁥⁥ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "asshole",
    Callback = function()
sendMsg("аѕѕ⁥⁥⁥һоlе", "All")
    end
})

  Tab:AddButton({
    Name = "anus",
    Callback = function()
sendMsg("а⁥⁥⁥n⁥⁥⁥u⁥⁥⁥ѕ⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "arse ",
    Callback = function()
sendMsg("аr⁥⁥ѕ⁥е", "All")
    end
})

  Tab:AddButton({
    Name = "anal",
    Callback = function()
sendMsg("аn⁥⁥⁥⁥аl", "All")
    end
})

  Tab:AddButton({
    Name = "Boner",
    Callback = function()
sendMsg("⁥В⁥⁥o⁥⁥n⁥⁥е⁥⁥r", "All")
    end
})

  Tab:AddButton({
    Name = "blowjob",
    Callback = function()
sendMsg("blow⁥⁥⁥j⁥⁥⁥о⁥⁥⁥b⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "bitches ",
    Callback = function()
sendMsg("b￰￰i￰￰￰￰￰￰￰￰￰￰￰￰￰￰t￰￰￰￰￰￰￰c￰￰￰һes", "All")
    end
})

  Tab:AddButton({
    Name = "bitch ",
    Callback = function()
sendMsg("b󠀗󠀕i⁥⁥⁥⁥t󠀗󠀕󠀕󠀕󠀕⁥⁥⁥⁥сһ", "All")
    end
})

  Tab:AddButton({
    Name = "boobies ",
    Callback = function()
sendMsg("bо⁥⁥⁥⁥⁥⁥⁥⁥оbіеs", "All")
    end
})

  Tab:AddButton({
    Name = "bullshit ",
    Callback = function()
sendMsg("bulӏsһ⁥⁥⁥⁥⁥⁥⁥⁥іt", "All")
    end
})

  Tab:AddButton({
    Name = "bastard ",
    Callback = function()
sendMsg("bas⁥⁥⁥⁥⁥⁥⁥⁥tard", "All")
    end
})

  Tab:AddButton({
    Name = "beaner",
    Callback = function()
sendMsg("b⁥⁥⁥е⁥⁥⁥а⁥⁥⁥n⁥⁥⁥е⁥⁥⁥r", "All")
    end
})

  Tab:AddButton({
    Name = "bondage",
    Callback = function()
sendMsg("b⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥а⁥⁥⁥g⁥⁥⁥е⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "butthole",
    Callback = function()
sendMsg("bu⁥⁥⁥⁥⁥⁥⁥⁥tthоle", "All")
    end
})

  Tab:AddButton({
    Name = "bootyhole",
    Callback = function()
sendMsg("b⁥⁥⁥о⁥⁥⁥о⁥⁥⁥t⁥⁥⁥уhole", "All")
    end
})

  Tab:AddButton({
    Name = "butt",
    Callback = function()
sendMsg("bu⁥⁥⁥⁥⁥⁥⁥⁥tt", "All")
    end
})

  Tab:AddButton({
    Name = "booty",
    Callback = function()
sendMsg("bооty", "All")
    end
})

  Tab:AddButton({
    Name = "boobs",
    Callback = function()
sendMsg("bооbѕ", "All")
    end
})

  Tab:AddButton({
    Name = "boob",
    Callback = function()
sendMsg("bооb", "All")
    end
})

  Tab:AddButton({
    Name = "breasts",
    Callback = function()
sendMsg("brеаѕtѕ", "All")
    end
})

  Tab:AddButton({
    Name = "bbc",
    Callback = function()
sendMsg("b⁥⁥⁥b⁥⁥⁥с", "All")
    end
})

  Tab:AddButton({
    Name = "cocaine",
    Callback = function()
sendMsg("с⁥⁥⁥о⁥⁥⁥с⁥⁥⁥а⁥⁥⁥i⁥⁥⁥n⁥⁥⁥е", "All")
    end
})


  Tab:AddButton({
    Name = "creampie",
    Callback = function()
sendMsg("с⁥⁥⁥r⁥⁥⁥е⁥⁥⁥а⁥⁥⁥m⁥⁥⁥р⁥⁥⁥i⁥⁥⁥е", "All")
    end
})

  Tab:AddButton({
    Name = "cumming",
    Callback = function()
sendMsg("с⁥⁥⁥⁥umming", "All")
    end
})

  Tab:AddButton({
    Name = "cum",
    Callback = function()
sendMsg("с⁥⁥⁥⁥um", "All")
    end
})


  Tab:AddButton({
    Name = "cunts",
    Callback = function()
sendMsg("сu⁥⁥⁥⁥⁥⁥⁥⁥ntѕ", "All")
    end
})

  Tab:AddButton({
    Name = "cunt",
    Callback = function()
sendMsg("с󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀖󠀕u⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀖󠀕n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥t", "All")
    end
})

  Tab:AddButton({
    Name = "cock",
    Callback = function()
sendMsg("с⁥⁥⁥о⁥⁥⁥с⁥⁥⁥k", "All")
    end
})

  Tab:AddButton({
    Name = "clit",
    Callback = function()
sendMsg("с󠀕󠀕⁥І󠀕󠀕⁥і󠀕󠀕⁥t", "All")
    end
})

  Tab:AddButton({
    Name = "cuck",
    Callback = function()
sendMsg("с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k", "All")
    end
})

  Tab:AddButton({
    Name = "cuckold",
    Callback = function()
sendMsg("с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k⁥⁥⁥о⁥⁥⁥ӏ⁥⁥⁥d⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "condoms",
    Callback = function()
sendMsg("с⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m⁥⁥⁥s", "All")
    end
})


  Tab:AddButton({
    Name = "condom",
    Callback = function()
sendMsg("с⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m", "All")
    end
})

  Tab:AddButton({
    Name = "coochies",
    Callback = function()
sendMsg("cooс⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥es", "All")
    end
})


  Tab:AddButton({
    Name = "coochie",
    Callback = function()
sendMsg("с⁥⁥⁥о⁥⁥⁥o⁥⁥⁥с⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥е", "All")
    end
})

  Tab:AddButton({
    Name = "cunny",
    Callback = function()
sendMsg("сu⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу", "All")
    end
})

  Tab:AddButton({
    Name = "dumbass",
    Callback = function()
sendMsg("du⁥⁥⁥⁥⁥⁥mb⁥⁥⁥⁥⁥⁥аѕѕ", "All")
    end
})

  Tab:AddButton({
    Name = "dickhead",
    Callback = function()
sendMsg("d￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kh￰￰￰￰￰ead", "All")
    end
})

  Tab:AddButton({
    Name = "discord",
    Callback = function()
sendMsg("dіѕсоrd", "All")
    end
})

  Tab:AddButton({
    Name = "damn",
    Callback = function()
sendMsg("d⁥⁥⁥а⁥⁥⁥m⁥⁥⁥n⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "doggystyle",
    Callback = function()
sendMsg("d⁥⁥⁥оggystyle", "All")
    end
})

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
sendMsg("Е-Rаре", "All")
    end
})

  Tab:AddButton({
    Name = "fatass",
    Callback = function()
sendMsg("fat￰￰￰а￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "fucked",
    Callback = function()
sendMsg("f￰￰￰￰￰￰uс￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰￰k￰￰￰￰￰￰￰￰e￰￰￰￰d", "All")
    end
})

  Tab:AddButton({
    Name = "fuckers (semi-brocken)",
    Callback = function()
sendMsg("󠀕󠀕󠀕f￰￰￰￰￰￰uс￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰￰k￰￰￰￰￰￰￰￰e￰￰￰￰󠀕󠀕󠀕rѕ", "All")
    end
})

  Tab:AddButton({
    Name = "fap",
    Callback = function()
sendMsg("f⁥󠀕⁥⁥а⁥󠀕⁥⁥р", "All")
    end
})

  Tab:AddButton({
    Name = "femboys",
    Callback = function()
sendMsg("fеmbоys", "All")
    end
})

  Tab:AddButton({
    Name = "femboy",
    Callback = function()
sendMsg("fеmbоy", "All")
    end
})

  Tab:AddButton({
    Name = "fanny",
    Callback = function()
sendMsg("fa⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу", "All")
    end
})

  Tab:AddButton({
    Name = "horny",
    Callback = function()
sendMsg("һ⁥⁥⁥⁥⁥о󠀕󠀕󠀕󠀕r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥у", "All")
    end
})

  Tab:AddButton({
    Name = "Hitler",
    Callback = function()
sendMsg("Нi⁥⁥⁥⁥⁥⁥⁥⁥tӏ⁥⁥⁥⁥⁥⁥⁥⁥е⁥⁥r", "All")
    end
})

  Tab:AddButton({
    Name = "hentai",
    Callback = function()
sendMsg("h󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕i", "All")
    end
})

  Tab:AddButton({
    Name = "hoes",
    Callback = function()
sendMsg("һоеѕ", "All")
    end
})

  Tab:AddButton({
    Name = "hoe",
    Callback = function()
sendMsg("һое", "All")
    end
})

  Tab:AddButton({
    Name = "instagram",
    Callback = function()
sendMsg("і󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥n󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥tаg󠀕󠀕󠀕󠀕rаm", "All")
    end
})

  Tab:AddButton({
    Name = "insta",
    Callback = function()
sendMsg("i󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥n󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥s󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ta", "All")
    end
})

  Tab:AddButton({
    Name = "kys",
    Callback = function()
sendMsg("k⁥⁥⁥⁥⁥⁥⁥⁥y⁥⁥⁥ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "Lmfao",
    Callback = function()
sendMsg("Lm⁥⁥⁥⁥⁥⁥⁥⁥f⁥⁥ао", "All")
    end
})

  Tab:AddButton({
    Name = "lmfao",
    Callback = function()
sendMsg("ӏm⁥⁥⁥⁥⁥⁥⁥⁥fа⁥⁥о", "All")
    end
})

  Tab:AddButton({
    Name = "lmao",
    Callback = function()
sendMsg("ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥maо", "All")
    end
})

  Tab:AddButton({
    Name = "motherfucker",
    Callback = function()
sendMsg("mot￰￰￰￰￰￰￰h￰e￰rf￰￰￰￰￰u￰с￰￰￰￰￰￰￰￰k￰e￰￰￰￰￰￰￰￰r", "All")
    end
})

  Tab:AddButton({
    Name = "masturbate",
    Callback = function()
sendMsg("m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕b󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e", "All")
    end
})

  Tab:AddButton({
    Name = "masturbating",
    Callback = function()
sendMsg("m⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥u⁥⁥⁥r⁥⁥⁥b⁥⁥⁥а⁥⁥⁥t⁥⁥⁥ing", "All")
    end
})

  Tab:AddButton({
    Name = "molest",
    Callback = function()
sendMsg("m⁥⁥⁥⁥o⁥⁥⁥⁥ӏ⁥⁥⁥⁥е⁥⁥⁥ѕ⁥⁥⁥⁥t", "All")
    end
})

  Tab:AddButton({
    Name = "meth",
    Callback = function()
sendMsg("mе⁥⁥⁥⁥⁥⁥⁥⁥th", "All")
    end
})

  Tab:AddButton({
    Name = "naked",
    Callback = function()
sendMsg("nаkеd", "All")
    end
})

  Tab:AddButton({
    Name = "negro",
    Callback = function()
sendMsg("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕o", "All")
    end
})

  Tab:AddButton({
    Name = "nipples",
    Callback = function()
sendMsg("n󠀕󠀕⁥i󠀕󠀕⁥⁥󠀕р⁥p󠀕󠀖⁥⁥󠀕l󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕e󠀖⁥⁥ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "nipple",
    Callback = function()
sendMsg("n󠀕󠀕⁥i󠀕󠀕⁥⁥󠀕р⁥p󠀕󠀖⁥⁥󠀕l󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕e󠀖⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "nudes",
    Callback = function()
sendMsg("nudеѕ", "All")
    end
})

  Tab:AddButton({
    Name = "nude",
    Callback = function()
sendMsg("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е", "All")
    end
})

  Tab:AddButton({
    Name = "orgasm",
    Callback = function()
sendMsg("оrg⁥⁥⁥⁥аѕm", "All")
    end
})

  Tab:AddButton({
    Name = "omfg",
    Callback = function()
sendMsg("оm⁥⁥⁥⁥⁥⁥⁥⁥fg", "All")
    end
})

  Tab:AddButton({
    Name = "pedophile",
    Callback = function()
sendMsg("p⁥⁥е⁥⁥⁥d⁥⁥⁥⁥⁥⁥⁥ор⁥⁥hіӏ⁥⁥⁥⁥⁥⁥⁥е", "All")
    end
})

  Tab:AddButton({
    Name = "pornhub",
    Callback = function()
sendMsg("⁥⁥р󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕b", "All")
    end
})

  Tab:AddButton({
    Name = "penis",
    Callback = function()
sendMsg("pen󠀕󠀖󠀗󠀘󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥󠀕і󠀖󠀗󠀘󠀖󠀗ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "porn",
    Callback = function()
sendMsg("роrn", "All")
    end
})

  Tab:AddButton({
    Name = "pussies",
    Callback = function()
sendMsg("р⁥⁥⁥u⁥⁥⁥s⁥⁥⁥s⁥⁥⁥i⁥⁥⁥е⁥⁥⁥s", "All")
    end
})

  Tab:AddButton({
    Name = "pussy",
    Callback = function()
sendMsg("р⁥⁥⁥u⁥⁥⁥s⁥⁥⁥s⁥⁥⁥у", "All")
    end
})

  Tab:AddButton({
    Name = "piss",
    Callback = function()
sendMsg("рі󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕ss", "All")
    end
})

  Tab:AddButton({
    Name = "queer",
    Callback = function()
sendMsg("q⁥⁥⁥u⁥⁥⁥е⁥⁥⁥е⁥⁥⁥r⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "retarded",
    Callback = function()
sendMsg("rеtаrded", "All")
    end
})
  Tab:AddButton({
    Name = "retard",
    Callback = function()
sendMsg("⁥⁥r⁥󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е󠀖󠀕t 󠀕󠀕󠀕󠀕󠀖󠀕а⁥⁥⁥󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕⁥⁥⁥⁥󠀕d", "All")
    end
})

  Tab:AddButton({
    Name = "rape",
    Callback = function()
sendMsg("rаре", "All")
    end
})

  Tab:AddButton({
    Name = "schlong",
    Callback = function()
sendMsg("ѕ󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖c󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖h󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖l󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖o󠀕󠀖󠀗￰￰￰￰󠀘󠀘󠀕󠀖ng", "All")
    end
})

  Tab:AddButton({
    Name = "stripper",
    Callback = function()
sendMsg("ѕtrірреr", "All")
    end
})

  Tab:AddButton({
    Name = "slave",
    Callback = function()
sendMsg("ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е", "All")
    end
})

  Tab:AddButton({
    Name = "sperm",
    Callback = function()
sendMsg("ѕpе󠀕￰￰￰￰󠀖r￰󠀖m", "All")
    end
})

  Tab:AddButton({
    Name = "seduce",
    Callback = function()
sendMsg("ѕеduсе", "All")
    end
})

  Tab:AddButton({
    Name = "slut",
    Callback = function()
sendMsg("sӏut", "All")
    end
})

  Tab:AddButton({
    Name = "shit",
    Callback = function()
sendMsg("⁥⁥⁥ѕ⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥t", "All")
    end
})

  Tab:AddButton({
    Name = "sexy",
    Callback = function()
sendMsg("ѕеху", "All")
    end
})

  Tab:AddButton({
    Name = "sex",
    Callback = function()
sendMsg("ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "titties",
    Callback = function()
sendMsg("t⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥⁥ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "thots",
    Callback = function()
sendMsg("t⁥⁥⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥otѕ", "All")
    end
})

  Tab:AddButton({
    Name = "thot",
    Callback = function()
sendMsg("t⁥⁥⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥ot", "All")
    end
})

  Tab:AddButton({
    Name = "tits",
    Callback = function()
sendMsg("t⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥ts", "All")
    end
})

  Tab:AddButton({
    Name = "tit",
    Callback = function()
sendMsg("tіt", "All")
    end
})

  Tab:AddButton({
    Name = "virginity",
    Callback = function()
sendMsg("v￰￰￰￰￰￰і￰￰￰￰￰￰￰￰r￰￰￰￰￰￰￰￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰і￰￰￰￰t￰￰￰у", "All")
    end
})

  Tab:AddButton({
    Name = "virgins",
    Callback = function()
sendMsg("vir￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰s", "All")
    end
})

  Tab:AddButton({
    Name = "virgin",
    Callback = function()
sendMsg("v󠀕￰￰￰￰￰￰󠀘і󠀖￰￰￰￰￰￰￰￰󠀘r󠀕￰￰￰￰￰￰￰￰󠀖g󠀖￰￰￰￰￰￰￰￰￰󠀘і󠀘￰￰￰￰￰￰￰￰n", "All")
    end
})

  Tab:AddButton({
    Name = "vagina",
    Callback = function()
sendMsg("v󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a", "All")
    end
})

  Tab:AddButton({
    Name = "whore",
    Callback = function()
sendMsg("w⁥⁥⁥һ⁥⁥⁥о⁥⁥⁥r⁥⁥⁥е", "All")
    end
})

  Tab:AddButton({
    Name = "weed",
    Callback = function()
sendMsg("⁥⁥⁥⁥w⁥󠀕⁥eed", "All")
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

  Tab:AddButton({
    Name = "ASS",
    Callback = function()
sendMsg("АЅЅ", "All")
    end
})

  Tab:AddButton({
    Name = "ASSHOLE",
    Callback = function()
sendMsg("АЅЅНОLЕ", "All")
    end
})

  Tab:AddButton({
    Name = "ANUS",
    Callback = function()
sendMsg("А󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Ν󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "ARSE",
    Callback = function()
sendMsg("А󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕R󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Е", "All")
    end
})

  Tab:AddButton({
    Name = "ANAL",
    Callback = function()
sendMsg("АΝ⁥⁥⁥⁥⁥⁥АL", "All")
    end
})

  Tab:AddButton({
    Name = "BASTARD",
    Callback = function()
sendMsg("ВАЅТАRD", "All")
    end
})

  Tab:AddButton({
    Name = "BONDAGE",
    Callback = function()
sendMsg("В󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥О󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ν󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥D󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥АGЕ", "All")
    end
})

  Tab:AddButton({
    Name = "BONER",
    Callback = function()
sendMsg("⁥В⁥⁥O⁥⁥N⁥⁥Е⁥⁥R", "All")
    end
})

  Tab:AddButton({
    Name = "BITCHES",
    Callback = function()
sendMsg("В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СНЕS", "All")
    end
})

  Tab:AddButton({
    Name = "BITCH",
    Callback = function()
sendMsg("В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН", "All")
    end
})

  Tab:AddButton({
    Name = "BLOWJOB",
    Callback = function()
sendMsg("BLOWЈOB", "All")
    end
})

  Tab:AddButton({
    Name = "BULLSHIT",
    Callback = function()
sendMsg("В󠀕󠀕󠀕󠀕U⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥LL⁥⁥⁥Ѕ⁥⁥⁥Н⁥⁥⁥Ӏ⁥⁥⁥Т", "All")
    end
})

  Tab:AddButton({
    Name = "BOOBS",
    Callback = function()
sendMsg("ВООВS", "All")
    end
})

  Tab:AddButton({
    Name = "BOOB",
    Callback = function()
sendMsg("ВООВ", "All")
    end
})

  Tab:AddButton({
    Name = "BUTTHOLE",
    Callback = function()
sendMsg("ВUТТ⁥⁥⁥⁥НOLЕ", "All")
    end
})

  Tab:AddButton({
    Name = "BUTT",
    Callback = function()
sendMsg("ВUТТ", "All")
    end
})

  Tab:AddButton({
    Name = "BOOTY",
    Callback = function()
sendMsg("ВООТΥ", "All")
    end
})

  Tab:AddButton({
    Name = "BEANER",
    Callback = function()
sendMsg("В󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ЕА󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ν󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥R", "All")
    end
})

  Tab:AddButton({
    Name = "COCAINE",
    Callback = function()
sendMsg("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСА󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ӀΝ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е", "All")
    end
})

  Tab:AddButton({
    Name = "CUNTS",
    Callback = function()
sendMsg("СU⁥⁥⁥⁥⁥⁥⁥⁥NТЅ", "All")
    end
})

  Tab:AddButton({
    Name = "CUNT",
    Callback = function()
sendMsg("СU⁥⁥⁥⁥⁥⁥⁥⁥NТ", "All")
    end
}) 

  Tab:AddButton({
    Name = "COOCHIES",
    Callback = function()
sendMsg("С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ЕS", "All")
    end
})

  Tab:AddButton({
    Name = "COOCHIE",
    Callback = function()
sendMsg("С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е", "All")
    end
})

  Tab:AddButton({
    Name = "CUM",
    Callback = function()
sendMsg("СUМ", "All")
    end
})

  Tab:AddButton({
    Name = "CREAMPIE",
    Callback = function()
sendMsg("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥R󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥АМ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥PIE", "All")
    end
})

  Tab:AddButton({
    Name = "COCK",
    Callback = function()
sendMsg("СОСK", "All")
    end
})

  Tab:AddButton({
    Name = "CUCKOLD",
    Callback = function()
sendMsg("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥KOLD", "All")
    end
})

  Tab:AddButton({
    Name = "CUCK",
    Callback = function()
sendMsg("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥K", "All")
    end
})

  Tab:AddButton({
    Name = "DISCORD",
    Callback = function()
sendMsg("DӀЅСОRD", "All")
    end
})

  Tab:AddButton({
    Name = "DUMBASS",
    Callback = function()
sendMsg("D󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕UM⁥⁥⁥⁥⁥⁥⁥⁥⁥BАЅЅ", "All")
    end
})

  Tab:AddButton({
    Name = "DICKHEAD",
    Callback = function()
sendMsg("D⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IСΚНЕ󠀕⁥⁥󠀕AD", "All")
    end
})

  Tab:AddButton({
    Name = "DICK",
    Callback = function()
sendMsg("D⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IСΚ", "All")
    end
})

  Tab:AddButton({
    Name = "DAMN",
    Callback = function()
sendMsg("DАМΝ", "All")
    end
})

  Tab:AddButton({
    Name = "FAGGOT",
    Callback = function()
sendMsg("F󠀕󠀖󠀗󠀘￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀖󠀗󠀘А󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰󠀕G⁥⁥󠀖󠀗󠀘󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀘󠀘G󠀖󠀗󠀘󠀖󠀗󠀘￰￰￰￰￰￰￰О󠀖󠀗󠀘￰￰￰￰￰󠀖󠀗Т", "All")
    end
})


  Tab:AddButton({
    Name = "FATASS",
    Callback = function()
sendMsg("F⁥⁥⁥А⁥⁥⁥ТА⁥⁥⁥Ѕ⁥⁥⁥Ѕ", "All")
    end
})
  Tab:AddButton({
    Name = "FEMBOYS",
    Callback = function()
sendMsg("FЕМВОΥЅ", "All")
    end
})

  Tab:AddButton({
    Name = "FEMBOY",
    Callback = function()
sendMsg("FЕМВОΥ", "All")
    end
})

  Tab:AddButton({
    Name = "FUCKERS",
    Callback = function()
sendMsg("F󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕C󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕Κ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕E󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕RS", "All")
    end
})

  Tab:AddButton({
    Name = "FUCKER",
    Callback = function()
sendMsg("F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚ󠀕󠀕󠀕ER", "All")
    end
})


  Tab:AddButton({
    Name = "HITLER",
    Callback = function()
sendMsg("НӀ⁥⁥⁥⁥⁥⁥⁥⁥ТL⁥⁥⁥⁥⁥⁥⁥⁥Е⁥⁥R", "All")
    end
})


  Tab:AddButton({
    Name = "HENTAI",
    Callback = function()
sendMsg("НЕ⁥⁥⁥⁥Ν⁥ТАӀ", "All")
    end
})

  Tab:AddButton({
    Name = "HORNY",
    Callback = function()
sendMsg("НОRNY", "All")
    end
})

  Tab:AddButton({
    Name = "HOES",
    Callback = function()
sendMsg("НОЕЅ", "All")
    end
})

  Tab:AddButton({
    Name = "HOE",
    Callback = function()
sendMsg("НОЕ", "All")
    end
})

  Tab:AddButton({
    Name = "KYS",
    Callback = function()
sendMsg("K⁥⁥⁥⁥⁥⁥⁥⁥Υ⁥⁥⁥S", "All")
    end
})

  Tab:AddButton({
    Name = "LMFAO",
    Callback = function()
sendMsg("LМFАО", "All")
    end
})

  Tab:AddButton({
    Name = "LMAO",
    Callback = function()
sendMsg("LМАО", "All")
    end
})

  Tab:AddButton({
    Name = "MOTHERFUCKER",
    Callback = function()
sendMsg("MOTHERF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰Κ￰￰￰￰￰￰￰￰E￰￰￰￰￰￰￰R", "All")
    end
})

  Tab:AddButton({
    Name = "MASTURBATE",
    Callback = function()
sendMsg("МАЅТURВАТΕ", "All")
    end
})


  Tab:AddButton({
    Name = "METH",
    Callback = function()
sendMsg("МETH", "All")
    end
})

  Tab:AddButton({
    Name = "NAKED",
    Callback = function()
sendMsg("ΝΑKΕD", "All")
    end
})

  Tab:AddButton({
    Name = "NEGRO",
    Callback = function()
sendMsg("NE󠀕󠀕⁥⁥󠀕G󠀕󠀖⁥⁥󠀕R󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕O", "All")
    end
})


  Tab:AddButton({
    Name = "NUDES",
    Callback = function()
sendMsg("ΝUDЕЅ", "All")
    end
})

  Tab:AddButton({
    Name = "NUDE",
    Callback = function()
sendMsg("N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕D󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕E", "All")
    end
})

  Tab:AddButton({
    Name = "NIPPLES",
    Callback = function()
sendMsg("Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥Ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "NIPPLE",
    Callback = function()
sendMsg("Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "OMFG",
    Callback = function()
sendMsg("ОM⁥⁥⁥⁥⁥⁥⁥⁥FG", "All")
    end
})

  Tab:AddButton({
    Name = "PENIS",
    Callback = function()
sendMsg("PEN⁥⁥ӀS", "All")
    end
})


  Tab:AddButton({
    Name = "PUSSIES",
    Callback = function()
sendMsg("Р⁥⁥⁥U⁥⁥⁥Ѕ⁥⁥⁥S⁥⁥⁥Ӏ⁥⁥⁥Е⁥⁥⁥Ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "PUSSY",
    Callback = function()
sendMsg("Р⁥⁥⁥U⁥⁥⁥Ѕ⁥⁥⁥S⁥⁥⁥Υ", "All")
    end
})


  Tab:AddButton({
    Name = "PISS",
    Callback = function()
sendMsg("РӀЅЅ", "All")
    end
})

  Tab:AddButton({
    Name = "PORN",
    Callback = function()
sendMsg("РОRΝ", "All")
    end
})


  Tab:AddButton({
    Name = "RETARD",
    Callback = function()
sendMsg("R⁥⁥⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥T⁥⁥⁥⁥⁥⁥⁥A⁥⁥⁥⁥⁥⁥R⁥⁥⁥⁥⁥⁥⁥D", "All")
    end
})

  Tab:AddButton({
    Name = "RAPE",
    Callback = function()
sendMsg("RАРЕ", "All")
    end
})


  Tab:AddButton({
    Name = "SHIT",
    Callback = function()
sendMsg("ЅH⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IT", "All")
    end
})

  Tab:AddButton({
    Name = "SLUT",
    Callback = function()
sendMsg("ЅL⁥⁥⁥⁥UТ", "All")
    end
})


  Tab:AddButton({
    Name = "SLAVE",
    Callback = function()
sendMsg("ЅLА󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖VE", "All")
    end
})

  Tab:AddButton({
    Name = "SEX",
    Callback = function()
sendMsg("ЅЕХ", "All")
    end
})


  Tab:AddButton({
    Name = "TITTIES",
    Callback = function()
sendMsg("ТIТТIES", "All")
    end
})

  Tab:AddButton({
    Name = "TITS",
    Callback = function()
sendMsg("ТIТЅ", "All")
    end
})


  Tab:AddButton({
    Name = "THOTS",
    Callback = function()
sendMsg("ТН⁥⁥⁥⁥⁥ОТЅ", "All")
    end
})

  Tab:AddButton({
    Name = "THOT",
    Callback = function()
sendMsg("ТН⁥⁥⁥⁥⁥ОТ", "All")
    end
})



  Tab:AddButton({
    Name = "VIRGINITY",
    Callback = function()
sendMsg("V￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰ΝITY", "All")
    end
})

  Tab:AddButton({
    Name = "VIRGINS",
    Callback = function()
sendMsg("V￰￰￰￰￰￰I￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰INS", "All")
    end
})



  Tab:AddButton({
    Name = "VIRGIN",
    Callback = function()
sendMsg("V￰￰￰￰￰￰I￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰I￰￰￰￰￰￰￰￰N", "All")
    end
})

  Tab:AddButton({
    Name = "VAGINA",
    Callback = function()
sendMsg("V￰￰￰￰￰￰А￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰￰N￰￰￰￰￰￰￰￰А", "All")
    end
})



  Tab:AddButton({
    Name = "XXX",
    Callback = function()
sendMsg("X⁥⁥⁥⁥XX", "All")
    end
})

  Tab:AddButton({
    Name = "WHORE",
    Callback = function()
sendMsg("W⁥⁥⁥Н⁥⁥⁥О⁥⁥⁥R⁥⁥⁥Е", "All")
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
sendMsg("аn⁥⁥⁥⁥аl ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥ pls", "All")
    end
})

  Tab:AddButton({
    Name = "anal sex",
    Callback = function()
sendMsg("аn⁥⁥⁥⁥аl ѕ⁥⁥⁥е⁥⁥⁥х", "All")
    end
})


  Tab:AddButton({
    Name = "ass sex pls",
    Callback = function()
sendMsg("а⁥⁥⁥⁥ѕѕs⁥⁥⁥⁥ехpӏs", "All")
    end
})

  Tab:AddButton({
    Name = "Boom cockshot!",
    Callback = function()
sendMsg("В⁥⁥⁥⁥о⁥⁥⁥⁥о⁥⁥⁥⁥m⁥⁥⁥⁥ с⁥⁥⁥⁥о⁥⁥⁥⁥с⁥⁥⁥⁥k⁥⁥⁥⁥ѕ⁥⁥⁥⁥h⁥⁥⁥⁥о⁥⁥⁥⁥t⁥⁥⁥⁥!", "All")
    end
})

  Tab:AddButton({
    Name = "boner alert!",
    Callback = function()
sendMsg("b⁥⁥⁥o⁥⁥⁥n⁥⁥⁥е⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥r⁥⁥⁥t⁥⁥⁥!", "All")
    end
})

  Tab:AddButton({
    Name = "butt sex",
    Callback = function()
sendMsg("bu⁥⁥⁥⁥⁥⁥⁥⁥tt ѕ⁥⁥⁥еx", "All")
    end
})

  Tab:AddButton({
    Name = "big cock",
    Callback = function()
sendMsg("b⁥ig со⁥⁥⁥сk", "All")
    end
})

  Tab:AddButton({
    Name = "boobs or ass?",
    Callback = function()
sendMsg("b⁥⁥⁥о⁥⁥⁥о⁥⁥⁥b⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥о⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥ѕ?", "All")
    end
})



  Tab:AddButton({
    Name = "Big ass thighs",
    Callback = function()
sendMsg("Віg аѕѕ thіghѕ", "All")
    end
})

  Tab:AddButton({
    Name = "big black cock",
    Callback = function()
sendMsg("big black сосk", "All")
    end
})



  Tab:AddButton({
    Name = "Big ass",
    Callback = function()
sendMsg("Віg аѕѕ", "All")
    end
})

  Tab:AddButton({
    Name = "Be my wife!",
    Callback = function()
sendMsg("Ве mу wіfе!", "All")
    end
})



  Tab:AddButton({
    Name = "Can I see those cute boobs of yours?",
    Callback = function()
sendMsg("Саn І ѕее thоѕе сutе bооbѕ оf уоurѕ?", "All")
    end
})

  Tab:AddButton({
    Name = "cock sucker",
    Callback = function()
sendMsg("сосk ѕuсkеr", "All")
    end
})



  Tab:AddButton({
    Name = "Cum on me please!",
    Callback = function()
sendMsg("С⁥⁥⁥⁥umonme please!", "All")
    end
})

  Tab:AddButton({
    Name = "cum please",
    Callback = function()
sendMsg("с⁥⁥⁥⁥um рӏеаѕе", "All")
    end
})


  Tab:AddButton({
    Name = "cut yourself.",
    Callback = function()
sendMsg("сutyоurself.", "All")
    end
})

  Tab:AddButton({
    Name = "child porn",
    Callback = function()
sendMsg("сhild роrn", "All")
    end
})



  Tab:AddButton({
    Name = "Cock incoming!",
    Callback = function()
sendMsg("C󠀕󠀕󠀕󠀕о⁥⁥⁥⁥⁥⁥⁥⁥⁥сki⁥⁥󠀕󠀕󠀕󠀕⁥nс⁥⁥󠀕󠀕󠀕󠀕⁥о󠀕󠀕󠀕󠀕m󠀕󠀕󠀕󠀕i󠀕󠀕󠀕󠀕n⁥⁥⁥g!", "All")
    end
})

  Tab:AddButton({
    Name = "Cock in bedroom",
    Callback = function()
sendMsg("С󠀕󠀕󠀕󠀕о⁥⁥⁥⁥⁥⁥⁥⁥⁥с󠀕⁥⁥kі⁥󠀕󠀕󠀕󠀕⁥⁥nb⁥⁥е󠀕󠀕󠀕󠀕dr⁥ооm", "All")
    end
})



  Tab:AddButton({
    Name = "Cock or Boobs",
    Callback = function()
sendMsg("С⁥⁥⁥о⁥⁥⁥с⁥⁥⁥k⁥⁥⁥ ⁥⁥⁥о⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥В⁥⁥⁥о⁥⁥⁥о⁥⁥⁥b⁥⁥⁥ѕ⁥⁥⁥?", "All")
    end
})

  Tab:AddButton({
    Name = "damn you got a long schlong daddy",
    Callback = function()
sendMsg("d⁥⁥⁥а⁥⁥⁥m⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥о⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥с⁥⁥⁥һ⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у", "All")
    end
})



  Tab:AddButton({
    Name = "dirty hoe",
    Callback = function()
sendMsg("d⁥⁥⁥⁥⁥⁥i⁥⁥⁥⁥rt⁥⁥⁥у⁥⁥h⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥e", "All")
    end
})

  Tab:AddButton({
    Name = "fuck yourself",
    Callback = function()
sendMsg("󠀕⁥⁥󠀕f⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥uс󠀕󠀕⁥⁥⁥⁥󠀕k󠀕󠀕⁥⁥y󠀕󠀕⁥⁥⁥⁥⁥⁥⁥󠀕о⁥⁥u⁥⁥󠀕⁥r⁥⁥󠀕⁥⁥⁥⁥⁥ѕ⁥⁥⁥󠀕⁥⁥⁥⁥󠀕󠀕󠀕e⁥⁥l⁥⁥f", "All")
    end
})

  Tab:AddButton({
    Name = "free porn",
    Callback = function()
sendMsg("frее роrn", "All")
    end
})


  Tab:AddButton({
    Name = "fatass hoe",
    Callback = function()
sendMsg("f󠀘󠀕󠀖󠀗аt￰￰￰a￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕһ⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀘󠀕󠀖󠀗ое", "All")
    end
})

  Tab:AddButton({
    Name = "fat ass",
    Callback = function()
sendMsg("f󠀘󠀕󠀖󠀗аt ￰￰￰a￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕs", "All")
    end
})



  Tab:AddButton({
    Name = "go end your own life.",
    Callback = function()
sendMsg("gо еnd уоur оwn lіfе.", "All")
    end
})

  Tab:AddButton({
    Name = "Hail Hitler",
    Callback = function()
sendMsg("На⁥⁥⁥⁥⁥iӏНi⁥⁥⁥⁥⁥⁥⁥⁥tӏ⁥⁥⁥⁥⁥⁥⁥⁥е⁥⁥r", "All")
    end
})



  Tab:AddButton({
    Name = "hardcore sex",
    Callback = function()
sendMsg("h⁥⁥⁥а⁥⁥⁥r⁥⁥⁥d⁥⁥⁥с⁥⁥⁥о⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "I eat pussy",
    Callback = function()
sendMsg("I⁥⁥⁥⁥⁥⁥ е⁥⁥⁥⁥⁥⁥⁥аt ⁥⁥р⁥⁥⁥u⁥⁥⁥⁥s⁥⁥sу", "All")
    end
})



  Tab:AddButton({
    Name = "i love minors",
    Callback = function()
sendMsg("⁥⁥⁥і ӏ⁥⁥⁥о⁥⁥⁥v⁥⁥⁥е ⁥⁥⁥m⁥⁥⁥і⁥⁥⁥n⁥⁥⁥о⁥⁥⁥r⁥⁥⁥ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "i love you",
    Callback = function()
sendMsg("і ӏоvе уоu", "All")
    end
})



  Tab:AddButton({
    Name = "I love cocks",
    Callback = function()
sendMsg("I⁥⁥⁥⁥⁥⁥ ӏ⁥⁥о⁥⁥vе ⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥kѕ", "All")
    end
})

  Tab:AddButton({
    Name = "i love boobs",
    Callback = function()
sendMsg("і⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥vе bооbѕ", "All")
    end
})



  Tab:AddButton({
    Name = "i like titties",
    Callback = function()
sendMsg("і ӏіkе tіttіеs", "All")
    end
})

  Tab:AddButton({
    Name = "im gonna make you pregnant mommy",
    Callback = function()
sendMsg("іm gоnnа mаkе уоu рrеgnаnt mоmmу", "All")
    end
})



  Tab:AddButton({
    Name = "i'm sexy, and you know it",
    Callback = function()
sendMsg("і'm ѕеху, аnd уου knοw іt", "All")
    end
})

  Tab:AddButton({
    Name = "i'm horny so moan",
    Callback = function()
sendMsg("і'm һ⁥⁥⁥⁥⁥о󠀕󠀕󠀕󠀕r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥у ѕο mοаn", "All")
    end
})



  Tab:AddButton({
    Name = "i'm mad horny",
    Callback = function()
sendMsg("і'm mad һ⁥⁥⁥⁥⁥о󠀕󠀕󠀕󠀕r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥у", "All")
    end
})

  Tab:AddButton({
    Name = "i'm gonna bang you hard",
    Callback = function()
sendMsg("і'm gοnnа bаng уοu һаrd", "All")
    end
})



  Tab:AddButton({
    Name = "i'm so hard rn",
    Callback = function()
sendMsg("і'm ѕо hаrd rn", "All")
    end
})

  Tab:AddButton({
    Name = "i'm so wet daddy",
    Callback = function()
sendMsg("і'm ѕо wеt daddy", "All")
    end
})

  Tab:AddButton({
    Name = "i'm so wet",
    Callback = function()
sendMsg("і'm ѕо wеt", "All")
    end
})


  Tab:AddButton({
    Name = "I would like to see some titties",
    Callback = function()
sendMsg("Ι wοuӏd ӏіkе tο ѕее ѕοmе tіttіеs", "All")
    end
})



  Tab:AddButton({
    Name = "i wanna kms",
    Callback = function()
sendMsg("і wаnnа kmѕ", "All")
    end
})

  Tab:AddButton({
    Name = "i wanna smash you",
    Callback = function()
sendMsg("і wаnnа ѕmаѕh уоu", "All")
    end
})



  Tab:AddButton({
    Name = "i want to drink your breasts",
    Callback = function()
sendMsg("і wаnt tо dr⁥⁥⁥⁥⁥іnkуоurbrе⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥ѕtѕ", "All")
    end
})

  Tab:AddButton({
    Name = "I do sexy things",
    Callback = function()
sendMsg("І dо ѕеху thіngѕ", "All")
    end
})



  Tab:AddButton({
    Name = "I banged your girl so hard",
    Callback = function()
sendMsg("І bаngеd уоur gіrl ѕо һаrd", "All")
    end
})

  Tab:AddButton({
    Name = "I dont give a shit.",
    Callback = function()
sendMsg("I dont give a sһіt.", "All")
    end
})



  Tab:AddButton({
    Name = "I love sex",
    Callback = function()
sendMsg("I love ѕеx", "All")
    end
})

  Tab:AddButton({
    Name = "I'll make you pregnant",
    Callback = function()
sendMsg("І'ӏӏ mаkе уоu рrеgnаnt", "All")
    end
})



  Tab:AddButton({
    Name = "imagine getting no bitches",
    Callback = function()
sendMsg("imagine getting no bitсһеs", "All")
    end
})

  Tab:AddButton({
    Name = "kill yourself",
    Callback = function()
sendMsg("kіӏl уоurѕеӏf", "All")
    end
})

  Tab:AddButton({
    Name = "keep moaning",
    Callback = function()
sendMsg("keep mоаning", "All")
    end
})

  Tab:AddButton({
    Name = "lets do doggy style",
    Callback = function()
sendMsg("ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ѕ⁥⁥⁥⁥⁥⁥d⁥⁥⁥о⁥⁥⁥⁥⁥⁥d⁥⁥⁥о⁥⁥⁥g⁥⁥⁥g⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ӏ⁥⁥⁥е", "All")
    end
})



  Tab:AddButton({
    Name = "lets have sex",
    Callback = function()
sendMsg("⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ѕ ⁥⁥⁥һ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "let me squish those titties",
    Callback = function()
sendMsg("ӏеt mе ѕqυіѕһ tһοѕе tіttіеs", "All")
    end
})



  Tab:AddButton({
    Name = "lgbtq+ is related to autism",
    Callback = function()
sendMsg("Ι⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥+⁥⁥⁥ ⁥⁥⁥і⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥е⁥⁥⁥l⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е⁥⁥⁥d t⁥⁥⁥о⁥⁥⁥ а⁥⁥⁥u⁥⁥⁥t⁥⁥⁥і⁥⁥⁥ѕ⁥⁥⁥m", "All")
    end
})

  Tab:AddButton({
    Name = "Mind if you let me squish those titties",
    Callback = function()
sendMsg("Mind if you ӏеt mе ѕqυіѕһ tһοѕе tіttіеs", "All")
    end
})



  Tab:AddButton({
    Name = "my condom fell off!",
    Callback = function()
sendMsg("mу ⁥⁥⁥с⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m fеӏӏ оff!", "All")
    end
})

  Tab:AddButton({
    Name = "Mr Breast is so cool",
    Callback = function()
sendMsg("Мr Вrеаѕt іѕ ѕо сооl", "All")
    end
})



  Tab:AddButton({
    Name = "my cock is dirty",
    Callback = function()
sendMsg("myсо⁥⁥⁥⁥⁥⁥⁥⁥⁥сkisdirty", "All")
    end
})

  Tab:AddButton({
    Name = "make me pregnant",
    Callback = function()
sendMsg("mаkе mе рrеgnаnt", "All")
    end
})



  Tab:AddButton({
    Name = "Naked boys",
    Callback = function()
sendMsg("Νаkеd Вοуѕ", "All")
    end
})

  Tab:AddButton({
    Name = "Naked girls",
    Callback = function()
sendMsg("Νаkеd Gіrӏѕ", "All")
    end
})



  Tab:AddButton({
    Name = "pussy licker",
    Callback = function()
sendMsg("р⁥⁥⁥u⁥⁥⁥⁥s⁥⁥sу ӏi⁥⁥с⁥⁥⁥k⁥⁥е⁥⁥⁥⁥⁥⁥r", "All")
    end
})

  Tab:AddButton({
    Name = "rape me",
    Callback = function()
sendMsg("rареmе", "All")
    end
})



  Tab:AddButton({
    Name = "spank me daddy",
    Callback = function()
sendMsg("ѕ⁥⁥⁥р⁥⁥⁥а⁥⁥⁥n⁥⁥⁥k⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у", "All")
    end
})

  Tab:AddButton({
    Name = "sex slave",
    Callback = function()
sendMsg("ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е", "All")
    end
})


  Tab:AddButton({
    Name = "Sweet cock dude",
    Callback = function()
sendMsg("Ѕwееt сосk dudе", "All")
    end
})

  Tab:AddButton({
    Name = "smd hoe",
    Callback = function()
sendMsg("ѕmd һ⁥⁥⁥о⁥⁥⁥е", "All")
    end
})



  Tab:AddButton({
    Name = "suck my cock",
    Callback = function()
sendMsg("ѕ⁥⁥⁥󠀕󠀕u⁥󠀕󠀕с⁥⁥⁥k󠀕m󠀕yс󠀕󠀕о⁥󠀕⁥⁥сk", "All")
    end
})

  Tab:AddButton({
    Name = "Sweet cock you got up there",
    Callback = function()
sendMsg("Ѕwееtсо⁥⁥⁥⁥⁥⁥⁥⁥⁥сkуоugоtuрthеrе", "All")
    end
})



  Tab:AddButton({
    Name = "shut the fuck up",
    Callback = function()
sendMsg("s󠀕󠀕һ⁥⁥󠀕󠀕⁥⁥⁥⁥u󠀕󠀕tt⁥⁥󠀕󠀕⁥⁥⁥⁥һеf⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥k󠀕󠀕u⁥⁥⁥⁥⁥⁥⁥⁥⁥р", "All")
    end
})

  Tab:AddButton({
    Name = "Shut yo goofy ass up",
    Callback = function()
sendMsg("S⁥⁥⁥һ⁥⁥⁥ut уоgо⁥⁥⁥о⁥⁥⁥f⁥⁥⁥у а⁥⁥⁥ѕ⁥⁥⁥ѕ u⁥⁥⁥p", "All")
    end
})



  Tab:AddButton({
    Name = "shut yo broke ass up",
    Callback = function()
sendMsg("shutyobrokeаѕѕup", "All")
    end
})

  Tab:AddButton({
    Name = "suck my cock retard",
    Callback = function()
sendMsg("ѕuсkmyсосkret⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥аrd", "All")
    end
})



  Tab:AddButton({
    Name = "son of a bitch",
    Callback = function()
sendMsg("sonofab󠀕󠀖󠀗󠀘￰￰󠀕󠀖󠀗󠀘і󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀗󠀘t󠀕￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘с󠀗󠀘󠀗󠀘￰￰￰󠀗󠀘һ", "All")
    end
})

  Tab:AddButton({
    Name = "small penis",
    Callback = function()
sendMsg("small рen⁥⁥⁥⁥⁥⁥⁥⁥iѕ", "All")
    end
})



  Tab:AddButton({
    Name = "Theres cum everywhere!",
    Callback = function()
sendMsg("Т⁥⁥⁥h⁥⁥⁥е⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ѕ ⁥⁥⁥с⁥⁥⁥⁥u⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥е⁥⁥⁥v⁥⁥⁥е⁥⁥⁥r⁥⁥⁥у⁥⁥⁥w⁥⁥⁥h⁥⁥⁥е⁥⁥⁥r⁥⁥⁥е⁥⁥⁥!", "All")
    end
})

  Tab:AddButton({
    Name = "that bbc dont play",
    Callback = function()
sendMsg("thаt b⁥⁥⁥b⁥⁥⁥с dоnt рlау", "All")
    end
})


  Tab:AddButton({
    Name = "ur gf was craving my raging schlong",
    Callback = function()
sendMsg("u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥f⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥r⁥⁥⁥а⁥⁥⁥v⁥⁥⁥і⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥а⁥⁥⁥g⁥⁥⁥і⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥с⁥⁥⁥h⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥n⁥⁥⁥g", "All")
    end
})

  Tab:AddButton({
    Name = "ur moms booty is delicious",
    Callback = function()
sendMsg("ur mоmѕ bооtу іѕ dеlісіоuѕ", "All")
    end
})



  Tab:AddButton({
    Name = "wanna have sex?",
    Callback = function()
sendMsg("wаnnа һаvе s⁥⁥⁥⁥ех?", "All")
    end
})

  Tab:AddButton({
    Name = "wsg bbg you lookin sexy",
    Callback = function()
sendMsg("wѕg bbg уоu lооkіn ѕеху", "All")
    end
})



  Tab:AddButton({
    Name = "what the fuck",
    Callback = function()
sendMsg("wha⁥⁥⁥⁥⁥⁥tt⁥⁥⁥⁥⁥⁥һеf⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥uс⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥k", "All")
    end
})

  Tab:AddButton({
    Name = "wanna see some bbc",
    Callback = function()
sendMsg("wаnnа ѕее ѕоmе b⁥⁥⁥b⁥⁥⁥с", "All")
    end
})



  Tab:AddButton({
    Name = "you stupid nigger",
    Callback = function()
sendMsg("y⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥o⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ustu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥pidn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggеr", "All")
    end
})

  Tab:AddButton({
    Name = "you like to rape and suck black oiled up men",
    Callback = function()
sendMsg("уоu lіkе tо rаре аnd ѕuсk blасk оіlеd uр mеn", "All")
    end
})



  Tab:AddButton({
    Name = "yo my shaft is hard, mind jerking it?",
    Callback = function()
sendMsg("уо mу ѕhаft іѕ һаrd, mіnd јеrkіng іt?", "All")
    end
})

  Tab:AddButton({
    Name = "you're such a whore",
    Callback = function()
sendMsg("у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥'r⁥⁥⁥е⁥⁥⁥⁥⁥⁥ѕ⁥⁥⁥u⁥⁥⁥с⁥⁥⁥һ⁥⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥⁥w⁥⁥⁥һ⁥⁥⁥о⁥⁥⁥r⁥⁥⁥е", "All")
    end
})



  Tab:AddButton({
    Name = "you're a pedophile",
    Callback = function()
sendMsg("у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥'⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ p⁥⁥е⁥⁥⁥d⁥⁥⁥⁥⁥⁥⁥ор⁥⁥hіӏ⁥⁥⁥⁥⁥⁥⁥е", "All")
    end
})

  Tab:AddButton({
    Name = "you pathetic slut",
    Callback = function()
sendMsg("youpatheticsӏut", "All")
    end
})



  Tab:AddButton({
    Name = "you're a pussy",
    Callback = function()
sendMsg("уоu'rе а рu⁥⁥⁥ssу", "All")
    end
})

  Tab:AddButton({
    Name = "you're so sexy",
    Callback = function()
sendMsg("уоu'rе ѕо ѕеху", "All")
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

  Tab:AddButton({
    Name = "BE MY WIFE!",
    Callback = function()
sendMsg("ВΕ МΥ WIFΕ!", "All")
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY LATINAS",
    Callback = function()
sendMsg("ВІG ВООТΥ LАТІΝАЅ", "All")
    end
})



  Tab:AddButton({
    Name = "BIG BOOTY ASIANS",
    Callback = function()
sendMsg("ВІG ВООТΥ АЅІАΝЅ", "All")
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY FEMBOYS",
    Callback = function()
sendMsg("ВІG ВООТΥ FЕМВОΥЅ", "All")
    end
})



  Tab:AddButton({
    Name = "BIG BOOTY",
    Callback = function()
sendMsg("ВІG ВООТΥ", "All")
    end
})

  Tab:AddButton({
    Name = "BIG BOOBS",
    Callback = function()
sendMsg("BIG ВООВS", "All")
    end
})


  Tab:AddButton({
    Name = "CAN I PISS INSIDE YOUR BUTTHOLE",
    Callback = function()
sendMsg("С⁥⁥⁥⁥⁥АN І Р⁥⁥⁥⁥ІЅЅ ІNЅIDE YOU⁥⁥⁥R В⁥⁥⁥U⁥⁥⁥⁥ТТ⁥⁥⁥⁥НOLЕ?", "All")
    end
})

  Tab:AddButton({
    Name = "CAN I PISS ON YOU?",
    Callback = function()
sendMsg("С⁥⁥⁥⁥⁥АNІР⁥⁥⁥⁥ІЅЅONYOU?", "All")
    end
})



  Tab:AddButton({
    Name = "COCK IN BEDROOM",
    Callback = function()
sendMsg("СОСKI⁥⁥⁥NBEDROOM", "All")
    end
})

  Tab:AddButton({
    Name = "CUM ON ME",
    Callback = function()
sendMsg("СUМОΝМЕ", "All")
    end
})



  Tab:AddButton({
    Name = "CUM ON MY FACE",
    Callback = function()
sendMsg("С￰￰￰UМONМΥFА⁥⁥⁥⁥⁥⁥⁥⁥СЕ", "All")
    end
})

  Tab:AddButton({
    Name = "DO YOU HAVE TITS?",
    Callback = function()
sendMsg("DО ΥОU НАVЕ Т⁥⁥⁥І⁥⁥⁥Т⁥⁥⁥Ѕ?", "All")
    end
})



  Tab:AddButton({
    Name = "EAT PUSSY BITCH",
    Callback = function()
sendMsg("EATР⁥⁥⁥U⁥⁥⁥Ѕ⁥⁥⁥Ѕ⁥⁥⁥YВІ⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥TСH", "All")
    end
})

  Tab:AddButton({
    Name = "FATASS HOE",
    Callback = function()
sendMsg("F⁥⁥⁥АТАЅ⁥⁥Ѕ НОЕ", "All")
    end
})



  Tab:AddButton({
    Name = "FAT ASS",
    Callback = function()
sendMsg("F⁥⁥⁥А⁥⁥⁥ТА⁥⁥⁥Ѕ⁥⁥⁥Ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "FREE HENTAI",
    Callback = function()
sendMsg("FRЕЕ НЕ⁥⁥⁥⁥Ν⁥ТАӀ", "All")
    end
})



  Tab:AddButton({
    Name = "FUCK YOU",
    Callback = function()
sendMsg("F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚΥОU", "All")
    end
})

  Tab:AddButton({
    Name = "HELP! THERE'S A COCK IN MY ASS",
    Callback = function()
sendMsg("H⁥⁥⁥Е⁥⁥⁥L⁥⁥⁥P⁥⁥⁥!⁥⁥⁥ T⁥⁥⁥H⁥⁥⁥Е⁥⁥⁥R⁥⁥⁥Е⁥⁥⁥'⁥⁥⁥S⁥⁥⁥ А⁥⁥⁥ С⁥⁥⁥О⁥⁥⁥C⁥⁥⁥K⁥⁥⁥ I⁥⁥⁥N⁥⁥⁥ М⁥⁥⁥Y⁥⁥⁥ А⁥⁥⁥⁥Ѕ⁥⁥⁥Ѕ", "All")
    end
})



  Tab:AddButton({
    Name = "HELP! THERE'S A HOE CHASING ME",
    Callback = function()
sendMsg("НЕLР! ТНЕRЕS А НОЕ СНАSING МЕ", "All")
    end
})

  Tab:AddButton({
    Name = "I AM ABOUT TO CUM",
    Callback = function()
sendMsg("IА󠀕󠀖󠀗МАВ󠀕󠀖󠀗OU￰￰￰TT󠀕󠀖󠀗OС￰󠀕󠀖󠀗󠀕󠀖󠀗￰￰U￰￰￰М", "All")
    end
})



  Tab:AddButton({
    Name = "I EAT PUSSY",
    Callback = function()
sendMsg("Ӏ ЕАТ РUЅЅҮ", "All")
    end
})

  Tab:AddButton({
    Name = "I PREFER PUSSY",
    Callback = function()
sendMsg("I⁥⁥⁥⁥⁥⁥⁥⁥ P⁥⁥⁥⁥⁥⁥⁥⁥R⁥⁥⁥⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥F⁥⁥⁥⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥R⁥ Р⁥⁥UЅ⁥⁥Ѕ⁥⁥Ү⁥", "All")
    end
})


  Tab:AddButton({
    Name = "I HAVE A MASSIVE COCK",
    Callback = function()
sendMsg("I HAVE A MASSIVE СОСK", "All")
    end
})

  Tab:AddButton({
    Name = "I HAD AWESOME SEX WITH UR MOM!!!!",
    Callback = function()
sendMsg("I Н⁥⁥⁥А⁥⁥⁥⁥D А⁥⁥⁥W⁥⁥⁥⁥ЕS⁥⁥⁥⁥⁥ОМ⁥⁥⁥Е⁥⁥⁥ S⁥⁥⁥Е⁥⁥⁥⁥Х⁥⁥ W⁥⁥⁥I⁥⁥Т⁥⁥⁥⁥Н U⁥⁥⁥R М⁥⁥⁥⁥⁥О⁥⁥⁥⁥М!!!!", "All")
    end
})

  Tab:AddButton({
    Name = "ILL MAKE YOU PREGNANT",
    Callback = function()
sendMsg("ILL МΑKΕ ΥОU РRΕGΝΑΝТ", "All")
    end
})

  Tab:AddButton({
    Name = "LET ME SQUICH THOSE TITTIES",
    Callback = function()
sendMsg("LЕТМЕЅQUІЅНТНОЅЕТІТТІЕЅ", "All")
    end
})

  Tab:AddButton({
    Name = "LETS HAVE SEX",
    Callback = function()
sendMsg("L⁥⁥⁥Е⁥⁥⁥Т⁥⁥⁥Ѕ⁥⁥⁥ ⁥⁥⁥Н⁥⁥⁥А⁥⁥⁥V⁥⁥⁥Е⁥⁥⁥ ⁥⁥⁥Ѕ⁥⁥⁥Е⁥⁥⁥Х", "All")
    end
})

  Tab:AddButton({
    Name = "LET'S FUCK",
    Callback = function()
sendMsg("LET'SF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰Κ", "All")
    end
})

  Tab:AddButton({
    Name = "MY CONDOM FELL OFF!",
    Callback = function()
sendMsg("МΥ С⁥⁥⁥О⁥⁥⁥Ν⁥⁥⁥D⁥⁥⁥О⁥⁥⁥М FЕLL ОFF!", "All")
    end
})

  Tab:AddButton({
    Name = "NAKED GIRLS",
    Callback = function()
sendMsg("ΝΑKΕDGIRLЅ", "All")
    end
})

  Tab:AddButton({
    Name = "NAKED BOYS",
    Callback = function()
sendMsg("ΝАΚЕD ВОΥЅ", "All")
    end
})

  Tab:AddButton({
    Name = "oh my god, not this DUMBASS",
    Callback = function()
sendMsg("oh my god, not this DUМВ АЅЅ", "All")
    end
})

  Tab:AddButton({
    Name = "PUT YOUR COCK IN MY ASS",
    Callback = function()
sendMsg("РUТΥ￰￰￰ОU￰￰RСО⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥СKINMY А￰￰￰Ѕ￰￰￰Ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "STRAIGHT POWER MOTHERFUCKERS",
    Callback = function()
sendMsg("STRAIGHTPOWERM￰￰￰￰￰O￰￰￰￰￰T￰￰￰￰￰H￰￰￰￰￰E￰￰￰￰￰R￰￰￰￰￰F￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰Κ￰￰￰￰￰￰￰￰E￰￰￰￰￰￰￰RS", "All")
    end
})

  Tab:AddButton({
    Name = "SUCK MY COCK",
    Callback = function()
sendMsg("S󠀕󠀖󠀗UС󠀕󠀖󠀗KМ󠀕󠀖󠀗ΥС󠀕󠀖󠀗O⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖󠀗⁥⁥⁥⁥⁥СK", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT THE FUCK UP",
    Callback = function()
sendMsg("SHUTTHEF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰ΚUР", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT UP FAGGOT",
    Callback = function()
sendMsg("SH⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UTUPF⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥AGGOT", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT UP CUNT",
    Callback = function()
sendMsg("SHUTUPCU⁥⁥⁥⁥⁥⁥⁥⁥⁥NТ", "All")
    end
})

  Tab:AddButton({
    Name = "SHUT UP HOE",
    Callback = function()
sendMsg("SНUT UP НОЕ", "All")
    end
})

  Tab:AddButton({
    Name = "SHAKE THAT ASS",
    Callback = function()
sendMsg("ЅHAKEТН⁥⁥⁥⁥⁥⁥⁥⁥АТА￰￰￰Ѕ￰￰￰Ѕ", "All")
    end
})

  Tab:AddButton({
    Name = "SON OF A BITCH",
    Callback = function()
sendMsg("ЅO󠀖󠀗⁥⁥⁥⁥⁥⁥⁥󠀘󠀕󠀖NO󠀖󠀗󠀘󠀕󠀖FA󠀗󠀘󠀕󠀖В￰￰￰￰󠀗󠀘󠀕󠀖￰￰￰I￰󠀗󠀘󠀕󠀖￰￰￰￰￰TC󠀗󠀘󠀕󠀖H", "All")
    end
})

  Tab:AddButton({
    Name = "SHIT NOOOOOOOO",
    Callback = function()
sendMsg("Ѕ⁥⁥⁥⁥Н⁥⁥⁥⁥Ι⁥⁥⁥⁥Т⁥⁥⁥⁥ Ν⁥⁥⁥⁥О⁥⁥⁥⁥О⁥⁥⁥⁥О⁥⁥⁥⁥О⁥⁥⁥⁥О⁥⁥⁥⁥О⁥⁥⁥⁥О⁥⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "YOU ARE SO ASS AT THIS GAME",
    Callback = function()
sendMsg("ΥОUАRЕЅО А￰￰￰Ѕ￰￰￰Ѕ АТTHIЅGАМЕ", "All")
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
    Name = "аh уеѕ~ *moans* уеѕ һаrdеr~",
    Callback = function()
sendMsg("аh уеѕ~ *m⁥⁥⁥о⁥⁥⁥а⁥⁥⁥n⁥⁥⁥ѕ* уеѕ һаrdеr~", "All")
    end
})

  Tab:AddButton({
    Name = "*bites your cock*",
    Callback = function()
sendMsg("*bіtе󠀕󠀕sу󠀕󠀕оurс⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ос󠀕󠀕k*", "All")
    end
})

  Tab:AddButton({
    Name = "*cums*",
    Callback = function()
sendMsg("*с⁥⁥⁥⁥umѕ*", "All")
    end
})

  Tab:AddButton({
    Name = "*looks under skirt* wow nice balls bro",
    Callback = function()
sendMsg("*ӏооkѕ undеr ѕkіrt* wоw nісе bаlӏѕ brо", "All")
    end
})

  Tab:AddButton({
    Name = "*masturbates*",
    Callback = function()
sendMsg("*ma⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕⁥⁥⁥st⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕⁥⁥⁥ur󠀕󠀕b󠀕󠀕a󠀕󠀕t󠀕󠀕e󠀕󠀕s*", "All")
    end
})

  Tab:AddButton({
    Name = "*moans*",
    Callback = function()
sendMsg("*mоаns*", "All")
    end
})

  Tab:AddButton({
    Name = "nice balls *slaps them*",
    Callback = function()
sendMsg("nісе bаllѕ *ѕlарѕ thеm*", "All")
    end
})

  Tab:AddButton({
    Name = "*rapes*",
    Callback = function()
sendMsg("r ареs*", "All")
    end
})

  Tab:AddButton({
    Name = "*sucks cock*",
    Callback = function()
sendMsg("*ѕuсkѕ сосk*", "All")
    end
})

  Tab:AddButton({
    Name = "*shits*",
    Callback = function()
sendMsg("*⁥⁥⁥ѕ⁥⁥⁥һ⁥⁥⁥i⁥⁥⁥tѕ*", "All")
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
sendMsg("с⁥⁥⁥о⁥⁥󠀕󠀕󠀕⁥с⁥⁥⁥kаndb󠀕󠀕󠀕а⁥⁥⁥⁥lltor󠀕󠀕󠀕turеѕ󠀕󠀕󠀕⁥⁥⁥е⁥⁥⁥х", "All")
    end
})

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
sendMsg("Е-Rаре", "All")
    end
})

  Tab:AddButton({
    Name = "eat my shit nigger",
    Callback = function()
sendMsg("ea⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥tm⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥yѕ⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥tn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥g⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ge⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥r", "All")
    end
})

  Tab:AddButton({
    Name = "im very horny and i will cum inside you hard",
    Callback = function()
sendMsg("im very һоrn⁥⁥⁥⁥⁥⁥yandiwill с⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥mi⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥nsidеyou hard", "All")
    end
})

  Tab:AddButton({
    Name = "murder the lgbtq+",
    Callback = function()
sendMsg("m⁥⁥⁥⁥⁥⁥ur⁥⁥⁥⁥⁥⁥dеrthеӏg⁥⁥⁥⁥⁥⁥b⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥q+", "All")
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
sendMsg("blacked.c⁥⁥⁥о⁥⁥⁥m", "All")
    end
})

  Tab:AddButton({
    Name = "pornhub.com",
    Callback = function()
sendMsg("р⁥⁥⁥о⁥⁥⁥r⁥⁥⁥n⁥⁥⁥һ⁥⁥⁥u⁥⁥⁥b.c⁥⁥⁥о⁥⁥⁥m", "All")
    end
})

  Tab:AddButton({
    Name = "rule34.xxx",
    Callback = function()
sendMsg("r⁥⁥⁥u⁥⁥⁥ӏ⁥⁥⁥е3⁥⁥⁥4.ххх", "All")
    end
})

  Tab:AddButton({
    Name = "e621.net",
    Callback = function()
sendMsg("е⁥⁥⁥6⁥⁥⁥2⁥⁥⁥1⁥⁥⁥.n⁥⁥⁥е⁥⁥⁥t", "All")
    end
})

  Tab:AddButton({
    Name = "PORNHUB.COM",
    Callback = function()
sendMsg("Р⁥⁥⁥О⁥⁥⁥R⁥⁥⁥Ν⁥⁥⁥Н⁥⁥⁥U⁥⁥⁥В.С⁥⁥⁥О⁥⁥⁥М⁥⁥⁥", "All")
    end
})

  Tab:AddButton({
    Name = "XVIDEOS.COM",
    Callback = function()
sendMsg("Х󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕VӀ⁥⁥⁥⁥⁥⁥D⁥⁥⁥󠀕󠀕󠀕Е⁥⁥⁥󠀕󠀕󠀕ОЅ.С⁥⁥⁥󠀕󠀕󠀕ОМ", "All")
    end
})

local Section = Tab:AddSection({
    Name = "Full Links"
})

  Tab:AddButton({
    Name = "https://blacked.com",
    Callback = function()
sendMsg("httрs:/⁥⁥⁥/blacked.c⁥⁥⁥о⁥⁥⁥m", "All")
    end
})

  Tab:AddButton({
    Name = "https://pornhub.com",
    Callback = function()
sendMsg("ht󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗tps󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗:/󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗/⁥⁥⁥p󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗or󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗nh󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗ub󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗.󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗c󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗om", "All")
    end
})

  Tab:AddButton({
    Name = "MASTURBATING TO HTTPS://PORNHUB.COM",
    Callback = function()
sendMsg("МА⁥⁥⁥󠀕󠀖⁥Ѕ⁥⁥⁥󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥Т⁥⁥⁥󠀕󠀖⁥UR⁥ВАТӀΝGTOHТ󠀕󠀕󠀕󠀕ТРЅ󠀕󠀕󠀕󠀕:/⁥⁥⁥/РО󠀕󠀕RΝ󠀕󠀕НU⁥⁥⁥⁥В.C⁥⁥⁥OM", "All")
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
sendMsg("п⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥i󠀕g⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥g󠀕󠀕е󠀕г", "All")
    end
})

  Tab:AddButton({
    Name = "a lil n word",
    Callback = function()
sendMsg("п⁥iɡ⁥ɡ ⁥а", "All")
    end
})

  Tab:AddButton({
    Name = "fuck",
    Callback = function()
sendMsg("f￰￰￰￰￰󠀕󠀕￰￰￰￰￰ụç󠀕󠀕ķ", "All")
    end
})

  Tab:AddButton({
    Name = "KKK",
    Callback = function()
sendMsg("ККК", "All")
    end
})

  Tab:AddButton({
    Name = "KYS BITCH",
    Callback = function()
sendMsg("К⁥⁥⁥⁥⁥⁥⁥⁥Υ⁥⁥⁥SВ￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН", "All")
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
sendMsg("                                                                                                                                                                                                       ⁥", "All")
    end
})

  Tab:AddButton({
    Name = "Chat our dsc link",
    Callback = function()
sendMsg("httрs:/⁥⁥⁥/dѕс⁥⁥⁥.⁥⁥⁥g⁥⁥⁥g/⁥⁥⁥vadriftz", "All")
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
                sendMsg(ChatSpamText, "All")
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
