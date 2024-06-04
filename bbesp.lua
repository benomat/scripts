wait(1)
--// SERVICES \\--
local playerser = game:GetService("Players")
local repstor = game:GetService("ReplicatedStorage")
local repfirst = game:GetService("ReplicatedFirst")
local inputser = game:GetService("UserInputService")
local runser = game:GetService("RunService")
local coregui = game:GetService("CoreGui")
local tweenser = game:GetService("TweenService")

--// VARIABLES \\--
local client = playerser.LocalPlayer
local camera = workspace.CurrentCamera
local playergui = client:WaitForChild("PlayerGui")
playergui:SetTopbarTransparency(1)
local mouse = client:GetMouse()
local heartbeat = runser.Heartbeat
local renderstep = runser.RenderStepped

--// LOCALS \\--
local colors = {
esp = Color3.fromRGB(255, 74, 74),
esp_visible = Color3.fromRGB(66, 248, 63)
}
local aimbotting = false
local sg = Instance.new("ScreenGui", coregui)
local espFolder = Instance.new("Folder", sg)

local bodyParts = {
["Head"] = true,
["Chest"] = true,
["Abdomen"] = true,
["Hips"] = true,
["LeftUpperArm"] = true,
["RightUpperArm"] = true,
["RightLowerArm"] = true,
["LeftLowerArm"] = true,
["LeftHand"] = true,
["RightHand"] = true,
["LeftUpperLeg"] = true,
["RightUpperLeg"] = true,
["LeftLowerLeg"] = true,
["RightLowerLeg"] = true,
["LeftFoot"] = true,
["RightFoot"] = true
}
--// FUNCTIONS \\--
local function createBox(player)
local lines = Instance.new("Frame")
lines.Name = player.Name
lines.BackgroundTransparency = 1
lines.AnchorPoint = Vector2.new(0.5,0.5)

local outlines = Instance.new("Folder", lines)
outlines.Name = "outlines"
local inlines = Instance.new("Folder", lines)
inlines.Name = "inlines"

local outline1 = Instance.new("Frame", outlines)
outline1.Name = "left"
outline1.BorderSizePixel = 0
outline1.BackgroundColor3 = Color3.new(0,0,0)
outline1.Size = UDim2.new(0,-1,1,0)

local outline2 = Instance.new("Frame", outlines)
outline2.Name = "right"
outline2.BorderSizePixel = 0
outline2.BackgroundColor3 = Color3.new(0,0,0)
outline2.Position = UDim2.new(1,0,0,0)
outline2.Size = UDim2.new(0,1,1,0)

local outline3 = Instance.new("Frame", outlines)
outline3.Name = "up"
outline3.BorderSizePixel = 0
outline3.BackgroundColor3 = Color3.new(0,0,0)
outline3.Size = UDim2.new(1,0,0,-1)

local outline4 = Instance.new("Frame", outlines)
outline4.Name = "down"
outline4.BorderSizePixel = 0
outline4.BackgroundColor3 = Color3.new(0,0,0)
outline4.Position = UDim2.new(0,0,1,0)
outline4.Size = UDim2.new(1,0,0,1)

local inline1 = Instance.new("Frame", inlines)
inline1.Name = "left"
inline1.BorderSizePixel = 0
inline1.Size = UDim2.new(0,1,1,0)

local inline2 = Instance.new("Frame", inlines)
inline2.Name = "right"
inline2.BorderSizePixel = 0
inline2.Position = UDim2.new(1,0,0,0)
inline2.Size = UDim2.new(0,-1,1,0)

local inline3 = Instance.new("Frame", inlines)
inline3.Name = "up"
inline3.BorderSizePixel = 0
inline3.Size = UDim2.new(1,0,0,1)

local inline4 = Instance.new("Frame", inlines)
inline4.Name = "down"
inline4.BorderSizePixel = 0
inline4.Position = UDim2.new(0,0,1,0)
inline4.Size = UDim2.new(1,0,0,-1)

local text = Instance.new("TextLabel", lines)
text.Name = "nametag"
text.Position =  UDim2.new(0.5,0,0,-12)
text.Size = UDim2.new(0,100,0,-20)
text.AnchorPoint = Vector2.new(0.5,0.5)
text.BackgroundTransparency = 1
text.Text = player.Name
text.Font = Enum.Font.Code
text.TextSize = 14
text.TextStrokeTransparency = 0

return lines
end

local function updateEsp(player, box)
runser:BindToRenderStep(player.Name.."'s esp", 1, function()
local clientchar = workspace.Characters:FindFirstChild(client.Name)
local xMin = camera.ViewportSize.X
local yMin = camera.ViewportSize.Y
local xMax = 0
local yMax = 0
if player and player:FindFirstChild"Body" and player.Body:FindFirstChild"Head" then
local screenPos, vis = camera:WorldToScreenPoint(player.PrimaryPart.Position)
local nameTagPos = camera:WorldToScreenPoint(player.Body.Head.Position)
if vis then
box.Visible = true
local function getCorners(obj, size)
local corners = {
Vector3.new(obj.X+size.X/2, obj.Y+size.Y/2, obj.Z+size.Z/2);
Vector3.new(obj.X-size.X/2, obj.Y+size.Y/2, obj.Z+size.Z/2);

Vector3.new(obj.X-size.X/2, obj.Y-size.Y/2, obj.Z-size.Z/2);
Vector3.new(obj.X+size.X/2, obj.Y-size.Y/2, obj.Z-size.Z/2);

Vector3.new(obj.X-size.X/2, obj.Y+size.Y/2, obj.Z-size.Z/2);
Vector3.new(obj.X+size.X/2, obj.Y+size.Y/2, obj.Z-size.Z/2);

Vector3.new(obj.X-size.X/2, obj.Y-size.Y/2, obj.Z+size.Z/2);
Vector3.new(obj.X+size.X/2, obj.Y-size.Y/2, obj.Z+size.Z/2);
}
return corners
end
local i = 1
local allCorners = {}
for _,v in pairs(player.Body:GetChildren()) do
if bodyParts[v.Name] then
local a = getCorners(v.CFrame, v.Size)
for _,v in pairs(a) do
table.insert(allCorners, i, v)
i = i + 1
end
end
end
for i,v in pairs(allCorners) do
local pos = camera:WorldToScreenPoint(v)
if pos.X > xMax then
xMax = pos.X
end
if pos.X < xMin then
xMin = pos.X
end
if pos.Y > yMax then
yMax = pos.Y
end
if pos.Y < yMin then
yMin = pos.Y
end
end
local xSize = xMax - xMin
local ySize = yMax - yMin
box.Position = UDim2.new(0,xMin+(Vector2.new(xMax,0)-Vector2.new(xMin,0)).magnitude/2,0,yMin+(Vector2.new(0,yMax)-Vector2.new(0,yMin)).magnitude/2)
box.Size = UDim2.new(0,xSize,0,ySize)

local ignore = {clientchar, camera, workspace:FindFirstChild"Arms"}
for _,v in pairs(workspace:GetChildren()) do
if v:IsA"Model" and v.Name ~= "Arms" then
table.insert(ignore, 4, v)
end
end
local ray = Ray.new(camera.CFrame.p, (player.Body.Head.Position-camera.CFrame.p).unit*1000)
local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, ignore, false, false)
local suffix
if hit and hit:FindFirstAncestor(player.Name) then
suffix = "_visible"
else
suffix = ""
end
for _,v in pairs(box.inlines:GetChildren()) do
v.BackgroundColor3 = colors["esp"..suffix]
end
box.nametag.TextColor3 = colors["esp"..suffix]
else
box.Visible = false
end
else
box.Visible = false
end
end)
end

local function checkTeam(player, caller)
local omegaTeam = game.Teams.Omega.Players
local betaTeam = game.Teams.Beta.Players
local myTeam
if omegaTeam:FindFirstChild(client.Name) then
myTeam = "Omega"
elseif betaTeam:FindFirstChild(client.Name) then
myTeam = "Beta"
end
local enemyTeam
if omegaTeam:FindFirstChild(player.Name) then
enemyTeam = "Omega"
elseif betaTeam:FindFirstChild(player.Name) then
enemyTeam = "Beta"
end
if enemyTeam ~= myTeam then
if caller == "esp" then
local box = createBox(player)
updateEsp(player, box)
box.Parent = espFolder
end
return true
else
return false
end
end

function updateAim()
if aimbotting then
if workspace.Characters:FindFirstChild(client.Name) then
local clientchar = workspace.Characters:FindFirstChild(client.Name)
for _,player in pairs(workspace.Characters:GetChildren()) do
if checkTeam(player, "aimbot") and player:FindFirstChild"Body" and player.Body:FindFirstChild"Head" then
local ignore = {clientchar, camera, workspace:FindFirstChild"Arms"}
for _,v in pairs(workspace:GetChildren()) do
if v:IsA"Model" and v.Name ~= "Arms" then
table.insert(ignore, 4, v)
end
end
local ray = Ray.new(camera.CFrame.p, (player.Body.Head.Position-camera.CFrame.p).unit*1000)
local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, ignore, false, false)
local screenPos, vis = camera:WorldToScreenPoint(player.Body.Head.Position)
if vis and hit and hit:FindFirstAncestor(player.Name) then
camera.CFrame = CFrame.new(camera.CFrame.p, player.Body.Head.Position)
end
end
end
end
end
end

inputser.InputBegan:connect(function(input, gamep)
if not gamep then
if input.UserInputType == Enum.UserInputType.MouseButton2 then
aimbotting = true
end
end
end)

inputser.InputEnded:connect(function(input, gamep)
if not gamep then
if input.UserInputType == Enum.UserInputType.MouseButton2 then
aimbotting = false
end
end
end)

for _,player in pairs(workspace.Characters:GetChildren()) do
checkTeam(player, "esp")
end

workspace.Characters.ChildAdded:connect(function(player)
checkTeam(player, "esp")
end)

workspace.Characters.ChildRemoved:connect(function(player)
runser:UnbindFromRenderStep(player.Name.."'s esp")
if espFolder:FindFirstChild(player.Name) then
espFolder[player.Name]:Destroy()
end
end)
runser:BindToRenderStep("aimbot", 2, updateAim)

getrenv().warn"made by Jan#5106 eat my ass"