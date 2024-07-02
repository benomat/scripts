_G.ERMSIES = not _G.ERMSIES
while _G.ERMSIES do
    for _, v in game.Workspace.Map:GetChildren()[1]:GetChildren() do
        local old_pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if v.Name == "Drop" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, -2.5, 0)
            wait(0.5)
        end
        -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old_pos
    end
    task.wait()
end
