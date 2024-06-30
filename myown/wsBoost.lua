return function(s)
    _G.cframespeed=s
    if not _G.wsbran then 
    _G.wsbran=true
        while _G.wsbran do 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * _G.cframespeed
            game:GetService("RunService").Stepped:wait()
        end
    end
end