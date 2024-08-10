-- recoded functiosn for security START  --
local function mathfloor(x)
    if x >= 0 then
        return x - (x % 1)
    else
        local int_part = x - (x % 1)
        return int_part == x and int_part or int_part - 1
    end
end
local function ipairs(t)
    local i = 0
    return function()
        i = i + 1
        if t[i] then
            return i, t[i]
        end
    end
end
local charlist={}
for i=0,255 do charlist[i]=string.char(i) end
local function stringchar(num)
    return charlist[num]
end
local function tableinsert(tbl, pos, value)
    if value == nil then
        value = pos
        pos = #tbl + 1
    end
    for i = #tbl, pos, -1 do
        tbl[i + 1] = tbl[i]
    end
    tbl[pos] = value
end
local function tablefind(tbl, value)
    for index, val in ipairs(tbl) do
        if val == value then
            return index
        end
    end
    return nil
end
local function stringsplit(input, delimiter)
    local result = {}
    for match in (input..delimiter):gmatch("(.-)"..delimiter) do
        tableinsert(result, match)
    end
    return result
end

local function tableconcat(tbl, sep, start, stop)
    sep = sep or ""
    start = start or 1
    stop = stop or #tbl
    
    local result = ""
    for i = start, stop do
        result = result .. tbl[i]
        if i < stop then
            result = result .. sep
        end
    end
    return result
end
-- recoded functiosn for security END --
local function bxor(a, b)
    local result = 0
    local bit = 1
    while a > 0 or b > 0 do
        local a_bit = a % 2
        local b_bit = b % 2
        if a_bit ~= b_bit then
            result = result + bit
        end
        a = mathfloor(a / 2)
        b = mathfloor(b / 2)
        bit = bit * 2
    end
    return result
end
local function toHex(str)
    return (str:gsub('.', function (c)
        return string.format('%02X', string.byte(c))
    end))
end

local function fromHex(hex)
    return (hex:gsub('..', function (cc)
        return stringchar(tonumber(cc, 16))
    end))
end

local function xorCrypt(data, key)
    local result = {}
    for i = 1, #data do
        local byte = data:byte(i)
        local keyByte = key:byte((i - 1) % #key + 1)
        tableinsert(result, stringchar(bxor(byte, keyByte)))
    end
    return tableconcat(result)
end

local function encrypt(text, key)
    return toHex(xorCrypt(text, key))
end

local function decrypt(hex, key)
    return xorCrypt(fromHex(hex), key)
end
local key = "TryToCrackMeLoser²"-- put a supr secure key 🤔
local encryptedText = game:HttpGet("https://pastebin.com/raw/DdjtciFJ") --put link to your file thingy
local keys = decrypt(encryptedText, key)
-- ui start


local screenGui = Instance.new("ScreenGui")
screenGui.Parent = gethui()

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.4, 0)
frame.Position = UDim2.new(0.35, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
title.Text = "Key System"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBlack
title.TextSize = 24
title.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0.2, 0)
textBox.Position = UDim2.new(0.1, 0, 0.3, 0)
textBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
textBox.Text = ""
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.Font = Enum.Font.GothamBlack
textBox.TextSize = 18
textBox.Parent = frame

local enterKeyButton = Instance.new("TextButton")
enterKeyButton.Size = UDim2.new(0.8, 0, 0.15, 0)
enterKeyButton.Position = UDim2.new(0.1, 0, 0.55, 0)
enterKeyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
enterKeyButton.Text = "Enter Key"
enterKeyButton.TextColor3 = Color3.new(1, 1, 1)
enterKeyButton.Font = Enum.Font.GothamBlack
enterKeyButton.TextSize = 18
enterKeyButton.Parent = frame

local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0.8, 0, 0.15, 0)
getKeyButton.Position = UDim2.new(0.1, 0, 0.75, 0)
getKeyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
getKeyButton.Text = "Get Key"
getKeyButton.TextColor3 = Color3.new(1, 1, 1)
getKeyButton.Font = Enum.Font.GothamBlack
getKeyButton.TextSize = 18
getKeyButton.Parent = frame

local function setClipboardWithURL()
    print("lol?")
end

getKeyButton.MouseButton1Click:Connect(setClipboardWithURL)

local function sendNotification(title, text, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration;
    })
end

local function enterKey()
    local userInputKey = textBox.Text
    if tablefind(stringsplit(keys, ",") , userInputKey) then
        local scriptURL = "scriptlink"
        local success, result = pcall(function()
            print("authenticated")
        end)

        if success then
            screenGui:Destroy()
        else
            sendNotification("Error", "Failed to load script. Check the console for details.", 10)
        end
    else
        sendNotification("Wrong Key", "You entered the wrong key!", 10)
        print("not authenticated")
    end
end

enterKeyButton.MouseButton1Click:Connect(enterKey)

local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging, dragStart, startPos = true, input.Position, frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

-- ui end


-- local generate = true

-- if generate then
--     local salt =  tostring(math.random(100000,999999))..tostring(math.random(100000,999999))..tostring(math.random(100000,999999))..tostring(math.random(100000,999999))..tostring(math.random(100000,999999))
--     setclipboard(encrypt("NewKey1ballsman3761,NewKey2uwurawrsmile"..salt,key)) -- remove first comment to update your list thingy
-- end


