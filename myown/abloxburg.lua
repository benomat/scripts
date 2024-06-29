kHC = {}
kHS = {}
kHC["Hot pink"] = "Pink"
kHC["Bright blue"] = "Blue"
kHC["Lime green"] = "Green"
kHC["Gold"] = "Blonde"
kHC["Black"] = "Black"
kHC["Crimson"] = "Red"
kHC["Burnt Sienna"] = "Brown"
kHC["Pearl"] = "Gray"
kHS["336690947"] = "Bun"
kHs["336691090"] = "Curly"
kHS["336691022"] = "Charming"
kHS["336691154"] = "Sideswept"
kHS["336690892"] = "Afro"
kHS["336691184"] = "Messy"
kHS["336691241"] = "Pigtails"
kHS["336691058"] = "Combed"
kHS["336691117"] = "Headband"
kHS["336691154"] = "Long"
lp=game.Players.LocalPlayer
for _,v in pairs(game.workspace.Environment.Locations.StylezHairStudio.HairdresserWorkstations:GetChildren()) do
    if tostring(v.InUse.Value)==lp.Name then
        workstation=v
    end
end
lp.CameraMode=Enum.CameraMode.LockFirstPerson
wait(3)
function cycleStyle() 
    oldPos = workstation.Mirror.CFrame
    local cameraCFrame = game.workspace.CurrentCamera.CFrame
    local cameraPosition = cameraCFrame.Position
    local cameraRotation = cameraCFrame - cameraPosition
    local forwardVector = cameraRotation.LookVector
    local rightVector = cameraRotation.RightVector
    local upVector = cameraRotation.UpVector
    local newPos = cameraPosition + (forwardVector * 2) - (rightVector * 1.5) - (upVector * 1)
    local newCFrame = CFrame.new(newPos) * cameraRotation * CFrame.Angles(0, math.rad(270), 0)
    workstation.Mirror.CFrame = newCFrame
    wait()
    mouse1click()
    wait()
    workstation.Mirror.CFrame = oldPos
end
function cycleColor()
    oldPos = workstation.Mirror.CFrame
    local cameraCFrame = game.workspace.CurrentCamera.CFrame
    local cameraPosition = cameraCFrame.Position
    local cameraRotation = cameraCFrame - cameraPosition
    local forwardVector = cameraRotation.LookVector
    local rightVector = cameraRotation.RightVector
    local upVector = cameraRotation.UpVector
    local newPos = cameraPosition + (forwardVector * 2) - (rightVector * 1.5) - (upVector * -.6)
    local newCFrame = CFrame.new(newPos) * cameraRotation * CFrame.Angles(0, math.rad(270), 0)
    workstation.Mirror.CFrame = newCFrame
    wait()
    mouse1press()
    wait()
    mouse1release()
    wait()
    workstation.Mirror.CFrame = oldPos
end
function submitHaircut() 
    local oldPos = workstation.Mirror.CFrame
    local cameraCFrame = game.workspace.CurrentCamera.CFrame
    local cameraPosition = cameraCFrame.Position
    local cameraRotation = cameraCFrame - cameraPosition
    local forwardVector = cameraRotation.LookVector
    local rightVector = cameraRotation.RightVector
    local upVector = cameraRotation.UpVector
    local newPos = cameraPosition + (forwardVector * 2) - (upVector * -1.65)
    local newCFrame = CFrame.new(newPos) * cameraRotation * CFrame.Angles(0, math.rad(270), 0)
    workstation.Mirror.CFrame = newCFrame
    wait()
    mouse1click()
    wait()
    wait(.5)
    workstation.Mirror.CFrame = oldPos
end
function getHC()
    if tostring(workstation.HairdresserDummy.Hair.BrickColor)=="Medium stone grey" then return "Black"
    else return kHC[tostring(workstation.HairdresserDummy.Hair.BrickColor)] end
end
function getStyle()
    if string.sub(workstation.HairdresserDummy.Hair.Texture.Texture, -9, -9)=="/" then return "Afro" 
    else return kHS[string.sub(workstation.HairdresserDummy.Hair.Texture.Texture, -9)] end
end
function getOrder()
    for _,v in pairs(game.workspace._game.SpawnedCharacters:GetChildren()) do
        if v.HumanoidRootPart.CFrame==CFrame.new(862.600037, 13.499999, 175.999786, -1, 0, 0, 0, 1, 0, 0, 0, -1) then
        return v.Order.Style.Value,v.Order.Color.Value
        end
    end
    return false,false
end
_G.farmiiii=true
while _G.farmiiii do 
while color~=getHC() do
    cycleColor()
    wait(.1)
    style,color=getOrder()
end
while style~=getStyle() do
    cycleStyle()
    wait(.1)
    style,color=getOrder()
end
submitHaircut()
wait(5)
end
lp.CameraMode = Enum.CameraMode.Classic