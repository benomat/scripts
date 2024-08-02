function toHex(str)
    return (str:gsub('.', function (c)
        return string.format('%02X', string.byte(c))
    end))
end

function fromHex(hex)
    return (hex:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))
end

function xorCrypt(data, key)
    local result = {}
    for i = 1, #data do
        local byte = data:byte(i)
        local keyByte = key:byte((i - 1) % #key + 1)
        table.insert(result, string.char(bit32.bxor(byte, keyByte)))
    end
    return table.concat(result)
end

function encrypt(text, key)
    return toHex(xorCrypt(text, key))
end

function decrypt(hex, key)
    return xorCrypt(fromHex(hex), key)
end

local key = "test" -- put a supr secure key 🤔

local encryptedText = game:HttpGet("https://pastebin.com/raw/JsHUnCEt") --put link to your file thingy

local decryptedText = decrypt(encryptedText, key)
if ishooked and (ishooked(gethwid) or ishooked(table.find) or ishooked(bit32.bxor) or ishooked(table.insert)) then
    print'no bypass plz' -- you can also freeze their game or something silly here
    return 
end 
if table.find(string.split(decryptedText, ",") , gethwid()) then
    print("authenticated") 
    -- put your script here
else warn("not authenticated") end


-- setclipboard(encrypt("hwid1,hwid2",key)) -- remove first comment to update your list thingy
