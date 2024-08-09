-- recoded functiosn for security START  --
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
        a = math.floor(a / 2)
        b = math.floor(b / 2)
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
        return string.char(tonumber(cc, 16))
    end))
end

local function xorCrypt(data, key)
    local result = {}
    for i = 1, #data do
        local byte = data:byte(i)
        local keyByte = key:byte((i - 1) % #key + 1)
        tableinsert(result, string.char(bxor(byte, keyByte)))
    end
    return tableconcat(result)
end

local function encrypt(text, key)
    return toHex(xorCrypt(text, key))
end

local function decrypt(hex, key)
    return xorCrypt(fromHex(hex), key)
end

local key = "test" -- put a supr secure key 🤔
local encryptedText = game:HttpGet("https://pastebin.com/raw/jMTKJAfR") --put link to your file thingy
local hwids = decrypt(encryptedText, key)   
if ishooked and (ishooked(gethwid) or ishooked(ipairs) or ishooked(string.char)) then
    print'most basic anti bypass 😸' -- you can also freeze their game or something silly here
    return 
end 
if tablefind(stringsplit(hwids, ",") , gethwid()) then
    print("authenticated") 
    -- put your script here
else print("not authenticated") end


-- print(encrypt("Hwid1d4412,Hwid2b424100444043034117445",key)) -- remove first comment to update your list thingy
