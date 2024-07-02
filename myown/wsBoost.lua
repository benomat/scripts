return function(s)
    _G.cframespeed=s
    if not _G.cframeran then 
    _G.cframeran=true
        while true do
            pcall( function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * _G.cframespeed end)
            game:GetService("RunService").Stepped:wait()
            if _G.cframespeed==0 then
                _G.cframeran = false
                break
            end
        end
    end
end