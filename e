--this part doesnt work with solara yet (apperently)
-- you gotta paste raw emotes.lua below the getgenv
if getgenv().emotesloaded then loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/emotes.lua',true))()
else 
    repeat task.wait() until game:IsLoaded()
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/emotes.lua',true))()
        print("set animation")
    end)
    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/benomat/scripts/m/emotes.lua',true))()
   getgenv().emotesloaded='hi'
end

