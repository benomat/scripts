return function(s)
     getgenv().cframespeed=s
    if not  getgenv().cframeran then 
     getgenv().cframeran=true
        while true do
            pcall( function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection *  getgenv().cframespeed end)
            game:GetService("RunService").Stepped:wait()
            if  getgenv().cframespeed==0 then
                 getgenv().cframeran = false
                break
            end
        end
    end
end