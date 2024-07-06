local GUI = loadstring(game:HttpGet("https://pastebin.com/raw/eBFA5Ztv"))()
 
local StarterGui = game:GetService("StarterGui")
 
privateProperties = {
Color = Color3.fromRGB(0,255,255); 
Font = Enum.Font.SourceSansBold;
TextSize = 18;
}
 
local vim = game:service("VirtualInputManager")
 
local CBring = false
 
local UI = GUI:CreateWindow("Turtle Hub | Survive the killer 🐢",false,true)
 
local function Copy(Link)
setclipboard(Link)
set()
end
 
local Home = UI:addPage("Home",1,true,6)
 
local Character = UI:addPage("Player",1,true,6)
 
local Internal_UI = UI:addPage("UI",1,true,6)
 
local ClientFunc = UI:addPage("misc",1,true,6)
 
local ClientFunc_Bring = UI:addPage("Visual Bring (OP)",1,true,6)
 
local ClientFunc_Tool = UI:addPage("social media",1,true,6)
 
local ClientFunc_KL = UI:addPage("Testing </>",1,true,6)
 
Home:addRealTime()
 
Home:addTimePlayed()
 
Home:addClientStats()
 
Character:addTeam()
 
ClientFunc_KL:addLabel("Beta Icon","If there is a '</>' sign, it's still in the beta stage")
 
ClientFunc_Tool:addLabel("⭐ New UI Update ⭐","Turtle Hub Can detect anti-cheat and auto reload ui")
 
ClientFunc_Tool:addLabel("my tik tok account","@capviktor")
 
ClientFunc_Bring:addLabel("Ban chance","57% (bypass: 43%)")
 
ClientFunc_Tool:addButton("Copy discord server link",function()
Copy("https://discord.com/invite/7juafEm8u5")
end)
 
ClientFunc_KL:addButton("Vision or nofog V2 </>",function()
game:GetService("Lighting").Brightness = 2
game:GetService("Lighting").ClockTime = 14
game:GetService("Lighting").FogEnd = 100000
game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)
 
ClientFunc_KL:addButton("nofog </>",function()
game:GetService("Lighting").FogEnd = 100000
for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
if v:IsA("Atmosphere") then
v:Destroy()
end
end
end)
 
ClientFunc_KL:addButton("Tracers </>",function()
loadstring(game:HttpGet("https://pastebin.com/raw/B91fE9Fk"))()
end)
 
ClientFunc_KL:addButton("ESP Highlight </>",function()
loadstring(game:HttpGet("https://pastebin.com/raw/186LQKmj"))()
end)
 
ClientFunc_KL:addButton("Tracers Better version </>",function()
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
 
 
 getgenv().TeamCheck = false -- Use True or False to toggle TeamCheck
 
 
for i,v in pairs(game.Players:GetChildren()) do
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1
 
 
    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
 
 
                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
 
 
                    if getgenv().TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end
 
 
game.Players.PlayerAdded:Connect(function(v)
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1
 
 
    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
 
 
                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
 
 
                    if getgenv().TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end)
end)
 
Home:addButton("ESP",function() 
local color = BrickColor.new(0,250,0)
local transparency = 0
 
local Players = game:GetService("Players")
local function _ESP(c)
  repeat wait() until c.PrimaryPart ~= nil
  for i,p in pairs(c:GetChildren()) do
    if p.ClassName == "Part" or p.ClassName == "MeshPart" then
      if p:FindFirstChild("shit") then p.shit:Destroy() end
       local esp = Instance.new("Highlight",p)
 esp.Name = "shit"
 esp.FillTransparency = 0
 esp.FillColor = Color3.new(0, 255, 0)
 esp.OutlineColor = Color3.new(0, 255, 0)
 esp.OutlineTransparency = 0
 esp.Parent = v.Character
    
 
    end
  end
end
local function ESP()
  for i,v in pairs(Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
      if v.Character then
        _ESP(v.Character)
      end
      v.CharacterAdded:Connect(function(chr)
        _ESP(chr)
      end)
    end
  end
  Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(chr)
      _ESP(chr)
    end)  
  end)
end
ESP()
end)
 
Home:addButton("ESP DOOR",function()
for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.ClassName == 'TouchTransmitter' or v.Parent.Name == 'BasePart' then
        local BillboardGui = Instance.new('BillboardGui')
        local TextLabel = Instance.new('TextLabel')
        
        BillboardGui.Parent = v.Parent
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 50, 0, 50)
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        local ClientPartName = v.Parent.Parent.Name
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = ClientPartName .. "\n"
        TextLabel.TextColor3 = Color3.new(0, 255, 0)
        TextLabel.TextScaled = true
    end
    end
end)
 
Home:addButton("inf jump",function()    game:GetService("UserInputService").JumpRequest:connect(function()
    
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")       
    end)
end)
 
Home:addButton("Leave the game while someone is recording",function() 
COREGUI = game:GetService("CoreGui")
COREGUI:TakeScreenshot()
wait(10)
Notify("🛡️Anti-Recording🛡️","Recording detected (Report button replacement), wait a moment to leave the game.")
wait(5)
game:Shutdown()
end)
 
Internal_UI:addButton("domain hub remake",function()  -- not my own
loadstring(game:HttpGet("https://pastebin.com/raw/udQLpt5d"))()
end)
 
Internal_UI:addButton("Infinite Yield",function()  -- not my own
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
 
Internal_UI:addButton("fates admin",function()  -- not my own
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)
 
Internal_UI:addButton("free animation",function()
loadstring(game:HttpGet("https://pastebin.com/raw/Tpwnr8C5"))()
end)
 
Internal_UI:addButton("RADAR MODE",function()
--- Drawing Player Radar
--- Made by topit
 
 getgenv().RadarSettings = {
    --- Radar settings
    RADAR_LINES = true; -- Displays distance rings + cardinal lines 
    RADAR_LINE_DISTANCE = 50; -- The distance between each distance ring
    RADAR_SCALE = 1; -- Controls how "zoomed in" the radar display is 
    RADAR_RADIUS = 125; -- The size of the radar itself
    RADAR_ROTATION = true; -- Toggles radar rotation. Looks kinda trippy when disabled
    SMOOTH_ROT = true; -- Toggles smooth radar rotation
    SMOOTH_ROT_AMNT = 30; -- Lower number is smoother, higher number is snappier 
    CARDINAL_DISPLAY = true; -- Displays the four cardinal directions (north east south west) around the radar
    
    --- Marker settings
    DISPLAY_OFFSCREEN = true; -- Displays offscreen / off-radar markers
    DISPLAY_TEAMMATES = true; -- Displays markers that belong to your teammates
    DISPLAY_TEAM_COLORS = true; -- Displays your teammates markers with either a custom color (change Team_Marker) or with that teams TeamColor (enable USE_TEAM_COLORS) 
    DISPLAY_FRIEND_COLORS = true; -- Displays your friends markers with a custom color (Friend_Marker). This takes priority over DISPLAY_TEAM_COLORS and DISPLAY_RGB
    DISPLAY_RGB_COLORS = false; -- Displays each marker with an RGB cycle. Takes priority over DISPLAY_TEAM_COLORS, but not DISPLAY_FRIEND_COLORS
    MARKER_SCALE_BASE = 1.25; -- Base scale that gets applied to markers
    MARKER_SCALE_MAX = 1.25; -- The largest scale that a marker can be
    MARKER_SCALE_MIN = 0.75; -- The smallest scale that a marker can be
    MARKER_FALLOFF = true; -- Affects the markers' scale depending on how far away the player is - bypasses SCALE_MIN and SCALE_MAX
    MARKER_FALLOFF_AMNT = 125; -- How close someone has to be for falloff to start affecting them 
    OFFSCREEN_TRANSPARENCY = 0.3; -- Transparency of offscreen markers
    USE_FALLBACK = false; -- Enables an emergency "fallback mode" for StreamingEnabled games
    USE_QUADS = true; -- Displays radar markers as arrows instead of dots 
    USE_TEAM_COLORS = false; -- Uses a team's TeamColor for marker colors
    VISIBLITY_CHECK = false; -- Makes markers that are not visible slightly transparent 
    
    --- Theme
    RADAR_THEME = {
        Outline = Color3.fromRGB(35, 35, 45); -- Radar outline
        Background = Color3.fromRGB(25, 25, 35); -- Radar background
        DragHandle = Color3.fromRGB(50, 50, 255); -- Drag handle 
        
        Cardinal_Lines = Color3.fromRGB(110, 110, 120); -- Color of the horizontal and vertical lines
        Distance_Lines = Color3.fromRGB(65, 65, 75); -- Color of the distance rings
        
        Generic_Marker = Color3.fromRGB(255, 25, 115); -- Color of a player marker without a team
        Local_Marker = Color3.fromRGB(115, 25, 255); -- Color of your marker, regardless of team
        Team_Marker = Color3.fromRGB(25, 115, 255); -- Color of your teammates markers. Used when DISPLAY_TEAM_COLORS is disabled
        Friend_Marker = Color3.fromRGB(25, 255, 115); -- Color of your friends markers. Used when DISPLAY_FRIEND_COLORS is enabled 
    };
}
 
loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/stuff/main/PlayerRadar/source.lua'))()
end)
 
Character:addToggle("loop speed [50]",function(value)
     SPD = value
      
         while wait() do
         if SPD == false then break end
             game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end
end)
 
Character:addToggle("Super Speed [100]",function(value)
     SPD = value
      
         while wait() do
         if SPD == false then break end
             game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end
end)
 
 
Character:addTextBox("Player name (username)","",function(Player_V_10)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(Player_V_10))) == string.lower(Player_V_10) then
Player_V_10 = v.Name
ClientTarget = Player_V_10
end
end
wait()
if game.Players:FindFirstChild(Player_V_10) then
ClientTarget = Player_V_10
Notify(Player_V_10,"Player found!")
else
Notify(Player_V_10,"The player was not found in the player list")
end
end)
 
Character:addToggle("Follow Player",function(value)
     Follow_To_ClientTarget = value
      
         while wait() do
         if Follow_To_ClientTarget == false then break end
             local char = game.Players.LocalPlayer.Character
char.Humanoid:MoveTo(game.Players[ClientTarget].Character.HumanoidRootPart.Position)
end
end)
 
Character:addToggle("Tween goto Player",function(value)
     Tween_Goto_ClientTarget = value
      
         while wait() do
         if Tween_Goto_ClientTarget == false then break end
             local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
 
 
{CFrame = CFrame.new(game.Players[ClientTarget].Character.HumanoidRootPart.Position - game.Players[ClientTarget].Character.HumanoidRootPart.CFrame.LookVector*0)}):Play()
end
end)
 
Character:addToggle("goto Player",function(value)
     Goto_ClientTarget = value
      
         while wait() do
         if Goto_ClientTarget == false then break end
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[ClientTarget].Character.HumanoidRootPart.CFrame - game.Players[ClientTarget].Character.HumanoidRootPart.CFrame.LookVector*0
end
end)
 
ClientFunc:addToggle("auto vote random map",function(value)
     TPA = value
      
         while wait() do
         if TPA == false then break end
             local Voting = {
    [1] = "Map" .. math.random(4)
}
 
 
game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild(""):FireServer(unpack(Voting))
end
end)
 
ClientFunc:addTextBox("Equip Killer","",function(value)
local EK = {
    [1] = value
}
 
 
game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild(""):FireServer(unpack(EK))
end)
 
ClientFunc:addTextBox("Equip Knife (replace space with _)","",function(value)
local EKnife = {
    [1] = value
}
 
 
game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild(""):FireServer(unpack(EKnife))
end)
 
ClientFunc:addDropdown("Select crate",{"Crate Gen 1 (x1)","Crate Gen 1 (x5)","Crate Gen 1 (x10)"},1,function(value)
SelectedCrateGen_V1 = value
end)
 
ClientFunc:addButton("single buy",function()
if SelectedCrateGen_V1 == "Crate Gen 1 (x1)" then
local CrateV1 = {
    [1] = "crate_gen_1",
    [2] = "Coins"
}
 
 
game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild(""):FireServer(unpack(CrateV1))
else if SelectedCrateGen_V1 == "Crate Gen 1 (x5)" then
local CrateV2 = {
    [1] = "crate_gen_1_02",
    [2] = "Coins"
}
 
 
game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild(""):FireServer(unpack(CrateV2))
if SelectedCrateGen_V1 == "Crate Gen 1 (x10)" then
local CrateV3 = {
    [1] = "crate_gen_1_03",
    [2] = "Coins"
}
 
 
game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild(""):FireServer(unpack(CrateV3))
end
end
end
end)
 
ClientFunc:addDropdown("Config Killer intro (Visual)",{"Malvus","Dread","Voldar","Alien","Scarlett"},1,function(value)
Notify("Config","Do not change until you become a 'killer'!")
end)
 
ClientFunc_Bring:addButton("Visual Bring",function()
if CBring == false then
CBring = true
local L_1_ = true;
local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
 
 
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(L_4_arg1)
if L_4_arg1 == 'f' then
L_1_ = not L_1_
end;
if L_4_arg1 == 'r' then
L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
end
end)
 
 
for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
if L_6_forvar2 == game.Players.LocalPlayer then
else
local L_7_ = coroutine.create(function()
game:GetService('RunService').RenderStepped:Connect(function()
local L_8_, L_9_ = pcall(function()
local L_10_ = L_6_forvar2.Character;
if L_10_ then
if L_10_:FindFirstChild("HumanoidRootPart") then
if L_1_ then
L_6_forvar2.Backpack:ClearAllChildren()
for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
if L_12_forvar2:IsA("Tool") then
L_12_forvar2:Destroy()
end
end;
L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
end
end
end
end)
if L_8_ then
else
warn("Unnormal error: "..L_9_)
end
end)
end)
coroutine.resume(L_7_)
end
end;
 
 
game.Players.PlayerAdded:Connect(function(L_13_arg1)   
if L_13_arg1 == game.Players.LocalPlayer then
else
local L_14_ = coroutine.create(function()
game:GetService('RunService').RenderStepped:Connect(function()
local L_15_, L_16_ = pcall(function()
local L_17_ = L_13_arg1.Character;
if L_17_ then
if L_17_:FindFirstChild("HumanoidRootPart") then
if L_1_ then
L_13_arg1.Backpack:ClearAllChildren()
for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
if L_19_forvar2:IsA("Tool") then
L_19_forvar2:Destroy()
end
end;
L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
end
end
end
end)
if L_15_ then
else
warn("Unnormal error: "..L_16_)
end
end)
end)
coroutine.resume(L_14_)
end           
end)
else if CBring == true then
local message = Instance.new("Message",workspace)
message.Text = "You have activated this feature. \nFrom: Entity (Rivanda_Cheater) \nTo: " .. tostring(game.Players.LocalPlayer.DisplayName) .. " (" .. tostring(game.Players.LocalPlayer) .. ") "
wait(5)
message:Destroy()
end
end
end)
 
ClientFunc_Bring:addButton("Bring (ON/OFF)",function()
vim:SendKeyEvent(true, "F", false, game)
end)
 
ClientFunc_Bring:addButton("Set New location",function()
vim:SendKeyEvent(true, "R", false, game)
privateProperties.Text = "[Turtle Hub]: The bring position has been reset to the new position: " .. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) .. " Vector3 Position: 5, 0, 0"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
end)
 
while wait() do
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
end
 
local Players = game.Players
Players.PlayerAdded:Connect(function(player)
if game.Players:FindFirstChild(Player_V_10) then
Notify(Player_V_10,"Player found!")
end
end)
 
local Players = game.Players
Players.PlayerRemoving:Connect(function(player)
if not game.Players:FindFirstChild(Player_V_10) then
Notify("Missing player","player " .. tostring(Player_V_10) .. " has left the game")
end
end)
 
Notify("Turtle Hub </>","Loading qrto is mean :(")
