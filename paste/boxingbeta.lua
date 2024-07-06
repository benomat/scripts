local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAbsolutionism/Wally-GUI-Library-V2-Remastered/main/Library%20Code", true))()

library.options.underlinecolor = 'rainbow' 
library.options.toggledisplay = 'Check'

local Window = library:CreateWindow('Boxing GYM') 
local Label = Window:Label('discord.gg/sinsploit',(nil))

local Section = Window:Section('Gloves',(true))
local Dropdown = Window:Dropdown('Dropdown',{ 
['default'] = 'Custom Gloves' or nil; 
['list'] = {"default", "Socks", "Retro","Luxury","Mitten","Pancake","CatPaws","RedSquiggles","USA Flag","Mexico Flag","Luxury2","Savage","Cuba Flag","SkeletonHand","Rainbow"}; 
['location'] = {}; 
},function(bool)
local args = {
    [1] = (bool)
}

game:GetService("ReplicatedStorage").RemoteEvents.CustomGloveRemote:FireServer(unpack(args))
end)
local Section = Window:Section('Player',(true))
local Slider = Window:Slider('WalkSpeed',{ 
    ['default'] = 10; 
    ['min'] = 7; 
    ['max'] = 25;
    ['precise'] = (true or false); 
    ['flag'] = 'ball'; 
    ['location'] = {}; 
    },function(spd)
game:GetService("ReplicatedStorage")["BOXING_STATE_WALKSPEED"].Value = (spd)
end)
    local Toggle = Window:Toggle('Auto Block',{ -- 1st Arg = Text Display
        ['default'] = (nil); -- Arg if you want to manually set it to be Active or not when created
        ['flag'] = 'block'; -- Name to be called upon when applied to specified table or default table of library
        ['location'] = {}; -- Can be edited for any table or will be placed in Window.flags
    },function(v) -- callback function when toggle is turned on or off
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
if (v) == true then
local args = {
    [1] = "blocking"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStaminaRemote:FireServer(unpack(args))
end
if (v) == false then
local args = {
    [1] = "unblocking"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStaminaRemote:FireServer(unpack(args))
end
end)
    local Toggle = Window:Toggle('Toggle PVP',{ -- 1st Arg = Text Display
        ['default'] = (nil); -- Arg if you want to manually set it to be Active or not when created
        ['flag'] = 'pvp'; -- Name to be called upon when applied to specified table or default table of library
        ['location'] = {}; -- Can be edited for any table or will be placed in Window.flags
    },function(v) -- callback function when toggle is turned on or off
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
if (v) == true then
local args = {
    [1] = "on"
}

game:GetService("ReplicatedStorage").RemoteEvents.PVPRemote:FireServer(unpack(args))
end
if (v) == false then
local args = {
    [1] = "off"
}

game:GetService("ReplicatedStorage").RemoteEvents.PVPRemote:FireServer(unpack(args))
end
end)
local Button = Window:Button('Ragdoll',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
local args = {
    [1] = true
}

game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(args))
end)
local Button = Window:Button('Unragdoll',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
local args = {
    [1] = false
}
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(args))
end)
local Button = Window:Button('Inf Dodge Stamina',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
local ow
 getgenv().go5 = true
ow = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local m = getnamecallmethod()
    local args = {...}
    if not checkcaller() and getgenv().go5 == true and m == "FireServer" then
        if self.Name == "PlayerDodgeRemote" or self.Name == "PlayerStaminaRemote" then
            if args[1] == false or args[1] == true then
                print(args[1])
               return 
            end
        end
        print(self,...)
    end
    return ow(self,...)
end))
end)
local Button = Window:Button('Disable Punch Cooldown',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
game:GetService("ReplicatedStorage")["PUNCHING_COOLDOWN"].Value = 0
end)
