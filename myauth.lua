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

local key = "benomat is daddy"
local originalText = 'return "hi","user","roblox"'

local encryptedText = encrypt(originalText, key)
print("Encrypted (hex):", encryptedText)

local decryptedText = decrypt(encryptedText, key)
print("Decrypted:", decryptedText)
