local window = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))():CreateWindow({Name="hi"})
local tab=window:CreateTab("sex")
tab:CreateSection("YO")
local function switchthing(things)
    pcall(function()game.CoreGui.Rayfield.Main.Elements.sex["Dropdown 2"]:Destroy()end)
    tab:CreateDropdown({
    Name="Dropdown 2",
    Section="YO",
    Options = things,
    CurrentOption = "None",
    Callback=function(opt)
        print(opt[1])
    end})
end
tab:CreateDropdown({
    Name="Dropdown 1",
    Options = {"Floor 1","Floor 2"},
    CurrentOption = {"Floor 1"},
    Callback=function(opt)
        if opt[1]=="Floor 1" then
            game.CoreGui.Rayfield.Main.Elements.sex["Dropdown 2"]:Destroy()
            switchthing({"Mob 1","Mob 2"})
        elseif opt[1]=="Floor 2" then
            game.CoreGui.Rayfield.Main.Elements.sex["Dropdown 2"]:Destroy()
            switchthing({"Mob 3","Mob 4"})
        else print("yo"..opt)
        end
    end
})
switchthing({"Mob 1","Mob 2"})
tab:CreateSection("ermm")
tab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})