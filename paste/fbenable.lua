if not  getgenv().FullBrightExecuted then

	 getgenv().FullBrightEnabled = false

	 getgenv().NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~=  getgenv().NormalLightingSettings.Brightness then
			 getgenv().NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not  getgenv().FullBrightEnabled then
				repeat
					wait()
				until  getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~=  getgenv().NormalLightingSettings.ClockTime then
			 getgenv().NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not  getgenv().FullBrightEnabled then
				repeat
					wait()
				until  getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~=  getgenv().NormalLightingSettings.FogEnd then
			 getgenv().NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not  getgenv().FullBrightEnabled then
				repeat
					wait()
				until  getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~=  getgenv().NormalLightingSettings.GlobalShadows then
			 getgenv().NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not  getgenv().FullBrightEnabled then
				repeat
					wait()
				until  getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~=  getgenv().NormalLightingSettings.Ambient then
			 getgenv().NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not  getgenv().FullBrightEnabled then
				repeat
					wait()
				until  getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until  getgenv().FullBrightEnabled
		while wait() do
			if  getgenv().FullBrightEnabled ~= LatestValue then
				if not  getgenv().FullBrightEnabled then
					game:GetService("Lighting").Brightness =  getgenv().NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime =  getgenv().NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd =  getgenv().NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows =  getgenv().NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient =  getgenv().NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

 getgenv().FullBrightExecuted = true
 getgenv().FullBrightEnabled = true